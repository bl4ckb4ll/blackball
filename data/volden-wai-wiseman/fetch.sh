#!/bin/sh
set -eu

here=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
manifest="$here/manifest.tsv"
mirror="$here/mirror"
base_url="https://dataverse.harvard.edu/api/access/datafile"

command -v curl >/dev/null 2>&1 || {
    echo "fetch: curl is required" >&2
    exit 1
}
command -v sha256sum >/dev/null 2>&1 || {
    echo "fetch: sha256sum is required" >&2
    exit 1
}

mkdir -p "$mirror"
tab=$(printf '\t')

tail -n +2 "$manifest" |
while IFS="$tab" read -r dataset_doi dataset_version file_id filename bytes dataverse_md5 expected_sha256
do
    destination="$mirror/$filename"
    temporary="$destination.part"

    rm -f "$temporary"
    curl --fail --location --silent --show-error \
        "$base_url/$file_id" \
        --output "$temporary"

    actual_bytes=$(wc -c < "$temporary" | tr -d ' ')
    if [ "$actual_bytes" != "$bytes" ]; then
        echo "fetch: size mismatch for $filename: expected $bytes, got $actual_bytes" >&2
        rm -f "$temporary"
        exit 1
    fi

    actual_sha256=$(sha256sum "$temporary" | awk '{print $1}')
    if [ "$actual_sha256" != "$expected_sha256" ]; then
        echo "fetch: SHA-256 mismatch for $filename" >&2
        echo "fetch: expected $expected_sha256" >&2
        echo "fetch: got      $actual_sha256" >&2
        rm -f "$temporary"
        exit 1
    fi

    mv "$temporary" "$destination"
    printf 'verified  %s\n' "$filename"
done
