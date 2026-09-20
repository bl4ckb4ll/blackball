# Mathematical readings — first tranche

These notes separate source-supported mathematical content from my reaction to it. `abstract_read` means the summary stays within an abstract or publisher record. `fulltext_read` means I inspected the paper itself far enough to use internal theorem statements; it does **not** mean every proof in the paper has been audited.

## David Blackwell — *Comparison of experiments* (1951)

**Evidence state:** `abstract_read`

**Paper.** David Blackwell, “Comparison of experiments,” *Proceedings of the Second Berkeley Symposium on Mathematical Statistics and Probability* (1951), 93–102.

**Sources read:**  
- MAD profile: https://www.math.buffalo.edu/mad/PEEPS/blackwell_david2.html  
- Celebratio/MathSciNet-derived record and abstract: https://celebratio.org/Blackwell_DH/article/255/

**Mathematics.** Blackwell compares two statistical experiments operationally: experiment α is at least as informative as β when every risk attainable from β, for every decision problem, is also attainable from α. The 1951 paper proves that a sufficient-statistic relation implies this universal risk dominance and proves the converse for dichotomies. The 1953 follow-up removes a finite-outcome restriction from an equivalence result and introduces weaker comparisons restricted to k-decision problems.

**Reaction.** I like the choice of primitive enormously. “Information” is not defined by entropy, dimension, sample size, or the visual richness of the data; it is defined by what decisions the data permit you to make. That makes the order on experiments both austere and very strong: α dominates β only if β never wins in *any* decision problem. It also makes sufficiency look less like a compression trick and more like a statement that no decision-relevant information was lost.

## David Blackwell and James B. MacQueen — *Ferguson distributions via Pólya urn schemes* (1973)

**Evidence state:** `abstract_read`

**Sources read:**  
- Celebratio complete bibliography and abstract: https://celebratio.org/Blackwell_DH/article/26/

**Mathematics.** The paper extends a Pólya urn from finitely many colors to a continuum. The empirical distribution of colors converges to a random discrete probability measure μ*. The law of μ* is Ferguson's random distribution, and conditional on μ* the successive colors are independent with common distribution μ*.

**Reaction.** This is one of those short arguments whose conceptual payload is much larger than its page count. A reinforcement rule that is completely sequential and concrete produces a latent random probability measure; conditional on that measure, the apparently dependent sequence becomes iid. It is a clean bridge between exchangeability, Bayesian nonparametrics, and an elementary urn mechanism.

## Augustin Banyaga — *Some properties of locally conformal symplectic structures* (2002)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/banyaga_augustin.html  
- EMS Press publisher record and abstract: https://ems.press/journals/cmh/articles/362  
- DOI: https://doi.org/10.1007/S00014-002-8345-Z

**Mathematics.** Banyaga studies locally conformal symplectic (lcs) structures through twisted cohomology and conformal invariants. The paper identifies the relevant d_ω-cohomology with a conformally invariant ordinary de Rham cohomology on an appropriate cover, proves an lcs version of Moser's stability theorem, relates lcs and contact geometry, and uses several invariants to organize distinctions such as first/second kind and local/global conformal symplectic structures.

**Reaction.** The attractive feature is that “symplectic up to local rescaling” is not treated as a damaged symplectic form. The geometry gets its own cohomology and its own obstruction theory. The covering-space description is especially satisfying: the local conformal freedom is traded for ordinary de Rham information on a larger space, so the defect from globally symplectic geometry becomes something one can measure rather than hand-wave away.

## Wilfrid Gangbo and Robert J. McCann — *The geometry of optimal transportation* (1996)

**Evidence state:** `fulltext_read` — abstract, introduction, main-result statements, and selected theorem statements inspected; proofs not yet audited line by line.

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/gangbo_wifrid.html  
- Author-hosted paper: https://www.math.ucla.edu/~wgangbo/publications/geo.pdf

**Mathematics.** For costs of the form c(x,y)=h(x−y) with h strictly convex and suitable growth hypotheses, the paper proves existence and almost-everywhere uniqueness of the optimal Monge map when the source measure is absolutely continuous. It is represented through a c-concave potential ψ by

`s(x) = x − (∇h)^{-1}(∇ψ(x))`.

The paper also treats costs that are strictly concave functions of distance and develops the geometric machinery of c-concavity/cyclical monotonicity needed to pass between Kantorovich plans and Monge maps.

**Reaction.** This is the paper in this tranche I most want to read proof-by-proof. The striking move is to turn what sounds like a global combinatorial matching problem into geometry of a potential. Once the optimal plan is forced onto the graph of a map, uniqueness is no longer an afterthought: it comes from the geometry encoded by the cost and c-concavity. The formula is also unusually transparent about what the cost does—the gradient of the potential selects a dual direction, and `(∇h)^{-1}` converts that dual datum into an actual displacement.

## Edray Herber Goins — *Icosahedral Q-Curve Extensions* (2003)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/goins_edrayh.html  
- Mathematical Research Letters publisher PDF/abstract: https://www.intlpress.com/site/pub/files/_fulltext/journals/mrl/2003/0010/0002/MRL-2003-0010-0002-a008.pdf  
- Current Pomona bibliography: https://www.pomona.edu/directory/people/edray-goins

**Mathematics.** Goins considers elliptic curves over Q(√5) that are 2- or 3-isogenous to their Galois conjugates and have absolutely irreducible mod-5 representations. Using Klein's classical icosahedral formulas, he associates suitable A5 Galois extensions to the 5-torsion of these elliptic curves; a concrete class is generated by quintics `x^5 + A x^2 + B x + C` with `AB = 0`.

**Reaction.** The pleasant part is how explicit the bridge is. The icosahedron is not decorative historical motivation: the group `A5`, Klein's invariant theory, quintic equations, 5-torsion on elliptic curves, and modern Galois representations are all manifestations of the same symmetry. This is the kind of number theory where an old concrete object survives intact inside a much more abstract theory.

## Trachette L. Jackson — *A mathematical model of prostate tumor growth and androgen-independent relapse* (2004)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/jackson_trachette.html  
- AIMS publisher record and abstract: https://www.aimsciences.org/article/doi/10.3934/dcdsb.2004.4.187  
- DOI: https://doi.org/10.3934/dcdsb.2004.4.187

**Mathematics.** The tumor is modeled as a continuum containing androgen-dependent and androgen-independent cell populations whose proliferation and apoptosis respond differently to androgen-rich and androgen-poor conditions. Analytical and numerical study of the model is then used to examine partial and complete androgen suppression. The abstract reports a strong qualitative conclusion: deprivation therapy succeeds only over a small biological parameter range, even when androgen production is completely blocked.

**Reaction.** The mathematical point is not merely “apply differential equations to cancer.” Heterogeneity is promoted to a state variable. Once two populations respond differently to the same environmental control, treatment can change the competitive ecology rather than simply shrink one homogeneous mass. That is a much more interesting use of modeling: it exposes a mechanism by which an apparently stronger control can still fail.

## William A. Massey — *Asymptotic Analysis of the Time Dependent M/M/1 Queue* (1985)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile: https://www.math.buffalo.edu/mad/PEEPS/massey_william.html  
- INFORMS publisher record and abstract: https://pubsonline.informs.org/doi/10.1287/moor.10.2.305

**Mathematics.** Massey develops a nonstationary Markovian queueing asymptotic for the time-dependent M(t)/M(t)/1 queue. Instead of sending time to infinity, he accelerates the queue-length process uniformly by scaling the arrival and service rates with a small parameter ε and studies a fixed time interval as ε→0. A time-dependent traffic-intensity parameter then determines dynamically stable and unstable regimes, with asymptotics for the queue-length distribution, mean, and variance.

**Reaction.** The choice of asymptotic variable is the whole idea. Large-time limits deliberately erase transients; real communication systems can be dominated by them. Accelerating the microscopic events while leaving the macroscopic time window fixed creates a law-of-large-numbers style lens on a genuinely nonstationary system. It is asymptotic analysis designed around the phenomenon rather than around the easiest limit.

## Ronald E. Mickens — *A finite difference scheme for traveling wave solutions to Burgers equation* (1998), with the later logistic-reaction scheme (2003)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile: https://www.math.buffalo.edu/mad/PEEPS/mickens_ronalde.html  
- Wiley abstract for the 1998 paper: https://onlinelibrary.wiley.com/doi/abs/10.1002/%28SICI%291098-2426%28199811%2914%3A6%3C815%3A%3AAID-NUM5%3E3.0.CO%3B2-T  
- Elsevier abstract for the 2003 paper: https://www.sciencedirect.com/science/article/pii/S0378475402001805

**Mathematics.** The 1998 paper constructs a finite-difference equation for the ODE governing Burgers traveling waves and arranges it so that the discrete equation itself can be solved. The 2003 diffusionless Burgers/logistic-reaction paper makes the philosophy more explicit: the nonstandard discretization is designed to preserve positivity and boundedness and is constrained to be semi-explicit, rather than being judged only by a local Taylor-series approximation.

**Reaction.** This is a genuinely different numerical-analysis instinct. A difference equation is a dynamical system in its own right, so a discretization that has the wrong invariant region, sign behavior, equilibria, or monotonicity can be mathematically false even if its truncation error looks respectable. Mickens's program asks the discretization to inherit qualitative structure from the differential equation. That is much closer to what I would want from a numerical semantics.

## Katherine Okikiolu — *Critical metrics for the determinant of the Laplacian in odd dimensions* (2001)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/okikiolu_katherine.html  
- Annals of Mathematics publisher page: https://annals.math.princeton.edu/2001/153-2/p05

**Mathematics.** On a closed odd-dimensional manifold, Okikiolu computes first and second variations of zeta-regularized determinants of the Laplacian and conformal Laplacian as the metric varies. The parity class of the dimension controls the local-extremum behavior: the abstract rules out local maxima in dimensions `4m+1` and local minima in dimensions `4m+3` for the appropriately signed Laplacian determinant, identifies the round 3-sphere as a local maximum, and shows higher `4m+3` round spheres are saddle points for that functional.

**Reaction.** A zeta-regularized determinant is already an object built by analytic continuation from an infinite spectrum; then the paper treats it as a nonlinear functional on the infinite-dimensional space of metrics and obtains finite-index critical-point information. What I like is the sharp intrusion of dimension modulo four. It says the spectral functional is not merely “sensitive to geometry”; it has a local Morse-theoretic geometry whose sign behavior is arithmetically constrained by dimension.

## Arlie O. Petters — *Morse theory and gravitational microlensing* (1992)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile: https://www.math.buffalo.edu/mad/PEEPS/petters_arlie.html  
- AIP publication record: https://pubs.aip.org/aip/jmp/issue/33/5  
- DOI: https://doi.org/10.1063/1.529667

**Mathematics.** Petters applies Morse theory to the time-delay map of a gravitational microlens. For sources away from caustics, the topology of the critical points gives image-counting formulas and lower bounds. The abstract includes a multiplane formula in which the number of observed images is related to odd-index critical points and the numbers of stars on each lens plane, together with a product-form lower bound.

**Reaction.** This is a particularly clean example of topology becoming an observable constraint. Individual lensed images are critical points of a scalar function; Morse theory says those critical points cannot appear in arbitrary numbers or indices because they are globally tied together. The resulting count is not a metaphorical application of topology to physics—it is a theorem restricting how many images the optical system can produce.

## J. Ernest Wilkins, Jr. — *The expected value of the number of real zeros of a random sum of Legendre polynomials* (1997)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD research bibliography: https://www.math.buffalo.edu/mad/PEEPS/wilkns_jearnest.research.html  
- JSTOR abstract: https://www.jstor.org/stable/2162102

**Mathematics.** Take a random linear combination of normalized Legendre polynomials with independent standard normal coefficients. A previous asymptotic gave an expected real-zero count on `(-1,1)` of `3^{-1/2} n` to leading order. Wilkins sharpens the remainder dramatically: the expectation is `3^{-1/2} n + o(n^δ)` for every positive δ.

**Reaction.** The result is a good reminder that “random polynomial” behavior depends on the basis, not just the coefficient law. The Legendre basis carries its own oscillatory geometry and orthogonality, and the zero count sees it. The improvement of the error term from a coarse asymptotic to smaller than every positive power of `n` is also the sort of result where the leading constant is only the headline; the real work is in controlling the remainder almost down to subpolynomial scale.

## Scott W. Williams — *Paracompactness and products* (1976)

**Evidence state:** `abstract_read`

**Sources read:**  
- MAD profile bibliography: https://www.math.buffalo.edu/mad/PEEPS/williams_scottw.html  
- Elsevier/ScienceDirect abstract: https://www.sciencedirect.com/science/article/pii/0016660X7690026X  
- DOI: https://doi.org/10.1016/0016-660X(76)90026-X

**Mathematics.** Williams studies when the product of a paracompact space `Y` and a paracompact linearly ordered topological space `X` remains paracompact. The hypotheses isolate `ηX`, the subspace of points of `X` lacking compact neighborhoods. If `ηX` is dispersed, finite powers `X^α × Y` remain paracompact; another criterion compares the Lindelöf degree of `Y` with local neighborhood-intersection cardinals at points of `ηX`.

**Reaction.** Product theorems in general topology often look like pathology management, but this one has a clear structural idea: local compactness is the easy part, so isolate the non-locally-compact core and ask how complicated it is. The result then converts a global product question into conditions on that exceptional subspace plus a cardinal bound on the other factor. It is recognizably set-theoretic topology, but with a concrete geometric decomposition underneath the cardinal language.

## What remains

These are paper-level readings, not merely biographies, but they are still a small fraction of the requested corpus. The next pass should promote rows from `discovery_only` by reconciling each archived profile against current author bibliographies/MathSciNet-like canonical metadata and then reading papers in mathematical clusters rather than at random. The `research-core.tsv` denominator and `profile-bibliography-status.tsv` mismatch ledger are intended to prevent that expansion from quietly changing what “all papers” means.
