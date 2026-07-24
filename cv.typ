#import "lib/lib.typ": *

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

#show text: set text(hyphenate: false)
#set list(marker: ([•], [-]))

= About
#text(weight: "light")[
  Senior software engineer with 20+ years of experience, including over a decade building real-time, data-intensive, and mission-critical distributed systems from architecture through implementation.
]

= Skills

#my-resume-skill-section(
  "Distributed Systems",
  skills: (
    "HA/fault tolerance",
    "scalability, partitioning/replication",
    "EDA and messaging",
    "consensus (Raft, Paxos)",
    "CAP trade-offs/consistency models",
  ),
  divider: false,
)

#my-resume-skill-section("Development")
#my-resume-skill-item("C++11–23", (
  "Boost/Asio",
  "Cap'n Proto",
  "FlatBuffers",
  "Seastar",
))
#my-resume-skill-item("Rust", (
  "Tokio",
  "hyper",
  "PyO3/maturin",
))
#my-resume-skill-item("Go", (
  "Gin",
  "zap/slog",
))
#my-resume-skill-item("Python", (
  "FastAPI/Pydantic",
  "SQLAlchemy",
  "Celery",
  "NumPy",
  "pandas",
  "Polars",
))
#my-resume-skill-item("JVM", (
  "Java/Scala/Kotlin",
  "Spring Boot/Hibernate",
  "Akka",
))
#my-resume-skill-item("JS/TS", (
  "React",
  "Vue",
  "Vite/Vitest",
  "tRPC",
  "Prisma",
))
#my-resume-skill-item("Build", (
  "Nix",
  "CMake/Ninja",
  "Conan",
  "Maven",
  "Bazel",
  "Meson",
))

#my-resume-skill-section("Computer Systems")
#my-resume-skill-item("CPU/concurrency", (
  "x86-64/ARM64 assembly",
  "SIMD (SSE/NEON)",
  "memory models",
  "memory and instruction ordering",
  "fences/barriers",
  "multithreading/multiprocessing",
  (),
  "HW-aware optimization",
))
#my-resume-skill-item("Linux", (
  "task scheduling",
  "VM/paging",
  "seccomp/SELinux",
  "io_uring",
))

#my-resume-skill-item("Networking", (
  "TCP/IP",
  "UDP",
  "DNS",
  "routing/NAT",
  "QoS",
  "L4/L7 load balancing",
  "virtual/overlay networks (Tailscale)",
  "eBPF/XDP/AF_XDP",
  "Unix/raw sockets",
))

#my-resume-skill-section("Platform & Infrastructure")
#my-resume-skill-item("Cloud", (
  "AWS (EC2/ECS/Lambda)",
  "Azure (VM/Functions)",
  "GCP (GCE/App Engine/Functions)",
))
#my-resume-skill-item("Virtualization/containers", (
  "Proxmox",
  "QEMU/KVM",
  "Cloud Hypervisor",
  "LXC/Incus",
  "Docker Engine/containerd",
))
#my-resume-skill-item("Bare-metal/edge", (
  "iPXE",
  "Matchbox (Terraform provider)",
  "Flatcar/systemd-sysext",
  "Keylime (TPM 2.0 attestation)",
))
#my-resume-skill-item("Kubernetes", (
  "Talos Linux",
  "k3s",
  "EKS",
  "AKS",
  "GKE",
  "OpenShift",
  "Helm",
  "Kustomize",
  (),
  "Gateway API",
  "Cilium (CNI)",
  "kube-vip",
  "MetalLB",
  (),
  "Strimzi",
  "CloudNativePG",
  "cert-manager",
  "Trivy Operator",
  "Prometheus Operator",
  "kube-state-metrics",
))
#my-resume-skill-item("IaC", (
  "Terraform",
  "Tofu Controller",
  "Ansible",
  "CDK",
  "CloudFormation",
  "Bicep/ARM templates",
  "NixOps4",
))
#my-resume-skill-item("CI/CD & GitOps", (
  "Flux CD",
  "Argo CD",
  "GitHub Actions",
  "GitLab CI/CD",
  "Azure DevOps",
))
#my-resume-skill-item("Observability", (
  "Prometheus",
  "Grafana/LGTM",
  "OTel/OTLP",
  "CloudWatch/X-Ray",
  "Azure Monitor/App Insights",
))
#my-resume-skill-item("IAM/IdPs", (
  "OAuth 2.0/OIDC (PKCE/mTLS/DPoP)",
  "SAML",
  "Entra ID/Azure AD",
  "Cognito",
  "Auth0",
))
#my-resume-skill-item("Access", (
  "RBAC",
  "PoLP",
  "tenant isolation",
  "Zero Trust",
))
#pagebreak()

#my-resume-skill-section("Data")
#my-resume-skill-item("DBs", (
  "Postgres (PostGIS, TimescaleDB)",
  "DynamoDB",
  "MySQL",
  "Cassandra",
  "MongoDB",
  "DuckDB",
))
#my-resume-skill-item("KV/cache", (
  "Redis",
  "etcd",
  "RocksDB",
  "Valkey",
))
#my-resume-skill-item("Object storage", (
  "S3",
  "MinIO",
  "RustFS",
  "Azure Blob",
  "GCS",
))
#my-resume-skill-item("Messaging", (
  "Kafka",
  "RabbitMQ",
  "Pulsar",
))
#my-resume-skill-item("Pipelines", (
  "Airflow",
  "Spark/PySpark",
  "Flink",
  "NiFi",
))

#my-resume-skill-section("AI/ML")
#my-resume-skill-item("NLP", (
  "POS tagging",
  "lemmatization",
  "NER",
  "NLTK",
  "spaCy",
  "Stanza",
))
#my-resume-skill-item("LLM integration", (
  "RAG",
  "retrieval-ready data",
  "agent orchestration",
  "stateful multi-turn workflows",
))

#my-resume-skill-section(
  "Cryptography",
  skills: (
    "Curve25519",
    "ECDH",
    "EdDSA",
    "Ristretto",
    "ZK-SNARKs/ZK-STARKs",
  ),
  divider: false,
)


= Work Experience

#resume-entry(
  title: "Senior Software Engineer",
  location: "Rotterdam, Netherlands",
  date: "Mar 2026 – Jul 2026",
  description: "The Ocean Cleanup",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Owned infrastructure for the Onboard Compute platform, an edge system for UAV and vessel data ingestion, visualization, operational monitoring, and offshore cleanup planning.\
    #pad(left: 1em)[
      - Scaled k3s from one node to a three-server HA cluster with an embedded etcd quorum; added Kubernetes API endpoint failover and an ingress VIP reachable from both the onboard LAN and tailnet.\

      - Introduced a two-layer automation model: GitOps for in-cluster state; Ansible for node and access provisioning and k3s/Flux bootstrap. Secured runtime secrets with SOPS and enforced validation across both repositories, including KubeLinter checks of fully rendered Flux trees and kubeconform validation in strict mode against pinned schemas.\

      - Authored an internal RFC to standardize Gateway API routing across company systems and developed a Talos Linux PoC for immutable, API-managed edge nodes.\

      - Documented cluster setup and steady-state operations, and wrote recovery runbooks.\

      - Instrumented UAV ingestion for Zenoh freshness and forwarding, Redis Streams/DLQ processing, and end-to-end latency; added alerts for Flux reconciliation, ingress health, and remote-write failures.\

      - Built a topology-equivalent local k3s environment with Tart VMs to validate changes without access to the field cluster.
    ]
    #text(weight: "semibold")[Achievements:]
    #pad(left: 1em)[
      - Enabled unmodified amd64 workloads on Apple Silicon by replacing k3s's embedded containerd with Docker Engine and registering Rosetta through binfmt_misc, bypassing an OCI runtime/seccomp incompatibility.

      - Improved frontend map legibility by refining higher-contrast density bands and the visual hierarchy between vessel and route layers.
    ]
    #pad[
      #text(weight: "semibold")[Platform & services:] k3s, Flux CD, kube-vip, MetalLB (L2), Tailscale, Traefik, CloudNativePG, PostgreSQL (PostGIS, TimescaleDB), Redis Streams, Zenoh, Prometheus, Grafana, RustFS

      #text(weight: "semibold")[Infrastructure tooling:] Ansible, Kustomize, SOPS, KubeLinter, kubeconform, Docker Engine, Tart, Rosetta, binfmt_misc, Nix/flake-parts


      #text(weight: "semibold")[App stack:] Python, TypeScript, Vue
    ]
  ]
]

#par(spacing: 0.5pt)[]

#resume-entry(
  title: "Senior Software Engineer | Partner Integrations",
  location: "Amsterdam, Netherlands",
  date: "July 2025 – Oct 2025",
  description: "Vox AI",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Built backend integrations for a voice-AI drive-thru platform, working directly with founders under two-week delivery windows.\

    1. Streamorders.com DSP integration: OAuth 2.0 server and location-management API
    #pad(left: 1em)[
      Implemented serverless AWS infrastructure for the partner data-exchange protocol, including authentication, tracing, and deployment automation.
    ]
    #pad(left: 1em)[
      - Built an AWS Cognito-based OAuth 2.0/OIDC service with PKCE enforcement and compatibility handling for non-compliant partner clients.
      - Added correlation IDs for end-to-end tracing across authorization, token, and webhook flows.
      - Built a multi-tenant location-management API using a DynamoDB repository pattern and AWS X-Ray integration.
      - Structured the CDK stack to avoid 15–40-minute Cognito/CloudFront reprovisioning during iteration.
      - Added X-Ray distributed tracing, correlation IDs in logs and headers, AWS Lambda Powertools, and EventBridge/SQS monitoring for OAuth events.
    ]

    2. POS menu transformation system for Redcat integration

    #pad(left: 1em)[
      Built a deterministic pipeline that converted flat POS data into nested and reference structures for voice-ordering RAG. Resolved ambiguity, circular dependencies, and orphaned references with transformations resilient to upstream schema changes.
    ]

    3. RAG data-quality engineering and CI integration

    #pad(left: 1em)[
      Converted noisy POS inputs into retrieval-ready structures and added CI validation to catch regressions from schema and data changes.
    ]

    #pad[#text(weight: "semibold")[Achievements:]]
    #pad(left: 1em)[
      - Delivered a working OAuth 2.0 integration bridging AWS Cognito and a third-party DSP protocol within two weeks.
      - Built and tested a RAG-oriented menu mapper that handled poor data quality and complex hierarchical and reference relationships.
      - Implemented correlation ID tracing that provided sub-second visibility across distributed OAuth flows.
      - Integrated RAG data-quality checks into CI workflows to catch regressions from upstream POS schema and data changes.
    ]

    #pad[
      #text(weight: "semibold")[Platform & services:] AWS Lambda, API Gateway, Cognito, DynamoDB, X-Ray, CloudWatch, EventBridge, SQS, CDK (IaC)

      #text(weight: "semibold")[App stack:] TypeScript, Python 3.12+, Pydantic, FastAPI, Mangum, Moto, pytest/pytest-asyncio, Vitest, HTTPX, uv
    ]
  ]
]
#par(spacing: 1em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Netherlands",
  date: "2022 – Present",
  description: "Freelance / contracting",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Delivered platform, data, and systems engineering across client and open-source projects:

    #pad(left: 1em)[
      - Open-source contribution (tailscale/tailscale): landed Unix socket backend support for `tailscale serve unix:/path/to/socket` across `cmd/tailscale` and `ipn`, enabling services on local sockets to be exposed over Tailscale without TCP bridging and with safeguards for sensitive sockets.\

      - Open-source contribution (blacktop/ipsw): fixed demangling of internal symbols, including `.cold.*`, to improve the readability and correctness of disassembly output.\

      - Agentic protocol contribution (opencode-antigravity-auth): reverse-engineered signed payload handling for Claude 4.6 interleaved thinking in a private Google Antigravity API passthrough; preserved valid signatures and removed only invalid ones to prevent model instability and reasoning-state leakage.\

      - Deliverect, full-cycle restaurant automation PaaS: extended the ordering data model and API behavior.\
        #text(weight: "semibold")[Stack:] Python, Eve, Celery, Kubernetes (GKE), TypeScript, React, Redis, MinIO (local backend),
        Terraform, Helm\

      - Ahold Delhaize (Albert Heijn): online data-ingestion platform for internal compliance and R&D analytics.\
        #text(weight: "semibold")[Stack:] Go, Kubernetes (AKS), Strimzi (Kafka), GitOps (Argo CD), Airflow, Spark, Terraform, Helm\

      - Private customer: taxi-terminal telemetry ingestion for compliance and fraud analysis.\
        #text(weight: "semibold")[Stack:] Go, Kubernetes (AKS), Kafka, PostgreSQL, Terraform, Helm\

      - LEGO: internal IAM and identity-provider functionality.\
        #text(weight: "semibold")[Stack:] Azure Functions, Azure SAML identity provider, Python

      - Private customer: cloud-based video-conversion service.\
        #text(weight: "semibold")[Stack:] C++20, CMake, Ninja, Go, gRPC-Gateway, FFmpeg, Kubernetes (EKS), CloudWatch, Airflow,
        Nix, Terraform (Terranix), Helm\

      - Private customer: custom video-calling service.\
        #text(weight: "semibold")[Stack:] C++23, CMake, Ninja, Asio, libdatachannel (WebRTC stack), Nix, Ansible\

      - Pet project (in development): configurable HFT matching engine focused on high-throughput, low-latency order matching for exchanges and arbitrage systems.\
        #text(weight: "semibold")[Stack:] C++23, SIMD intrinsics, Cap'n Proto, Go
    ]

  ]
]
#par(spacing: 1em)[]

#resume-entry(
  title: "Core Software Engineer",
  location: "Haarlem, Netherlands",
  date: "Nov 2019 – Sep 2021",
  description: "AIMMS B.V.",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    As a member of the AIMMS PRO core team:

    1. AWS-to-Azure platform migration
    #pad(left: 1em)[
      - Configured RBAC for the Azure landing zone, bootstrapped Terraform state, and implemented supporting IaC.
      - Migrated Java and Scala backend services from ECS to AKS, adapting them to the Kubernetes API.
    ]

    2. Core C++ platform and developer tooling
    #pad(left: 1em)[
      - Built a C++17 microservice template with an API-first protobuf DSL used for both gRPC and REST surfaces.
      - Worked on internal developer-platform infrastructure and package registries (Conan, Artifactory).
      - Built PoCs and delivered demos to promote adoption of the developer-platform tooling.
    ]

    #pad[#text(weight: "semibold")[Achievements:]]
    #pad(left: 1em)[
      - Improved cost efficiency and throughput predictability for compute-heavy optimization workloads with nondeterministic convergence by implementing Kubernetes-native bin packing through resource requests/limits and affinity rules, priority classes, and pre-warmed spare capacity using Cluster Autoscaler and taints/tolerations.
      - Built migration tooling for sensitive, business-critical customer data in Amazon RDS.
      - Built a declarative-schema CRUD generator for administrative and internal tools, reducing repetitive implementation work.
    ]

    #pad[
      #text(weight: "semibold")[Stack:] ECS, EC2, RDS, CloudWatch, Go, Python, Java, Scala, C++17, TypeScript, React, Conan, Artifactory, CMake, Ninja, gRPC-Gateway, Kubernetes (AKS), Application Insights, Terraform, Helm
    ]
  ]
]
#par(spacing: 1em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "Amsterdam, Netherlands",
  date: "Jan 2018 – Oct 2019",
  description: "HVR Software (acquired by Fivetran)",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    Implemented features and bug fixes in HVR's high-throughput, log-based data-replication engine.
    #pad(left: 1em)[
      - Contributed to core replication workflows.
      - Reverse-engineered Oracle histogram metadata to support custom sharding functionality.
      - Built a Go REST service for cloud integration.
    ]

    #pad[#text(weight: "semibold")[Achievements:]]
    #pad(left: 1em)[
      - Rewrote a core feature-flag transpiler used in HVR's CI/CD pipeline, reducing runtime from over one minute to five seconds on a critical build path.
    ]

    #pad[
      #text(weight: "semibold")[Stack:] C99, Python, Go, RDBMS and big-data integrations, Oracle (histogram internals), Airflow, Spark
    ]
  ]
]
#par(spacing: 1em)[]

#resume-entry(
  title: "Software Engineer",
  location: "Eindhoven, Netherlands",
  date: "2017",
  description: "Mapscape B.V.",
)
#resume-item[
  Implemented backend components of the Mapscape NDS compiler for raw map data parsing and introduced parallel parsing to reduce processing time.\
  #pad[#text(weight: "semibold")[Stack:] C++11/14, Boost, GTest, SQLite, shell, Python, Airflow]
]
#par(spacing: 1em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014 – 2017",
  description: "New Cloud Technologies",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    Built collaboration-engine features for an on-premises office suite and developed its spreadsheet client for Samsung Tizen.

    #pad[#text(weight: "semibold")[Achievements:]]
    #pad(left: 1em)[
      - Built a cross-platform FreeType-based font-rendering engine with subpixel positioning for scalable document layouts and integrated it into a large enterprise codebase.

      - Developed advanced spreadsheet editing for Samsung Tizen using a declarative, compile-time state machine to avoid dynamic dispatch overhead and resolve editing edge cases observed in competing web suites.
    ]

    #pad[#text(weight: "semibold")[Stack:] C++14, CMake, Emscripten, Objective-C, Qt, SWIG, Kubernetes]
  ]
]

#par(spacing: 1em)[]

#resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014",
  description: "AIS",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Built C++11 microservices for the banking and exchange subsystem of a cryptocurrency mining pool:
    #pad(left: 1em)[
      - Designed an Asio-based service framework.
      - Implemented multi-stage, fault-tolerant transactions.
      - Reduced the risk of direct financial loss through append-only storage, two-factor transactions, circuit breakers, alerting, rollback paths, and extensive testing.
      - Shipped the zero-to-one production release with a three-engineer team, owning the C++ subsystem end to end.
    ]

    #pad[#text(weight: "semibold")[Achievements:]]
    #pad(left: 1em)[
      - Designed and implemented all C++11 services for the banking subsystem, including multi-stage transactions and circuit breakers with rollback paths.
      - Delivered the production launch in under two months with end-to-end ownership of reliability under financial risk.
    ]

    #pad[#text(weight: "semibold")[Stack:] C++11, Core Java, Groovy, Ruby (Chef)]
  ]
]

#par(spacing: 1em)[]

= Education
#resume-entry(
  title: "B.Sc. in Computer Science and Engineering",
  location: "Novosibirsk, Russia",
  date: "2002 – 2007",
  description: "Novosibirsk State Technical University (NSTU)",
)

#par(spacing: 2.0em)[]

#resume-entry(
  title: "Previous work history",
  date: "2005 – 2014",
  description: "Available upon request",
)
