# Applied computer science syllabus — stub

**Status:** working syllabus sketch, not a validated curriculum and not a claim about credential equivalence, employability, or what any particular job requires.

The purpose is to organize computer science around actual programming, development, debugging, and operation of software. Theory belongs here too, but preferably beside a concrete program or system that gives the theory something to explain.

## Working rule

A topic earns an early place when a person can use it to build, inspect, debug, or operate something real.

A deeper theoretical topic can enter when it:
- explains behavior already encountered in a project;
- makes a design choice intelligible;
- predicts a failure or performance difference;
- gives a better representation of a problem; or
- opens a new kind of program that could not otherwise be built.

Do not treat this ordering as a claim that theory is unimportant. It is a claim about pedagogy: a live problem gives the theory somewhere to attach.

## 0. Functional baseline: be able to operate the development environment

Before data structures, algorithms, language theory, or larger projects, establish basic working competence.

The skilled-trades analogue is knowing the ordinary tools and being able to enter a shop, inspect the problem, and start doing useful work. For programming, the corresponding baseline is being able to sit down at a Linux machine and work without the environment itself being the main obstacle.

A learner should be able to:

- log into and use a Linux system;
- work comfortably at a Bash or comparable command-line shell;
- move through the filesystem and create, copy, rename, remove, and inspect files and directories;
- inspect permissions, processes, environment variables, disk space, and exit status;
- use a text editor well enough to open, search, edit, save, and quit without getting stuck;
- clone or unpack an existing project;
- read its README or build instructions;
- invoke a compiler directly when appropriate;
- understand source files, object files, libraries, and executables at a basic practical level;
- run make on an existing project, understand the basic target/dependency idea, recognize which command failed, and rerun after a change;
- install or locate named development dependencies;
- run the program and pass command-line arguments or input;
- use standard input, standard output, standard error, redirection, and pipes;
- stop or inspect a running process;
- make a small edit, rebuild, and observe the behavioral change;
- use Git well enough to see what changed and avoid losing work.

If this is still difficult, a red-black tree is not the next missing piece. The immediate problem is operating fluency.

### Start with something worth making work

Do not make "Hello, world" the center of the learning path. Tiny functionless programs are useful as compiler, linker, packaging, or CI smoke tests, but they are poor motivation.

Prefer a program the learner actually wants:

- build an open-source game they like;
- build an emulator, music player, graphics demo, text editor, utility, or small application they are curious about;
- get an existing program running on their machine;
- make one visible change;
- then ask what it would take to move the same program to another machine or operating environment.

For a game, that question can become:

- what did the build command actually do?
- which compiler and linker produced this executable?
- what part is portable source and what part depends on the current platform?
- what changes for another CPU or operating system?
- what do graphics, audio, input, files, timing, and networking depend on?
- what does "build an Xbox / Nintendo / handheld version" actually mean beyond changing one compiler flag?
- is a cross-compiler enough, or does the target require a different ABI, SDK, system APIs, packaging format, asset pipeline, or hardware-specific work?

This turns compiling from a ceremonial exercise into the first encounter with toolchains, dependencies, build systems, portability, ABIs, platform APIs, and hardware constraints.

## 1. Everyday working fluency after the baseline

Once the basic edit → build → run → inspect loop is ordinary rather than novel, widen the toolset.

### Files, shell, and processes

- paths, files, directories, links, and permissions;
- standard input, standard output, standard error;
- redirection and pipes;
- environment variables and exit status;
- processes, process IDs, jobs, and signals;
- common inspection and text tools such as find, grep, sort, uniq, diff, head, tail, and wc;
- archives and compression;
- remote shell and file transfer.

The point is not memorizing command flags. The point is being able to inspect a system and compose small tools without needing a special-purpose application for every task.

### Git

Start with commands used constantly:

- status
- diff
- add
- commit
- log
- show
- branch
- switch
- merge
- fetch
- pull
- push
- restore
- revert

Then learn conflict resolution and enough rebasing/resetting to understand what they do before using them casually.

Theory that can attach later: commits as objects, content addressing, trees, directed acyclic graphs, ancestry, and three-way merge.

### HTTP and curl

Be able to:

- fetch a URL;
- inspect response headers;
- choose a request method;
- send headers and request bodies;
- follow redirects deliberately;
- distinguish HTTP failure from DNS, routing, TLS, or application failure;
- save and compare responses.

This is immediately useful for APIs, downloads, debugging, and understanding what higher-level clients are doing.

## 2. Programming close enough to the machine to see what happens

C is a useful teaching language here because pointers, memory, files, processes, and sockets are visible rather than hidden behind a large runtime.

Topics:

- values, variables, arrays, structs, and functions;
- pointers and pointer arithmetic;
- strings and byte buffers;
- dynamic allocation and ownership;
- file I/O;
- text versus binary representation;
- compiler warnings;
- object files, libraries, linking, and executable files;
- debugging with a debugger;
- memory debugging and sanitizers;
- build files;
- processes and pipes;
- threads, mutexes, and condition variables;
- sockets.

Jacob Sorber's material is a good source lane for this part because it repeatedly works through concrete C and systems-programming mechanisms: pointers, memory, debugging, processes, threads, sockets, and related low-level topics. Exact videos should eventually be indexed by topic rather than treating the channel itself as authority.

## 3. Networks, including enough Wi-Fi to diagnose reality

A programmer should be able to distinguish the layers involved when "the network does not work."

Topics:

- network interfaces;
- IP addresses and subnets;
- routes and gateways;
- ARP / neighbor discovery;
- DHCP;
- DNS;
- TCP versus UDP;
- ports and sockets;
- HTTP and TLS;
- packet capture;
- connection and listening-socket inspection.

Useful tools include ip, ss, ping, traceroute, dig or equivalent, tcpdump, and curl.

Wi-Fi belongs here as a practical extension:

- SSID and BSSID;
- association versus obtaining an IP address;
- 2.4 GHz / 5 GHz / other supported bands;
- channels and channel width;
- signal strength, noise, and interference;
- WPA2/WPA3 authentication at a basic operational level;
- distinguishing weak radio, authentication failure, DHCP failure, DNS failure, routing failure, and remote-service failure.

## 4. Data and databases

Start with representations that are easy to inspect:

- plain text;
- delimited text;
- JSON or similar structured text;
- binary records;
- byte order and integer encoding.

Database basics:

- create/read/update/delete;
- filtering and ordering;
- joins;
- indexes;
- transactions;
- constraints;
- query plans;
- backup and restore.

Theory attaches naturally here when a real query or storage design raises the question: B-trees, hashing, write-ahead logging, isolation, normalization, denormalization, and storage locality.

## 5. Debugging, testing, and measurement

Programming is not just producing source code.

Practice:

- reproduce a bug;
- reduce it to a small case;
- inspect logs without treating logs as proof;
- use a debugger;
- inspect system calls where useful;
- write a regression test;
- construct fixtures;
- distinguish unit, integration, and end-to-end evidence;
- benchmark without confusing noise with signal;
- profile before guessing where time is spent;
- preserve the failure that motivated a fix.

A useful exercise is to take a working program, deliberately break it in several different ways, and learn to distinguish the failures from their symptoms.

## 6. Programs to build

These are not certification requirements. They are exercises that force several parts of the machine to meet in one place.

### Smaller programs

- a file copier;
- a line/word/byte counter;
- a small grep-like matcher;
- a text or binary format parser;
- a directory walker;
- a subprocess runner with captured standard output and error;
- a small HTTP client;
- a simple static-file server;
- a command-line program backed by a small database.

### Intermediate systems exercises

- a small shell;
- a TCP or UDP service and client;
- a concurrent work queue;
- a binary protocol encoder/decoder;
- a key-value server;
- a log-structured or append-only store;
- a simple allocator;
- a file synchronizer;
- a packet-inspection tool where the platform permits it.

### Larger exercises for getting better

- an interpreter;
- a ray tracer;
- a small database or storage engine;
- a debugger/tracer;
- a compiler or substantial compiler pass;
- a network service with persistence, concurrency, failure handling, and instrumentation.

The point is not that everybody must write the same programs. These are compact enough for one person to understand but rich enough to force real design decisions.

Salvatore Sanfilippo's own side-project list provides one concrete example of this style of learning/building: it includes a JavaScript ray tracer alongside an SDR ADS-B decoder, a MessagePack implementation, a line editor, a small Git web interface, and a distributed queue. The exact remembered source in which he recommended a ray tracer, interpreter, and other programs as exercises remains to be recovered before attributing that list to him.

## 7. Theory attached to a live problem

| Project problem | Theory that may become useful |
| --- | --- |
| a lookup is too slow | hashing, trees, asymptotic analysis, locality |
| an interpreter is growing | grammars, parsing, automata, environments, semantics |
| a server stalls under load | queues, scheduling, concurrency, backpressure |
| threads corrupt shared state | race conditions, synchronization, memory models |
| Git history is confusing | DAGs, graph traversal, merge ancestry |
| a database behaves strangely | transactions, indexes, isolation, storage algorithms |
| a ray tracer is hard to reason about | vectors, matrices, geometry, numerical error |
| a binary format breaks across machines | representation, alignment, endianness, ABI |
| a network request fails | layered protocols, routing, naming, state machines |
| a benchmark changes from run to run | probability, experimental design, measurement error |

This keeps theory available without pretending that recognizing the definition of a red-black tree is the same thing as being able to build or debug a system.

## 8. Reading existing software

Building from scratch is only half the exercise.

A practical syllabus should also include:

- check out an unfamiliar repository;
- find where a behavior is implemented;
- build it;
- reproduce one issue;
- trace one request or data path through the program;
- make a small change;
- write or repair a test;
- explain the change in terms of the surrounding system rather than only the edited function.

The ability to enter existing code is closer to ordinary development than a sequence of isolated greenfield assignments.

## 9. Research program: connect capability backward to learning and forward to work

Treat the syllabus as an evidence graph rather than a single authoritative sequence.

The central node should be an **observable capability**, not a course title or a vague subject. Examples:

- build an existing project from source on Linux;
- inspect a failed build and identify which command failed;
- use Git to inspect, preserve, and exchange changes;
- use a shell to compose programs with pipes and redirection;
- query and modify a relational database;
- reproduce, isolate, and repair a bug;
- inspect a network failure far enough to distinguish DNS, routing, transport, TLS, and application failure.

Each capability gets independent evidence edges in both directions.

### Forward edges: where does this capability matter?

Keep these evidence classes separate:

1. **Employer asks for it.** Dated job postings and job-posting aggregates.
2. **Occupation model associates it with the work.** O*NET and ESCO occupation/skill relations.
3. **Workers demonstrably use it.** Public build systems, engineering repositories, operational documentation, incident reports, worker interviews, apprenticeship standards, and other direct work-product evidence.
4. **It is adjacent rather than explicitly named.** For example, a source tree may require Make even when a job advertisement merely says C/C++ or Linux.

Do not turn absence from a job advertisement into evidence that a capability is unused. Job advertisements are selection documents, not exhaustive descriptions of work.

Useful machine-readable starting points:

- **O*NET Database:** tasks, task ratings, work activities, technology skills, tools, knowledge, skills, education/training, and occupational codes. O*NET also exposes employer-posting-based "Hot Technologies" and occupation-specific "In Demand" technology skills.
- **ESCO:** occupations, skills/knowledge concepts, and downloadable occupation-skill relationships labelled essential or optional.
- **Dated employer postings:** preserve the original posting, employer, role, location, date, and exact language rather than reducing it immediately to a keyword count.

Example: O*NET's 2025 US employer-posting data for Software Developers reports Git in 14% and Linux in 9% of unique postings assigned to that occupation; it also reports Python 29%, SQL 24%, Docker 13%, and Kubernetes 14%. Those percentages establish a dated recruiting signal, not that the remaining postings do not use those technologies.

### Backward edges: how can this capability be learned?

Again keep different kinds of evidence separate:

1. **Primary documentation:** manuals maintained by the tool/project itself, such as the GNU Make manual or Git documentation.
2. **Task-centred instructional material:** lessons that make the learner perform the capability rather than merely recognize terminology.
3. **Real projects:** build, run, modify, debug, or port a program the learner has a reason to care about.
4. **Empirical learning research:** studies of debugging, worked examples, code tracing, Parsons problems, feedback, practice, motivation, and other instructional mechanisms.
5. **Observed confusion:** Stack Overflow/Stack Exchange questions, issue trackers, compiler errors, build failures, and other records of where people actually get stuck.

A learning resource should not be promoted merely because it is famous or attached to a university. Record:

- what exact capability it claims to teach;
- prerequisites;
- what the learner actually does;
- whether the exercise produces a checkable artifact or behavior;
- evidence, if any, that learners improved;
- population and context of that evidence;
- known limitations.

For example, Software Carpentry currently publishes lessons on the Unix shell, Git, programming, SQL, and an additional Automation and Make lesson. Its long-term assessment reported self-reported changes among more than 530 past workshop participants; that is useful evidence about that population, but it is not a randomized comparison and should not be promoted into a universal causal claim.

### Prerequisite edges

Prerequisites should also be evidence-backed and operational.

Instead of:

> learn data structures before systems programming

prefer statements such as:

> before the Make lesson used here, the learner must already be able to navigate directories, manipulate files, and run simple commands in a shell.

That particular prerequisite is explicitly stated by Software Carpentry's Make lesson. Similar prerequisite claims can be taken from project build instructions, manuals, learner-error data, and instructional research.

### Difficulty and confusion edges

Use the historical Stack Overflow corpus separately from curriculum recommendations.

For each capability, collect:

- highly upvoted questions;
- recurring error messages;
- common misconceptions;
- common missing prerequisites;
- year/tag trends;
- whether the problem concerns syntax, environment/setup, representation, debugging, algorithms, APIs, networking, build systems, or something else.

Question upvotes can be treated as evidence that other users recognized the same problem, not as proof that an answer or teaching method is correct.

### Minimal record

A first machine-readable record can be as small as:

| field | meaning |
| --- | --- |
| capability | observable thing a person can do |
| prerequisite | another capability apparently required first |
| work_evidence | occupation, posting, or direct-work source |
| work_evidence_kind | asked-for / occupation-model / observed-use |
| learning_resource | manual, lesson, project, exercise, etc. |
| learning_evidence | what supports using that resource |
| demonstration | artifact or behavior showing competence |
| source | URL / document / snapshot |
| date | source or observation date |
| population | whom the evidence actually describes |
| confidence | how strongly the source supports the edge |
| caveat | what must not be inferred |

This lets Blackball answer two different questions without conflating them:

**Why learn this?** → follow capability → work edges.

**How could I learn this?** → follow capability → prerequisite/resource/evidence edges.

## 9. Evidence boundary for this syllabus

Keep three things separate:

1. **Useful material:** a source appears to teach something worth knowing.
2. **Demonstrated competence:** a learner built, debugged, explained, or changed something that exercises the topic.
3. **Labor-market value:** employers actually select or pay for that competence.

This syllabus is currently about the first two. Blackball should not infer the third without separate hiring and outcome evidence.

## Source / retrieval leads

- Salvatore Sanfilippo, "Side projects": https://antirez.com/news/86
- Jacob Sorber's programming/systems material: https://www.youtube.com/@JacobSorber
- Retrieval target: the exact Sanfilippo post/video/interview containing the remembered advice to write programs such as a ray tracer and interpreter by hand. Until recovered, keep that attribution provisional.
