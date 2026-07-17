#import "modern-cv/lib.typ": *

// Define colors from awesome-cv
#let default-accent-color = rgb("#262F99")

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
  accent-color: default-accent-color,
  colored-headers: true,
  show-footer: false,
  paper-size: "a4", // Use A4 for Dutch, US-letter for FAANG
  font: ("Roboto", "Source Sans Pro"),
  header-font: "Source Sans Pro",
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
  High-impact software engineering professional with 20+ years of experience, including over a decade building distributed systems for real-time, data-intensive, and mission-critical applications.
  Navigates complex technical problems from architecture to implementation, delivering clear, reliable, and elegant solutions.
]

#par(spacing: 0.5em)[]

= Education
#resume-entry(
  title: "B.Sc. in Computer Science and Engineering",
  location: "Novosibirsk, Russia",
  date: "2002 – 2007",
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
  "CAP trade-offs",
  "event-driven systems",
))
#my-resume-skill-section(
  "Dev stacks",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("C++11–23", (
  "boost",
  "flatbuffers",
  "Cap'n Proto",
  "asio",
  "gtest",
  "seastar",
))
#my-resume-skill-item("Go", (
  "gin",
  "zap/slog",
  "gomock",
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
#my-resume-skill-item("JS/TypeScript", (
  "React",
  "Auth.js",
  "tRPC",
  "Prisma",
  "Vite",
  "Tailwind CSS",
  "Axios",
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
  "Akka",
  "Hibernate",
  "NIO",
  "Quarkus",
))

#my-resume-skill-section(
  "GenAI / LLM",
  (
    "___________________________________________________________________________________",
  ),
)
#my-resume-skill-item("RAG systems", (
  "retrieval-ready data design",
  "hierarchical + reference schema modeling",
  "context preparation for LLM calls",
  "reproducible data transformation pipelines",
))
#my-resume-skill-item("LLM integration", (
  "protocol interoperability for agentic systems",
  "OAuth2/OIDC for AI partner integrations",
  "signed payload validation in model passthrough",
  "debugging proprietary API integrations",
))
#my-resume-skill-item("Data quality for AI", (
  "circular dependency resolution",
  "orphaned reference reconciliation",
  "ambiguity handling",
  "schema drift resilience",
))

#my-resume-skill-item("Build Systems", (
  "Nix",
  "CMake",
  "Ninja",
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
  "k3s",
  "AKS",
  "EKS",
  "GKE",
  "OpenShift",
))
#my-resume-skill-item("Other compute", (
  "Azure VM",
  "ECS",
  "EC2",
  "GCE",
))
#my-resume-skill-item("Serverless", (
  "Azure Functions",
  "AWS Lambda",
  "GCF",
  "Cloudflare Workers",
))
#my-resume-skill-item("IaC", (
  "Terraform",
  "Helm",
  "NixOps 4",
  "Bicep",
  "Azure Templates",
  "CloudFormation",
  "cdk",
))

#my-resume-skill-item("CI/CD & GitOps", (
  "Flux CD",
  "GitHub Actions",
  "GitLab CI/CD",
  "ArgoCD",
  "Azure DevOps",
))

#my-resume-skill-item("Observability", (
  "Azure Monitor / App Insights",
  "AWS CloudWatch / X-Ray / CloudTrail",
  "Prometheus / Alertmanager",
  "Grafana / LGTM",
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
  "PostGIS",
  "TimescaleDB",
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
  "S3 / MinIO / RustFS",
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
  title: "Senior Software Engineer",
  location: "Rotterdam, Netherlands",
  date: "March 2026 - July 2026",
  description: "The Ocean Cleanup",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    1. Re-engineered and owned the infrastructure for Onboard Compute platform - edge distributed system, managing UAV and vessel data ingestion, operational monitoring, and offshore cleanup planning.\

    #pad(left: 1.5em)[
      Replaced the single-node k3s deployment with a three-node HA cluster and configured Kubernetes API failover between its two control-plane servers. Introduced GitOps for in-cluster state and built the host-provisioning and k3s/Flux bootstrap layer in Ansible. The GitOps workflow managed SOPS-encrypted runtime secrets and validated rendered manifests.
      Replicated this setup in a three-node local development environment. Automated node-access provisioning, wrote setup and recovery runbooks, and supported engineers through handover.
    ]

    2. Alongside the platform work, helped clear the frontend backlog by refining proposed map fixes to improve legibility: higher-contrast density bands and a clearer hierarchy between vessel and route layers.

    #text(weight: "semibold")[Platform:] k3s, Flux CD, Kube-VIP, MetalLB (L2), Tailscale, Traefik, CloudNativePG, PostgreSQL/PostGIS/TimescaleDB, Redis Streams/Zenoh, Prometheus/Grafana, RustFS

    #text(weight: "semibold")[Tools:] Python, Ansible, Kustomize, SOPS, Terraform/Talos (PoC), Docker Engine, Tart, Rosetta, binfmt_misc, Nix/flake-parts (modular reproducible dev environments), Vue/TypeScript

    #text(weight: "semibold")[Achievements:]
    - built the local cluster on Apple Silicon to run amd64 workloads via Docker Engine and Rosetta registered with binfmt_misc after debugging K3s's embedded-containerd path at the OCI/seccomp layer
    - expanded Flux reconciliation, ingress, and remote-write alerts; instrumented UAV ingestion for data freshness, stream processing, dead-letter handling, and latency
    - delivered HA ingress through a single VIP reachable over both the onboard LAN and tailnet
    - replaced ingress-nginx with Traefik and authored the in-review routing RFC proposing Gateway API as the long-term model
    - prototyped API-driven edge-cluster setup without node SSH using Terraform/Talos; the team retained k3s/Ansible
  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer | Partner Integrations",
  location: "Amsterdam, Netherlands",
  date: "July 2025 – Oct 2025",
  description: "Vox AI",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Built backend integrations for a voice-AI drive-thru platform, working directly with founders under two-week delivery windows.\ \

    1. Streamorders.com DSP integration: OAuth 2.0 server and location-management API
    #pad(left: 1.5em)[
      Implemented AWS-backed serverless infrastructure for the partner data-exchange protocol, with security, observability, and fast deployment cycles built in.
    ]
    #pad(left: 1.5em)[
      AWS Cognito-based OAuth 2.0/OIDC service with PKCE enforcement and compatibility handling for non-compliant partner clients
      - correlation ID system for end-to-end tracing across authorize/token/webhook flows
      - multi-tenant location management API with DynamoDB repository pattern and AWS X-Ray integration
      - stable CDK stack layout to avoid 15-40 min Cognito/CloudFront reprovisioning during iteration
      - comprehensive observability: X-Ray distributed tracing, correlation IDs in logs/headers, Lambda Powertools, EventBridge + SQS for OAuth event monitoring
    ]

    2. POS menu transformation system for Redcat integration

    #pad(left: 1.5em)[
      Built a deterministic pipeline that converted flat POS data into nested and reference structures for voice-ordering RAG. Resolved ambiguity, circular dependencies, and orphaned references with transformations resilient to upstream schema changes.
    ]

    3. RAG data quality engineering + CI integration

    #pad(left: 1.5em)[
      Converted noisy POS inputs into retrieval-ready structures and added CI validation to catch regressions from schema and data changes.
    ]

    #text(weight: "semibold")[Platform:] AWS Lambda, API Gateway, Cognito, DynamoDB, X-Ray, CloudWatch, EventBridge, SQS, CDK (IaC)

    #text(weight: "semibold")[Tools:] TypeScript, Python 3.12+, Pydantic, FastAPI, mangum, moto, pytest/pytest-asyncio, vitest, httpx, uv

    #text(weight: "semibold")[Achievements:]
    - delivered working OAuth 2.0 integration bridging AWS Cognito with third-party DSP protocol under 2-week timeline
    - built production-ready, RAG-oriented menu mapper handling poor data quality and complex hierarchical/reference relationships with strong test coverage
    - implemented correlation ID tracing enabling sub-second visibility across distributed OAuth flows
    - integrated RAG data quality checks into CI workflows, reducing regressions from upstream POS schema and data changes
  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Netherlands",
  date: "2022 – Present",
  description: "Freelance / contracting",
)

#[
  #set par(spacing: 1.5em)
  #resume-item[
    Delivered platform, data, and systems engineering across client and open-source projects:

    - Open-source contribution (tailscale/tailscale): landed Unix socket proxy support for `tailscale serve unix:/path/to/socket` in `cmd/tailscale` + `ipn`; enables exposing services like Docker/containerd/PHP-FPM over Tailscale without TCP bridging, with safeguards for sensitive local sockets\

    - Open-source contribution (blacktop/ipsw): fixed demangling of internal symbols (including `.cold.*`) to improve readability and correctness of disassembly output\

    - Agentic protocol contribution (opencode-antigravity-auth): reverse-engineered signed payload handling for Claude 4.6 interleaved thinking in private Google Antigravity API passthrough; preserved valid signatures and stripped only invalid ones to prevent model instability and reasoning leakage\

    - Deliverect, full-cycle restaurant automation PaaS: extended ordering data model and API behavior\
      #text(weight: "semibold")[Tools:] Python, Eve, Celery, Kubernetes (GKE), TypeScript, React, Redis, MinIO (local backend),
      Terraform, Helm\

    - Ahold Delhaize (Albert Heijn): online data-ingestion platform for internal compliance and R&D analytics\
      #text(weight: "semibold")[Tools:] Go, Kubernetes (AKS, Kafka Strimzi Operator), GitOps (Argo CD), Airflow, Spark, Terraform, Helm\

    - Private customer: taxi-terminal telemetry ingestion for compliance and fraud analysis\
      #text(weight: "semibold")[Tools:] Go, Kubernetes (AKS), Kafka, PostgreSQL, Terraform, Helm\

    - LEGO: internal IAM / identity-provider functionality\
      #text(weight: "semibold")[Tools:] Azure Functions, Azure SAML identity provider, Python

    - Private customer: cloud-based video-conversion service\
      #text(weight: "semibold")[Tools:] C++20, CMake, Ninja, Go, gRPC-Gateway, FFmpeg, Kubernetes (EKS), CloudWatch, Airflow,
      Nix, Terraform (Terranix), Helm\

    - Private customer: custom video calls service\
      #text(weight: "semibold")[Tools:] C++23, CMake, Ninja, Asio, libdatachannel (WebRTC stack), Nix, Ansible\

    - Pet project [in development]: configurable HFT matching engine focused on high-throughput, low-latency order matching for exchanges and arbitrage systems\
      #text(weight: "semibold")[Tools:] C++23, SIMD intrinsics, Cap'n Proto, Go

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
    - led core C++ platform work in an AWS-to-Azure migration, replacing Java/Scala services with a modern C++ service framework
    - built a C++17 microservice template with an API-first protobuf DSL used for both gRPC and REST surfaces
    - bootstrapped Azure landing-zone foundations for Terraform state and RBAC
    - built migration tooling for sensitive customer data
    - wrote a declarative-schema CRUD generator for administrative and internal tools, reducing repetitive R&D work\
    #text(weight: "semibold")[Tools:] ECS, EC2, CloudWatch, Go, Python, Java, Scala, C++17, TypeScript, React, Conan, CMake, Ninja, gRPC-Gateway, Kubernetes (AKS), Azure Application Insights, Terraform, Helm\

    #text(weight: "semibold")[Achievements:] tackled cost-efficiency and throughput predictability of compute-heavy optimization workloads (with non-deterministic convergence) by implementing Kubernetes-native solutions: bin packing via resource requests/limits and affinity rules, priority classes, and a pre-warmed spare node strategy using Cluster Autoscaler and taints/tolerations
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
    Built features and fixes for HVR's high-throughput, log-based data-replication engine.
    - contributed to product core replication workflows
    - reverse-engineered Oracle histogram metadata to support custom sharding functionality
    - built a Go REST service for cloud integration

    #text(weight: "semibold")[Tools:] C99, Python, Go, multiple RDBMS and Big Data stacks (integration), Oracle (histogram internals), Airflow, Spark

    #text(weight: "semibold")[Achievements:]
    rewrote a core feature-flag transpiler used in HVR's CI/CD pipeline, reducing runtime from over 1 minute to 5 seconds on a critical build path
  ]
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Software Engineer",
  location: "Eindhoven, Netherlands",
  date: "2017",
  description: "Mapscape B.V.",
)
#resume-item[
  Implemented backend components of the Mapscape NDS compiler for raw map-data parsing and added parallel parsing to reduce processing time.\
  #text(weight: "semibold")[Tools:] C++11/14, Boost, GTest, SQLite, shell, Python, Airflow
]
#par(spacing: 1.0em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014 – 2017",
  description: "New Cloud Technologies",
)
#[
  #set par(spacing: 1.5em)
  #resume-item[
    Built collaboration-engine features for an on-prem office suite and developed the spreadsheet client for Samsung Tizen.

    #text(weight: "semibold")[Tools:] C++14, CMake, Emscripten, Objective-C, Qt, SWIG, Kubernetes\
    #text(weight: "semibold")[Achievements:]

    - built a cross-platform FreeType-based font-rendering engine with subpixel positioning for scalable document layouts and integrated it into a large enterprise codebase

    - developed advanced spreadsheet editing for Samsung Tizen using a declarative, compile-time state machine to avoid dynamic dispatch overhead and resolve editing edge cases observed in competing web suites
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
    Built C++11 microservices for a crypto-mining-pool banking and exchange subsystem:
    - designed an Asio-based service framework
    - implemented multi-stage, fault-tolerant transactions
    - reduced direct-loss risk with append-only storage, two-factor transactions, circuit breakers, alerting, rollback paths, and extensive testing
    - shipped the zero-to-one production release with a three-engineer team, owning the C++ subsystem end to end

    #text(weight: "semibold")[Tools:] C++11, Core Java, Groovy, Ruby (Chef)

    #text(weight: "semibold")[Achievements:]
    - designed and implemented all C++11 services for the crypto exchange banking facility, including multi-stage transactions and circuit breakers with rollback paths
    - delivered the production launch in under two months with personal accountability for reliability under financial risk
  ]
]

#par(spacing: 1.0em)[]

#resume-entry(
  title: "Previous work history",
  date: "2005 – 2014",
  description: "Available upon request",
)
