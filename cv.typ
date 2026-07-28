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
#set line(stroke: 0.5pt)
#set list(marker: ([•], [-]))

= About
#text(weight: "light")[
  Senior software engineer with 20+ years of experience, including over a decade building real-time, data-intensive, and mission-critical distributed systems. Builds and owns cloud, on-premises, and edge platforms from architecture through production.
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

#my-resume-entry(
  title: "Senior Software Engineer",
  location: "Rotterdam, Netherlands",
  date: "Mar 2026 – Jul 2026",
  description: "The Ocean Cleanup",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Owned, re-architected, and shipped the infrastructure for Onboard Compute, an edge platform for UAV and vessel data ingestion, visualization, operational monitoring, and offshore cleanup planning.\
    #pad(left: 1em)[
      - Scaled k3s from one node to a three-server HA cluster with an embedded etcd quorum; added Kubernetes API endpoint failover and an ingress VIP reachable from both the onboard LAN and tailnet.\

      - Introduced GitOps for in-cluster state and Ansible for node provisioning, access management, and k3s/Flux bootstrap. Secured runtime secrets with SOPS; validated fully rendered Flux trees with KubeLinter and strict kubeconform checks against pinned schemas; and built a topology-equivalent Tart/k3s environment for validation without field-cluster access.\

      - Authored an internal RFC to standardize Gateway API routing across edge and cloud systems and developed a Talos Linux PoC for immutable, API-managed edge nodes.\

      - Improved map legibility with higher-contrast density bands and clearer hierarchy between vessel and route layers.\

      - Instrumented UAV ingestion for Zenoh freshness and forwarding, Redis Streams/DLQ processing, and end-to-end latency; added alerts for Flux reconciliation, ingress health, and remote-write failures.\

      - Enabled unmodified amd64 workloads on Apple Silicon by replacing k3s's embedded containerd with Docker Engine and registering Rosetta through binfmt_misc, bypassing an OCI runtime/seccomp incompatibility.
    ]
    #pad[
      #text(weight: "semibold")[Platform:] k3s, Flux CD, kube-vip, MetalLB (L2), Tailscale, Traefik, CloudNativePG, PostgreSQL (PostGIS, TimescaleDB), Redis Streams, Zenoh, Prometheus/Grafana, RustFS

      #text(weight: "semibold")[Tooling & app:] Ansible, Kustomize, SOPS, KubeLinter, kubeconform, Docker Engine, Tart/Rosetta, Nix/flake-parts, Python, TypeScript/Vue
    ]
  ]
]

#resume-entry-divider()

#my-resume-entry(
  title: "Senior Software Engineer | Partner Integrations",
  location: "Amsterdam, Netherlands",
  date: "Jul 2025 – Oct 2025",
  description: "Vox AI",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    Shipped backend integrations for a voice-AI drive-thru platform, working directly with founders.\
    #pad(left: 1em)[
      - Delivered an OAuth 2.0/OIDC integration bridging AWS Cognito and a third-party DSP protocol within two weeks, enforcing PKCE while handling non-compliant partner clients.\

      - Built a multi-tenant location-management API on DynamoDB; added correlation IDs, X-Ray, Lambda Powertools, and EventBridge/SQS monitoring across authorization, token, and webhook flows.\

      - Structured the CDK stack to avoid 15–40 minutes of Cognito/CloudFront reprovisioning per iteration.\

      - Built a deterministic POS-to-RAG transformation pipeline that resolved ambiguity, circular dependencies, and orphaned references while remaining stable across upstream schema changes; integrated data-quality checks into CI.
    ]

    #pad[
      #text(weight: "semibold")[Platform:] AWS Lambda, API Gateway, Cognito, DynamoDB, X-Ray, CloudWatch, EventBridge, SQS, CDK

      #text(weight: "semibold")[App stack:] TypeScript, Python 3.12+, Pydantic, FastAPI, Mangum, Moto, pytest/pytest-asyncio, Vitest, HTTPX, uv
    ]
  ]
]
#resume-entry-divider()

#my-resume-entry(
  title: "Senior Software Engineer",
  location: "Netherlands",
  date: "2022 – Present",
  description: "Selected contracts and open-source work",
)

#[
  #set par(spacing: 1.0em)
  #resume-item[
    #pad(left: 1em)[
      - Tailscale: landed upstream Unix domain socket support for `tailscale serve unix:/path/to/socket` across `cmd/tailscale` and `ipn`, exposing services bound to local sockets over Tailscale without TCP bridging and with safeguards against exposing tailscaled's own socket.\

      - ipsw: landed upstream demangling support for internal symbols, including `.cold.*`, improving disassembly readability and correctness.\

      - Deliverect: extended the data model and API behavior of a restaurant-automation PaaS.\
        #text(weight: "semibold")[Stack:] Python, Eve, Celery, GKE, TypeScript/React, Redis, MinIO, Terraform, Helm\

      - Ahold Delhaize (Albert Heijn): built an online data ingestion platform for internal compliance and R&D analytics.\
        #text(weight: "semibold")[Stack:] Go, AKS, Strimzi/Kafka, Argo CD, Airflow, Spark, Terraform, Helm\

      - Private client: built taxi-terminal telemetry ingestion for compliance and fraud analysis.\
        #text(weight: "semibold")[Stack:] Go, AKS, Kafka, PostgreSQL, Terraform, Helm\

      - LEGO: built internal IAM and identity-provider functionality.\
        #text(weight: "semibold")[Stack:] Azure Functions, SAML IdP, Python\

      - Private client: built a cloud video-conversion service.\
        #text(weight: "semibold")[Stack:] C++20, CMake/Ninja, Go, gRPC-Gateway, FFmpeg, EKS, CloudWatch, Airflow, Nix, Terranix, Helm\

      - Private client: built a custom video-calling service.\
        #text(weight: "semibold")[Stack:] C++23, CMake/Ninja, Asio, libdatachannel (WebRTC), Nix, Ansible
    ]

  ]
]
#resume-entry-divider()

#my-resume-entry(
  title: "Core Software Engineer",
  location: "Haarlem, Netherlands",
  date: "Nov 2019 – Sep 2021",
  description: "AIMMS B.V.",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    Built core platform and migration tooling as a member of the AIMMS PRO core team:
    #pad(left: 1em)[
      - Migrated Java and Scala backend services from ECS to AKS; configured landing-zone RBAC, bootstrapped Terraform state, and delivered supporting IaC.\

      - Built a C++17 microservice template with an API-first protobuf DSL for gRPC and REST surfaces; contributed to Conan/Artifactory developer-platform infrastructure; built PoCs and delivered demos for the tooling.\

      - Improved cost efficiency and throughput predictability for compute-heavy, nondeterministic optimization workloads by implementing Kubernetes-native bin packing with resource requests/limits, affinity, priority classes, pre-warmed capacity, Cluster Autoscaler, and taints/tolerations.

      - Built migration tooling for sensitive, business-critical customer data in Amazon RDS and a declarative-schema CRUD generator for administrative and internal tools.
    ]

    #pad[
      #text(weight: "semibold")[Stack:] ECS, EC2, RDS, CloudWatch, Go, Python, Java, Scala, C++17, TypeScript, React, Conan, Artifactory, CMake, Ninja, gRPC-Gateway, Kubernetes (AKS), Application Insights, Terraform, Helm
    ]
  ]
]
#resume-entry-divider()

#my-resume-entry(
  title: "Senior Software Engineer",
  location: "Amsterdam, Netherlands",
  date: "Jan 2018 – Oct 2019",
  description: "HVR Software (acquired by Fivetran)",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    #pad(left: 1em)[
      - Extended HVR's high-throughput, log-based replication engine; reverse-engineered Oracle histogram metadata for custom sharding and built a Go REST service for cloud integration.\

      - Rewrote a core feature-flag transpiler used in HVR's CI/CD pipeline, reducing runtime from over one minute to five seconds on a critical build path.
    ]

    #pad[
      #text(weight: "semibold")[Stack:] C99, Python, Go, RDBMS and big-data integrations, Oracle (histogram internals), Airflow, Spark
    ]
  ]
]
#resume-entry-divider()

#my-resume-entry(
  title: "Software Engineer",
  location: "Eindhoven, Netherlands",
  date: "2017",
  description: "Mapscape B.V.",
)
#resume-item[
  Implemented backend components of the Mapscape NDS compiler for raw map data parsing and introduced parallel parsing to reduce processing time.\
  #pad[#text(weight: "semibold")[Stack:] C++11/14, Boost, GTest, SQLite, shell, Python, Airflow]
]
#resume-entry-divider()

#my-resume-entry(
  title: "Senior Software Engineer",
  location: "St. Petersburg, Russia",
  date: "2014 – 2017",
  description: "New Cloud Technologies",
)
#[
  #set par(spacing: 1.0em)
  #resume-item[
    Built collaboration-engine features for an on-premises office suite and developed its spreadsheet client for Samsung Tizen.
    #pad(left: 1em)[
      - Independently built a cross-platform FreeType-based font-rendering engine with subpixel positioning for scalable document layouts and integrated it into a large enterprise codebase.

      - Developed advanced spreadsheet editing for Samsung Tizen using a declarative, compile-time state machine to avoid dynamic dispatch overhead and resolve editing edge cases observed in competing web suites.
    ]

    #pad[#text(weight: "semibold")[Stack:] C++14, CMake, Emscripten, Objective-C, Qt, SWIG, Kubernetes]
  ]
]

#resume-entry-divider()

#my-resume-entry(
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
      - Designed an Asio-based service framework and implemented all C++11 banking services, including multi-stage, fault-tolerant transactions.\

      - Protected financial state with append-only storage, two-factor transactions, circuit breakers, alerting, rollback paths, and extensive testing.\

      - Shipped the zero-to-one production release in under two months with a three-engineer team, owning the C++ subsystem end to end.
    ]

    #pad[#text(weight: "semibold")[Stack:] C++11, Core Java, Groovy, Ruby (Chef)]
  ]
]

#par(spacing: 1em)[]

= Education
#my-resume-entry(
  title: "B.Sc. in Computer Science and Engineering",
  location: "Novosibirsk, Russia",
  date: "2002 – 2007",
  description: "Novosibirsk State Technical University (NSTU)",
)

#par(spacing: 2.0em)[]

#my-resume-entry(
  title: "Previous work history",
  date: "2005 – 2014",
  description: "Available upon request",
)
