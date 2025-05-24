#import "@preview/modern-cv:0.8.0": *
#import "@preview/fontawesome:0.5.0": *

// Define colors from awesome-cv
#let color-darknight = rgb("#131A28")
#let color-darkgray = rgb("#333333")
#let color-gray = rgb("#5d5d5d")
#let default-accent-color = rgb("#262F99")

// Icons for local use (FontAwesome)
#let github-icon = box(fa-icon("github", fill: color-darknight))
#let linkedin-icon = box(fa-icon("linkedin", fill: color-darknight))
#let phone-icon = box(fa-icon("square-phone", fill: color-darknight))
#let email-icon = box(fa-icon("envelope", fill: color-darknight))

#show: resume.with(
  author: (
    firstname: "Peter",
    lastname: "Asanov",
    positions: (
      "Senior Software Engineer",
      "DevSecOps",
    ),
  ),
  profile-picture: none,
  date: datetime.today().display("[month repr:long] [day], [year]"),
  accent-color: default-accent-color,
  colored-headers: true,
  show-footer: false,
  paper-size: "a4", // Use A4 for Dutch, US-letter for FAANG
  font: ("Roboto", "Source Sans Pro"), // Updated to match installed fonts
  header-font: "Source Sans Pro", // Updated to match installed fonts
)

#set list(marker: ([•], [-]))

#let my-resume-skill-section(item, skills) = {
  resume-skill-item(text(item, fill: rgb("#282f93")), skills)
}

#let my-resume-skill-item(item, skills) = {
  resume-skill-item(
    text(item, weight: "medium", size: 11pt, fill: rgb("#282f93")),
    skills,
  )
}

= About
#text(weight: "light")[
  High-impact professional with 20 years' experience, spent over a decade building enterprise-grade distributed systems for real-time interactive and mission-critical applications, navigating complex problems and delivering elegant
  solutions.
]

#par(spacing: 1.0em)[]

= Education
#resume-entry(
  title: "B.Sc. in Computer Science and Engineering",
  location: "Novosibirsk, Russia",
  date: "2002 - 2007",
  description: "Novosibirsk State Technical University (NSTU)",
)

#par(spacing: 1.0em)[]

= Skills

#my-resume-skill-section("Systems architecture", (
  "computer and modern OS architecture",
  "memory model and concurrency",
  "networking",
  "scalability",
  "HA",
  "fault tolerance",
  "distributed consensus",
  "CAP trade-offs",
  "event driven architectures",
  "caching",
  "sharding",
  "load balancing",
  "state management and storage",
  "microservices",
))
#my-resume-skill-section(
  "Dev stacks",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("Go", (
  "gin",
  "fiber",
  "echo",
  "zap/slog",
  "gomock",
))
#my-resume-skill-item("JS/TypeScript", (
  "React",
  "Auth.js",
  "tRPC",
  "Prisma",
  "Vite",
  "Tailwind CSS",
  "Axios",
))
#my-resume-skill-item("Python", (
  "FastAPI",
  "FastUI",
  "Flask",
  "uvicorn",
  "TortoiseORM",
  "SQLAlchemy",
  "celery",
  "paho",
  "pytest/pytest-mock",
  "numpy",
  "scikit-learn",
  "seaborn",
  "pyo3/maturin",
))
#my-resume-skill-item("C++23", (
  "boost",
  "flatbuffers",
  "cap'n'proto",
  "seastar(scylladb)",
))
#my-resume-skill-item("Rust", (
  "Hyper",
  "Reqwest",
  "Diesel",
  "Ring",
  "Dalek (ECC)",
))
#my-resume-skill-item("JVM", (
  "Java",
  "Kotlin",
  "Groovy",
  "Spring / Boot",
  "Hibernate",
  "NIO",
))

#my-resume-skill-item("Build Systems", (
  "Nix",
  "CMake",
  "ninja",
  "Maven",
  "Meson",
  "Bazel
  ",
))
#my-resume-skill-section(
  "Cloud Native",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("IAM/IdPs", (
  "AAD(enterprise)",
  "RBAC (Azure)",
  "IAM",
  "KMS (AWS & GCP)",
  "Amazon Cognito",
  "Auth0",
))
#my-resume-skill-item("Orchestration", (
  "Kubernetes",
  "Azure VM",
  "AKS",
  "EKS",
  "ECS",
  "EC2",
  "GCE",
  "GKE",
))
#my-resume-skill-item("Serverless", (
  "Azure Functions",
  "AWS Lambda",
  "GCF",
  "CloudFlare workers",
))
#my-resume-skill-item("IaC", (
  "Terraform",
  "Azure Templates",
  "Cloud Formation",
))

#my-resume-skill-item("CI/CD & GitOps", (
  "JenkinsX",
  "GitHub Actions",
  "GitLab CI/CD",
  "ArgoCD",
  "Flux",
  "Azure DevOps",
  "AWS CodeBuild & CodePipeline",
))

#my-resume-skill-item("Observability", (
  "Azure Monitor / App Insights",
  "AWS CloudWatch",
  "Prometheus",
  "Grafana LGTM",
  "OTLP",
  "Elasticsearch",
  "Jaeger",
  "Zipkin
  ",
))
#my-resume-skill-section(
  "Data Systems",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("DBMS", (
  "PostgreSQL",
  "MySQL",
  "Cassandra",
  "MongoDB",
  "QuestDB",
  "ASD",
  "CosmosDB",
  "RDS",
  "DynamoDB",
  "GCS",
  "CloudSQL",
))
#my-resume-skill-item("KV-store", (
  "etcd",
  "Redis",
  "RocksDB",
  "Valkey",
  "Memcached",
))
#my-resume-skill-item("Block storage", (
  "S3 / Minio",
  "ABS",
))
#my-resume-skill-item("Queueing", (
  "RabbitMQ",
  "ActiveMQ",
  "Kafka",
))
#pagebreak()
#my-resume-skill-section(
  "DevSecOps",
  (
    "___________________________________________________________________________________",
  ),
)

#my-resume-skill-item("", (
  "Continuous Security",
  "OWASP Top-10",
  "Secure-by-Design",
  "Zero Trust",
  "PoLP",
  "RBAC",
  "Tenant Isolation",
  "Intrusion Detection",
))

#my-resume-skill-section(
  "Cryptography",
  (
    "___________________________________________________________________________________",
  ),
)

#my-resume-skill-item("Basics", (
  "PKI",
  "Crypto hashes",
  "Symmetric (block) ciphers",
  "KDFs",
))

#my-resume-skill-item("ECC", (
  "ECC / Curve25519",
  "ECDH",
  "EdDSA",
  "Ristretto",
  "Bulletproofs",
  "Pedersen Commitments",
  "Ring Signatures",
  "ZK-SNARKS / STARKS",
))

#my-resume-skill-section(
  "Data processing",
  (
    "___________________________________________________________________________________",
  ),
)

#my-resume-skill-section("", (
  "FLiP (Flink + NiFi + Pulsar)",
  "Kafka (Streaming)",
  "Airflow",
  "DuckDB
  ",
))

#par(spacing: 1.0em)[]

= Project Highlights

#resume-entry(
  title: "Low-Latency Matching Engine Prototype",
  location: none,
  date: "Aug 2023 – Dec 2023",
  description: "Hobby Project (Partially Sponsored)",
)
#resume-item[
  Designed and build PoC of HFT matching engine using C++23, SIMD intrinsics, and Go for management APIs with strong focus on ultra-low latency and customization\
  Tools: C++23, Go, Cap’n Proto, SIMD intrinsics
]

#resume-entry(
  title: "Feature flags transpiler",
  location: "Amsterdam, The Netherlands",
  date: "2018 - 2019",
  description: "HVR Software",
)
#resume-item[
  - Scratch-rewrote advanced feature flags transpiller for DSL with pattern matching and multiple inheritance of entities, reducing its runtime for an order of magnitude (5 sec vs 60-70 sec) which resulted in measurable gains for R&D team and saving of build infra costs, as the tool was at the hot path of tens of CI/CD pipelines running 24x7
  - Extended the functionality, making it possible to use the mentioned DSL as a single source of truth for documentation generation purposes.\
  Tools: Python
]

#resume-entry(
  title: "Zero-to-one generator of CRUD apps",
  location: "Haarlem, Netherlands",
  date: "Nov 2019 – Sep 2021",
  description: "AIMMS B.V.",
)
#resume-item[
  Wrote generator of CRUD apps from declarative schema which helped to drastically reduce R&D costs of internal tooling:
  - OOB OAuth support
  - two generator backends:
    - Python/FastAPI/FastUI (CRUD generator)
    - Typescript/tRPC + Prisma + React\
  Tools: Python, TortoiseORM, FastAPI, FastAPI Users (OAuth), FastUI, Typescript, React, tRPC, Prisma, Auth.js
]

#resume-entry(
  title: "Font rendering engine",
  description: "New Cloud Technologies",
  date: "2014 - 2017",
)
#resume-item[
  High performance font rendering engine for scalable document layouts featuring
  - subpixel positioning
  - multi-level cache
  - multi-platform support\

  The work required deep dive into freetype and Qt internals. It was eventually shipped as part of My Office app suite for Tizen (mobile embedded Linux from Samsung), on millions of Tizen devices in South Asia\ \
  Tools: c++14, boost, freetype, Qt, various native rendering backends
]

#par(spacing: 1.0em)[]

= Work Experience

#resume-entry(
  title: "Senior Software Engineer",
  location: "Netherlands",
  date: "2022 - ",
  description: "Freelance / contracting",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Contractor / freelancer working on multiple projects:

    - Deliverect, full cycle restaurant business automation PaaS: integrated extra dimensions to Ordering facility\
      Tools: Python, Eve, celery, Kubernetes (GKE), Typescript, React, Redis, minio (local backend)\

    - Ahold Delhaize (Albert Hijn): online data ingestion platform for internal compliance project, related to R&D efficiency and performance\
      Tools: Go, Kubernetes (AKS, Kafka Strimzi operator), GitOps (ArgoCD), Terraform\

    - Private customer: online data ingestion of Taxi terminals data for compliance project to prevent fraud from a driver side\
      Tools: Go, Kubernetes (AKS), Kafka, Postgres\

    - LEGO: building internal IAM / IdP functionality\
      Tools: Azure Functions, Azure SAML identity provider, Python

    - Private customer: cloud based video conversion service\
      Tools: c++20, cmake, ninja, go, grpc-gateway, ffmpeg, nix, terraform(terranix), EKS, CloudWatch\

    - Private customer: custom video calls service\
      Tools: c++23, cmake, ninja, asio, libdatachannel (WebRTC stack), nix, ansible\
  ]

]

#resume-entry(
  title: "Core Software Engineer",
  location: "Haarlem, Netherlands",
  date: "Nov 2019 – Sep 2021",
  description: "AIMMS B.V.",
)
#resume-item[
  - Centric role in large cloud platform migration project (from AWS to Azure with substantial scratch-rewrite in modern c++, from former Java/Scala)
  - Scratch-written Modern c++ framework and related micro-service template featuring protobuf DSL as API first class citizen, popularizing its use also for REST APIs to avoid buggy (back then) OpenAPI generators
  - Ensured scalability under variable loads, minimizing downtime via parallel migration.
  - Bootstrapped Azure landing zone (custom bootstrap for Terraform state and RBAC)
  - Built scalable tooling and participated in sensitive customer data migration
  - Wrote low-code generator of CRUD apps from declarative schema, used for administrative and other internal tools; bringing measurable R&D cost reduction\
  Tools: ECS, EC2, CloudWatch, Go, Python, Java, Scala, c++17, Typescript, React, conan, cmake, ninja, grpc-gateway, go, Kubernetes (AKS), Azure Application Insights, Terraform
]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Amsterdam, Netherlands",
  date: "Jan 2018 – Oct 2019",
  description: "HVR Software (acquired by Fivetran)",
)
#resume-item[
  Worked on high performance online data replication system, also called HVR (features and bugfixing)
  - Worked on product core (log based replication engine)
  - Reversed Oracle histogram data to build custom sharding functionality
  - Rewrote a Python transpiler, cutting execution from 65 seconds to 5 seconds, speeding up CI/CD.
  - Built a Go REST service for cloud integration.\
  Tools: C99, Python, Go, multiple RDBMS and Big Data stacks (integration), Oracle (histrogram internals), Airlow
]

#resume-entry(
  title: "Software Engineer",
  location: "Eindhoven, The Netherlands",
  date: "2017",
  description: "Mapscape B.V.",
)
#resume-item[
  Worked on Mapscape NDS (navigation data standard) compiler:
  - implemented parts of NDS compiler backend related to parsing raw map data
  - introduced parallelism in parsing raw map data, significantly speeding it up\
  Tools: c++ 11 / 14 / boost / gtest / sqlite / shell / python / Airflow
]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014 - 2017",
  description: "New Cloud Technologies",
)
#resume-item[
  My Office project: on-prem office solution featuring collaboration engine"
  - work on core functionality (features and bugfixing)
  - scratch-written `freetype` based cross-platform font rendering engine with subpixel positioning and antialiasing support
  - Work on spreadsheets for Samsung Tizen (embedded linux)\
  Tools: c++14, cmake, emscripten, Objective C, Qt, SWIG, Kubernetes
]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014",
  description: "AIS",
)
#resume-item[
  Building bank (transaction facility) for crypto mining pool basic exchange functionality:
  - scratch-written c++11 / asio framework and a few microservices (and their ownership)
  - multi-stage fault tolerant transactions
  - operating mission critical distributed system and managing risks of direct loss via using append-only faul-tolerant custom storage, two-factor transactions, implenentig circuit breaking, proper alerting, extensive testing
  - zero-to-one release the thing into production as joint effort of 3 engineers excercising high degree of code ownership (on subsystem level)\
  Tools: c++11, Core Java, Groovy, Ruby(Chef)
]

#resume-entry(
  title: "Previous work history",
  date: "2005 - 2014",
  description: "available upon request",
)
