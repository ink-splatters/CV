#import "@preview/modern-cv:0.9.0": *
#import "@preview/fontawesome:0.6.0": *

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
    email: "ink.splatters@pm.me",
    github: "github.com/ink-splatters",
    linkedin: "linkedin.com/in/peter-asanov",
    phone: "+31629598355",
    address: "Amsterdam, Netherlands",
    positions: ("Senior Software Engineer",),
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
  resume-skill-item(align(right, text(item, fill: rgb("#282f93"))), skills)
}

#let my-resume-skill-item(item, skills) = {
  resume-skill-item(
    align(right, text(
      item,
      weight: "medium",
      size: 11pt,
      fill: rgb("#282f93"),
    )),
    skills,
  )
}

= About
#text(weight: "light")[
  High-impact professional with 20 years' experience, spent over a decade building enterprise-grade distributed systems for real-time interactive and mission-critical applications, navigating complex problems and delivering elegant
  solutions.
]

#par(spacing: 0.5em)[]

= Education
#resume-entry(
  title: "B.Sc. in Computer Science and Engineering",
  location: "Novosibirsk, Russia",
  date: "2002 - 2007",
  description: "Novosibirsk State Technical University (NSTU)",
)

#par(spacing: 0.5em)[]

= Skills

#my-resume-skill-section("Distributed Systems", (
  "systems design",
  "scalability",
  "HA",
  "fault tolerance",
  "consensus protocols (Paxos, Raft)",
  "CAP Trade-offs",
  "event-driven systems",
))
#my-resume-skill-section(
  "Dev stacks",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("Go", (
  "gin",
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
  "mangum",
  "uvicorn",
  "SQLAlchemy",
  "celery",
  "dramatiq",
  "pytest/pytest-mock",
  "numpy",
  "pandas",
  "polars",
  "PySpark",
  "seaborn",
  "pyo3/maturin",
))
#my-resume-skill-item("C++23", (
  "boost",
  "flatbuffers",
  "cap'n'proto",
))
#my-resume-skill-item("Rust", (
  "tokio",
  "Hyper",
  "Reqwest",
  "clap",
))
#my-resume-skill-item("JVM", (
  "Java",
  "Kotlin",
  "Spring / Boot",
  "Hibernate",
  "NIO",
  "Quarkus",
))

#my-resume-skill-item("Build Systems", (
  "Nix",
  "CMake",
  "ninja",
  "Maven",
  "Meson",
  "Bazel",
))
#par(spacing: 0.25em)[]
#my-resume-skill-section(
  "Cloud Native",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("IAM/IdPs", (
  "AAD(enterprise)",
  "RBAC (Azure)",
  "KMS (AWS & GCP)",
  "Cognito",
  "Auth0",
))
#my-resume-skill-item("Kubernetes", (
  "Kubernetes (AKS / EKS / GKE)",
  "GCE",
))
#my-resume-skill-item("Other compute", (
  "Azure VM",
  "ECS",
  "EC2",
))
#my-resume-skill-item("Serverless", (
  "Azure Functions",
  "AWS Lambda",
  "GCF",
  "CloudFlare workers",
))
#my-resume-skill-item("IaC", (
  "Terraform",
  "Bicep",
  "Azure Templates",
  "Cloud Formation",
  "cdk",
))

#my-resume-skill-item("CI/CD & GitOps", (
  "GitHub Actions",
  "GitLab CI/CD",
  "ArgoCD",
  "Azure DevOps",
))

#my-resume-skill-item("Observability", (
  "Azure Monitor / App Insights",
  "AWS CloudWatch / X-Ray / CloudTrail",
  "Prometheus",
  "Grafana LGTM",
  "OTLP",
))
#my-resume-skill-item("DevSecOps", (
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
  "CosmosDB",
  "RDS",
  "DynamoDB",
  "GCS",
  "CloudSQL",
))
#my-resume-skill-item("KV-store / caching", (
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

#my-resume-skill-item("Big Data", (
  "Apache Spark",
  "FLiP (Flink + NiFi + Pulsar)",
  "Kafka (Streaming)",
  "Airflow",
  "DuckDB",
))
// #align(right)[
// #pagebreak()


#my-resume-skill-section("Crypto", (
  "___________________________________________________________________________________",
  "PKI",
  "Hashes",
  "Symmetric (block) ciphers",
  "KDFs",
  "ECC / Curve25519",
  "ECDH",
  "EdDSA",
  "Ristretto",
))

= Work Experience

#resume-entry(
  title: "Senior Software Engineer | Partner Integrations",
  location: "Amsterdam, The Netherlands",
  date: "July 2025 - Oct 2025",
  description: "Vox AI",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Worked on backend infrastructure for voice AI drive-thru platform, reporting directly to founders under tight deadlines.\ \

    1. Streamorders.com platform integration as DSP. OAuth2.0 server and location management API
    #pad(left: 1.5em)[
      Implemented AWS-backed serverless integration infrastructure with focus on observability, rapid iteration and state of the art security:
    ]
    #pad(left: 1.5em)[
      "OAuth 2.0 authorization code flow with AWS Cognito + PKCE, including custom handlers to work around partner's RFC 6749 non-compliant client (e.g. missing redirect_uri in token requests, custom URIs)
      - correlation ID system (nonce-based) for end-to-end distributed tracing across authorize/token/webhook flows
      - multi-tenant location management API with DynamoDB repository pattern and AWS X-Ray integration
      - stable stack architecture with CDK to minimize redeployment cycles (avoiding 15-40min Cognito CloudFront reprovisioning)
      - comprehensive observability: X-Ray distributed tracing, correlation IDs in logs/headers, Lambda Powertools, EventBridge + SQS for OAuth event monitoring
    ]

    2. POS menu transformation system - hierarchical mapper for Redcat POS integration

    #pad(left: 1.5em)[
      Developed hierarchical menu transformation system converting flattened POS data into nested structures, handling data quality issues (ambiguity, circular dependencies, orphaned references), achieving reproducibility withstanding minor upstream changes, and with minimal usage of heuristics; targeting dual schema system (nested + flattened - for RAG)
    ]

    #text(weight: "semibold")[Platform:] AWS Lambda, API Gateway, Cognito, DynamoDB, X-Ray, CloudWatch, EventBridge, SQS, CDK (IaC)

    #text(weight: "semibold")[Tools:] TypeScript, Python 3.12+, Pydantic, FastAPI, mangum, moto, pytest/pytest-asyncio, vitest, httpx, uv

    #text(weight: "semibold")[Achievements:]
    - delivered working OAuth 2.0 integration bridging AWS Cognito with third-party DSP protocol under 2-week timeline
    - built production-ready menu mapper handling poor data quality and complex hierarchical relationships with comprehensive test coverage
    - implemented correlation ID tracing enabling sub-second visibility across distributed OAuth flows
  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Netherlands",
  date: "2022 - ",
  description: "Freelance / contracting",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Worked on multiple projects as contractor/freelancer, with strong focus on platform engineering and
    cloud infrastructure:

    - Deliverect, full cycle restaurant business automation PaaS: integrated extra dimensions to Ordering facility\
      #text(weight: "semibold")[Tools:] Python, Eve, celery, Kubernetes (GKE), Typescript, React, Redis, minio (local backend)\

    - Ahold Delhaize (Albert Hijn): online data ingestion platform for internal compliance project, related to R&D efficiency and performance\
      #text(weight: "semibold")[Tools:] Go, Kubernetes (AKS, Kafka Strimzi operator), GitOps (ArgoCD), Terraform\

    - Private customer: online data ingestion of Taxi terminals data for compliance project to prevent fraud from a driver side\
      #text(weight: "semibold")[Tools:] Go, Kubernetes (AKS), Kafka, Postgres\

    - LEGO: building internal IAM / IdP functionality\
      #text(weight: "semibold")[Tools:] Azure Functions, Azure SAML identity provider, Python

    - Private customer: cloud based video conversion service\
      #text(weight: "semibold")[Tools:] c++20, cmake, ninja, go, grpc-gateway, ffmpeg, nix, terraform(terranix), EKS, CloudWatch\

    - Private customer: custom video calls service\
      #text(weight: "semibold")[Tools:] c++23, cmake, ninja, asio, libdatachannel (WebRTC stack), nix, ansible\

    - Petproject [in development]: Pluggable and configurable HFT matching engine with focus on high performance / ultra-lowlatency. Possible applications: high volume / low latency crypto exchanges, arbitrage bots.\
      #text(weight: "semibold")[Tools:] c++23 with extense usage of SIMD intrinsics, Cap'n Proto, go

  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Core Software Engineer",
  location: "Haarlem, Netherlands",
  date: "Nov 2019 – Sep 2021",
  description: "AIMMS B.V.",
)
#[
  #set par(spacing: 1.5em)
  #resume-item[
    - Centric role in large cloud platform migration project (from AWS to Azure with substantial scratch-rewrite in modern c++, from former Java/Scala)
    - Scratch-written Modern c++ framework and related micro-service template featuring protobuf DSL as API first class citizen, popularizing its use also for REST APIs to avoid buggy (back then) OpenAPI generators
    - Bootstrapped Azure landing zone (custom bootstrap for Terraform state and RBAC)
    - Built scalable tooling and participated in sensitive customer data migration
    - Wrote low-code generator of CRUD apps from declarative schema, used for administrative and other internal tools; bringing measurable R&D cost reduction\
    #text(weight: "semibold")[Tools:] ECS, EC2, CloudWatch, Go, Python, Java, Scala, c++17, Typescript, React, conan, cmake, ninja, grpc-gateway, go, Kubernetes (AKS), Azure Application Insights, Terraform\

    #text(weight: "semibold")[Achievements:] tackled cost-efficiency and throughput predictability of compute-heavy optimization workloads (with non-deterministic convergence) by implementing Kubernetes-native solutions: bin packing via resource requests/limits and affinity rules, priority classes, and a pre-warmed spare node strategy using Cluster Autoscaler and taints/tolerations.
  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Amsterdam, Netherlands",
  date: "Jan 2018 – Oct 2019",
  description: "HVR Software (acquired by Fivetran)",
)
#[
  #set par(spacing: 1.5em)
  #resume-item[
    Worked on high performance online data replication system, also called HVR (features and bugfixing)
    - Worked on product core (log based replication engine)
    - Reversed Oracle histogram data to build custom sharding functionality
    - Built a Go REST service for cloud integration.

    #text(weight: "semibold")[Tools:] C99, Python, Go, multiple RDBMS and Big Data stacks (integration), Oracle (histogram internals), Airlow

    #text(weight: "semibold")[Achievements:]
    Rewrote a core feature flag transpiler used in HVR’s CI/CD pipeline, cutting runtime from over 1 minute to 5 seconds.

    This order-of-magnitude speedup on a critical build path significantly improved developer experience and delivered measurable infrastructure cost savings.
  ]
]
#par(spacing: 1.0em)[]

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
  #text(weight: "semibold")[Tools:] c++ 11 / 14 / boost / gtest / sqlite / shell / python / Airflow
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014 - 2017",
  description: "New Cloud Technologies",
)
#[
  #set par(spacing: 1.5em)
  #resume-item[
    My Office project: on-prem office solution featuring collaboration engine: work on core functionality (features and bugfixing) and on spreadsheets client for Tizen OS

    #text(weight: "semibold")[Tools:] c++14, cmake, emscripten, Objective C, Qt, SWIG, Kubernetes\
    #text(weight: "semibold")[Achievements:]

    - Independently built a cross-platform freetype-based font rendering engine with subpixel positioning for scalable document layouts; overcame technical depth and low project visibility to successfully drive integration into a large enterprise codebase.

    - developed advanced spreadsheet UX for Samsung Tizen (embedded Linux), designing a declarative, compile-time state machine to avoid dynamic dispatch overhead and enable precise editing—resolving edge cases, free of bugs present back then in competitors' suites (e.g. Google Docs)
  ]
]
// #pagebreak()

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014",
  description: "AIS",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Building bank (transaction facility) for crypto mining pool basic exchange functionality:
    - scratch-written c++11 / asio framework and a few microservices (and their ownership)
    - multi-stage fault tolerant transactions
    - operating mission critical distributed system and managing risks of direct loss via using append-only fault-tolerant custom storage, two-factor transactions, implementing circuit breaking, proper alerting, extensive testing
    - zero-to-one release the thing into production as joint effort of 3 engineers exercising high degree of code ownership (on subsystem level)

    #text(weight: "semibold")[Tools:] c++11, Core Java, Groovy, Ruby(Chef)

    #text(weight: "semibold")[Achievements:]
    - designed and implemented all C++11 microservices for crypto exchange banking facility, including a multi-stage, fault-tolerant transaction system and circuit breaker with (semi-)automatic rollbacks.
    - delivered under pressure, a zero-to-one production launch in under 2 months alongside with one more person (Java developer), with personal accountability driving rigorous testing and system reliability under financial risk.
  ]
]

#par(spacing: 1.0em)[]

#resume-entry(
  title: "Previous work history",
  date: "2005 - 2014",
  description: "available upon request",
)
