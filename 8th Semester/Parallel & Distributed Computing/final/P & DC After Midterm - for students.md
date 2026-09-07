# Parallel & Distributed Computing - After Midterm

---

## Interconnection Networks For Parallel Processors

In parallel computing, Interconnection networks are very crucial for efficient communication among all processors within a similar system.

There are two main approaches for interconnecting these processors: static high-speed interconnection network and Dynamic interconnection network.

### Understanding Interconnection Networks

- High-speed represents a single processor or memory module or even a group of processors.
- High-speed computer Networks aim to provide fast and efficient performance (communication) among the nodes.
- The infrastructure supports high bandwidth and low latency.

### Types of Interconnection Network

#### Static Interconnection Network

Static interconnection networks are fixed. In unidirectional static interconnection network connections between nodes allow communication to occur in only one direction. So the data can be transmitted from one node to another node but not in the reverse direction. However, in a bidirectional static interconnection network, the connection between nodes allows communication to occur in both directions. The choice between both connections depends on the specific requirements of the parallel computing system.

There are also two types of Static Interconnection Network:

1. **Completely/Fully Connected Network**
   - **Connectivity:** Here each node is connected to every other node in the system, meaning there is a direct connection between any pair of nodes.
   - **Bandwidth and Latency:** So here is the highest degree of connectivity. Advantages of fully connected network are low latency and high bandwidth.
   - **Cost and Complexity:** As the number of wires required is more here, so it is expensive and much complex also.
   - **Data Transmission:** Since there are direct connections between processors, data transmits quickly and efficiently.
   - **Number of Links:** Number of links required here is n(n-1)/2. Here n = 6, so total links will be 15 and each node links with (n-1) = (6-1) = 5 other nodes.

2. **Limited Connection Network**
   It is also known as partial network, each node is connected by a subset of other nodes. It offers advantages such as reduced cost and complexity, optimized communication pattern and improved scalability. But they might introduce limitations in terms of bandwidth and fault tolerance compared to Completely or Fully connected network.

   **Examples:**
   1. Ring Network
   2. Tree Network
   3. Linear array Network
   4. Mesh Network
   5. Hypercube Network

   **Linear Network:**
   In a linear network, every system is connected linearly or in a single row fashion where if one system fails every system afterwards will stop working.

   **Ring Network:**
   There is no major difference between linear and ring network; the only difference between linear and ring is that the last node is connected to the first node in Ring Network.

   **Three Cube Network:**
   A "Three Cube Network" typically refers to a network topology used in computer networking and data center design. This topology involves three switches (or cubes) interconnected in a specific way to provide redundancy and fault tolerance.

   **Two Dimensional Network:**
   A two-dimensional network, in the context of computer networking and parallel computing, typically refers to a network topology where devices or nodes are arranged in a grid-like fashion. This type of network structure is commonly used in various distributed computing environments for efficient communication between nodes.

   **Key points regarding Limited Connection Network:**
   - **Connectivity:** Here we notice a lower number of connections per node compared to completely or fully connected network.
   - **Communication Paths:** Communication between some nodes may be routed through other nodes in this network.
   - **Scalability:** It offers good scalability as the number of connections per node typically grows.
   - **Cost and Complexity:** Limited Connection Networks have lower cost and complexity.
   - **Bandwidth and Latency:** Limited bandwidth compared to completely connected networks, as there are a limited number of connections.

#### Dynamic Interconnection Network

Unlike Static Interconnection Network, where connections are fixed between nodes, it enables the dynamic reconfiguration of connections to adapt to changing communication requirements.

**Some key points about Dynamic Interconnection Network:**
1. Reconfiguration
2. Switching Mechanisms
3. Flexibility
4. Scalability
5. Fault Tolerance
6. Communication Efficiency

---

## Code Optimization Techniques for Multi-Core CPUs and GPUs

### 1. Introduction to Code Optimization

Code optimization refers to the systematic improvement of software to achieve higher performance, reduced execution time, and efficient utilization of hardware resources.

In modern computing systems, especially multi-core CPUs and GPUs, performance is no longer limited by hardware speed alone but by how efficiently software is designed to exploit parallelism and memory hierarchy.

Optimization is essential in high-performance computing domains such as artificial intelligence, scientific simulations, image processing, big data analytics, and real-time systems.

Without proper optimization, even powerful hardware can remain underutilized due to bottlenecks in memory access, synchronization, or poor parallel design.

### 2. Goals of Code Optimization

The primary goals of code optimization in parallel systems include improving execution speed, maximizing throughput, reducing memory latency, minimizing energy consumption, and ensuring scalability.

Another important goal is achieving balanced workload distribution so that all processing units are effectively utilized without leaving some cores idle while others are overloaded.

Optimization also aims to reduce communication overhead between processing units and improve cache utilization, which plays a crucial role in modern architectures where memory speed is significantly slower than processor speed.

### 3. Parallelism in Optimization

Modern optimization techniques rely heavily on exploiting different types of parallelism.

- **Instruction-level parallelism** allows multiple instructions to be executed simultaneously within a CPU pipeline.
- **Thread-level parallelism** enables multiple threads to execute concurrently on multi-core processors.
- **Data-level parallelism** applies the same operation to multiple data elements simultaneously, which is widely used in vector processing and GPU computing.
- **Task-level parallelism** distributes independent tasks across different processing units to improve overall throughput.

Effective optimization requires identifying the correct type of parallelism suitable for a given application and hardware architecture.

### 4. Code Optimization in Multi-Core CPUs

Multi-core CPUs consist of multiple processing units that share memory and caches. Optimization in such systems focuses on efficient thread management and reducing overhead caused by synchronization and communication.

A major technique is **thread parallelism**, where a large problem is divided into smaller tasks assigned to multiple threads. Proper thread management ensures that all cores are utilized effectively. However, excessive thread creation can lead to overhead, so thread pooling is commonly used.

**Load balancing** is another critical factor. If tasks are unevenly distributed, some cores may finish early and remain idle while others continue processing. Dynamic scheduling techniques help in distributing workloads more efficiently compared to static assignment.

**Memory optimization** plays a crucial role in multi-core systems. Cache memory is significantly faster than main memory, so programs must be designed to improve cache locality. **Temporal locality** ensures recently accessed data is reused, while **spatial locality** ensures nearby memory locations are accessed together. Techniques such as loop tiling, loop fusion, and loop interchange improve cache performance and reduce cache misses.

**False sharing** is a performance issue where multiple threads modify variables that reside in the same cache line, causing unnecessary cache invalidation. This problem is addressed by padding data structures and aligning memory properly.

**Synchronization** is necessary for correctness but reduces performance if overused. Locks, semaphores, and barriers introduce waiting time. Therefore, optimized programs minimize critical sections and use lock-free or atomic operations where possible.

### 5. Code Optimization in GPU Systems

Graphics Processing Units (GPUs) are designed for massive parallelism and consist of thousands of lightweight threads. GPU optimization focuses on maximizing throughput rather than minimizing latency.

The execution model of GPUs is based on **grids, blocks, warps, and threads**. A warp typically consists of 32 threads executing the same instruction simultaneously. Efficient GPU programming ensures that threads within a warp follow the same execution path to avoid divergence.

**Warp divergence** occurs when threads within a warp follow different branches of execution due to conditional statements. This leads to serialized execution and reduced performance. Therefore, minimizing branching inside performance-critical sections is essential.

**Memory coalescing** is one of the most important optimization techniques in GPUs. When adjacent threads access adjacent memory locations, memory transactions are combined into fewer operations, significantly improving bandwidth utilization. Poor memory access patterns can severely degrade performance.

**Shared memory** is used in GPUs to enable fast communication between threads within a block. However, improper usage can cause bank conflicts, which reduce performance. Efficient access patterns and memory padding help avoid such conflicts.

**Occupancy** refers to how many warps are active on a multiprocessor at a given time. Higher occupancy helps hide memory latency and improves performance. However, excessive register usage per thread can reduce occupancy, so a balance must be maintained.

**Data transfer** between CPU and GPU is often a major bottleneck. Optimization techniques include reducing host-device communication, using pinned memory for faster transfer, and overlapping computation with data transfer using asynchronous streams.

**Kernel fusion** is another technique where multiple GPU kernels are combined into a single kernel to reduce launch overhead and improve data locality.

---

## Routing and Switching in Parallel and Distributed Systems

### 1. Introduction

Routing and switching are fundamental concepts in parallel and distributed systems that determine how data is transmitted between processors, nodes, or computing devices. In such systems, multiple processing units need to communicate efficiently to perform computations collaboratively. Since communication overhead can significantly affect system performance, efficient routing and switching mechanisms are essential for achieving high speed, scalability, and reliability.

In parallel systems such as multi-core processors and GPUs, routing occurs within the chip or between cores, while in distributed systems, routing takes place over networks such as clusters, data centers, or cloud infrastructures.

### 2. Switching in Parallel and Distributed Systems

Switching refers to the mechanism by which data is transferred from a source to a destination through intermediate nodes or switches. It determines how communication paths are established and how messages are handled during transmission.

Efficient switching improves system throughput, reduces latency, and ensures better utilization of network resources. Poor switching strategies can lead to congestion, delays, and packet loss.

#### 2.1 Circuit Switching

Circuit switching establishes a dedicated communication path between the source and destination before data transfer begins. Once the path is established, all data follows the same route until the communication ends.

This method provides predictable performance because resources remain reserved during communication. However, it is inefficient for bursty traffic because reserved resources remain unused when data is not being transmitted.

#### 2.2 Packet Switching

In packet switching, data is divided into small packets that are transmitted independently across the network. Each packet may take a different route to reach the destination, where they are reassembled.

This approach is highly efficient because network resources are shared dynamically among multiple users. However, it may introduce variable delays and requires additional overhead for packet ordering and error handling.

#### 2.3 Message Switching

Message switching transmits the entire message from one node to another without dividing it into packets. Each intermediate node stores the complete message before forwarding it to the next node.

Although this method does not require a dedicated path, it introduces high latency due to storage and forwarding delays at each node.

#### 2.4 Switching Techniques in Modern Systems

Modern interconnection networks use advanced switching techniques such as **store-and-forward switching**, **cut-through switching**, and **wormhole switching**.

In store-and-forward switching, each node waits until the entire packet is received before forwarding it. This ensures reliability but increases delay.

Cut-through switching reduces latency by forwarding packets as soon as the header is processed, without waiting for the entire packet.

Wormhole switching further improves performance by dividing packets into smaller flits and allowing them to move through the network in a pipeline fashion, significantly reducing latency in high-performance systems.

### 3. Routing in Parallel and Distributed Systems

Routing refers to the process of determining the path that data packets take from the source node to the destination node. Efficient routing is critical for minimizing communication delay, avoiding congestion, and ensuring balanced network utilization.

Routing is widely used in multi-core architectures, network-on-chip systems, supercomputers, and large-scale distributed systems such as cloud computing platforms.

#### 3.1 Objectives of Routing

The primary objectives of routing are to minimize communication delay, reduce network congestion, ensure fault tolerance, and maximize throughput. Routing algorithms must also ensure scalability so that performance does not degrade as the number of nodes increases.

#### 3.2 Deterministic Routing

In deterministic routing, the path between source and destination is fixed and does not change based on network conditions. This makes the system simple and predictable, but it cannot adapt to congestion or failures.

Examples include dimension-order routing such as XY routing in mesh networks, where packets first travel along one dimension and then another.

#### 3.3 Adaptive Routing

Adaptive routing dynamically changes the path based on network conditions such as congestion or link failures. This allows better performance and fault tolerance compared to deterministic routing. However, adaptive routing is more complex and requires additional hardware and control logic to monitor network conditions.

#### 3.4 Oblivious Routing

Oblivious routing selects paths without considering current network conditions. Paths are chosen randomly or based on predefined probabilities. While simpler than adaptive routing, it may not perform optimally under heavy traffic.

#### 3.5 Deadlock in Routing

Deadlock occurs when packets are permanently blocked because each packet is waiting for resources held by another packet. This leads to a situation where no packet can progress. Deadlock is a serious issue in interconnection networks and must be prevented through careful routing design.

Common techniques for deadlock prevention include virtual channels, resource ordering, and deadlock-free routing algorithms.

#### 3.6 Routing in Network-on-Chip (NoC)

In Network-on-Chip architectures, routing plays a crucial role in connecting multiple cores within a single chip. NoC routing must be highly efficient due to limited chip area and power constraints.

Common NoC routing techniques include deterministic routing for simplicity and adaptive routing for performance improvement. Virtual channels are often used to avoid deadlock and improve bandwidth utilization.

#### 3.7 Routing in Distributed Systems

In distributed systems, routing occurs over large-scale networks such as clusters and cloud infrastructures. Routing protocols ensure that data is transmitted efficiently across geographically distributed nodes.

Examples include message passing systems such as MPI, where routing decisions are handled by the communication layer. In cloud systems, routing also involves load balancing across servers and data centers.

### 4. Performance Considerations in Routing and Switching

The performance of routing and switching mechanisms is measured in terms of **latency**, **throughput**, **bandwidth utilization**, and **scalability**. Latency refers to the time taken for data to travel from source to destination, while throughput refers to the amount of data successfully transmitted per unit time.

Efficient routing and switching aim to minimize latency while maximizing throughput. However, trade-offs often exist between simplicity and performance. For example, deterministic routing is simple but less flexible, whereas adaptive routing provides better performance but increases complexity.

---

## Butterfly Network in Distributed System

A Butterfly Network is a type of network topology used in distributed system computing. It features efficient data routing and parallel processing capabilities. The network is scalable and supports high-performance applications. Its structure resembles butterfly wings, offering predictable performance.

### What is Butterfly Network?

A Butterfly Network is a type of interconnection network used in parallel computing. It is named for its butterfly-like diagram that illustrates its structure. This network is highly efficient and supports high-performance computing due to its unique design. The Butterfly Network consists of multiple stages, each with nodes that connect systematically.

- Each node in a Butterfly Network is linked to two nodes in the next stage. This ensures that every input can reach every output through a series of predefined paths.
- The design enables data to be transferred with minimal delay and high throughput.
- One of the key features of the Butterfly Network is its logarithmic distance between nodes. This means that the number of stages grows logarithmically with the number of inputs.
- Consequently, data can traverse the network quickly, making it ideal for applications requiring fast communication.

### Basic Principles of Butterfly Network

The Butterfly Network operates on fundamental principles that ensure its efficiency and effectiveness in distributed systems. These principles guide its design and functionality, making it suitable for high-performance computing.

Below are the basic principles that collectively contribute to the Butterfly Network's ability to provide fast, reliable, and scalable communication in distributed computing environments.

- **Fixed Paths:** The network uses predefined routes for data packets. This ensures that data follows consistent and predictable paths, which helps in avoiding routing conflicts and optimizing performance.
- **Logarithmic Distance:** The distance between nodes increases logarithmically as the network grows. This characteristic reduces the number of hops needed for data to travel, minimizing latency and improving overall communication speed.
- **Parallelism:** The Butterfly Network supports multiple simultaneous data transfers. This parallelism allows the network to handle a high volume of data traffic efficiently, boosting the system's throughput and performance.
- **Scalability:** The network is designed to be easily scalable. Adding more nodes or stages is done without significant redesign, making it adaptable to growing data processing needs.
- **Deterministic Routing:** The routing paths in the Butterfly Network are fixed and predefined. This deterministic nature ensures that each data packet reaches its destination reliably, which is critical for applications requiring precise data delivery.

### Structure and Topology of Butterfly Network in Distributed Systems

The Butterfly Network is defined by its unique structure and multi-stage interconnection topology. This design allows efficient and predictable data routing, making it suitable for high-performance computing applications.

- The Butterfly Network comprises several stages. Each stage contains nodes that connect to nodes in the subsequent stage.
- Nodes in each stage are linked to multiple nodes in the next stage. These connections ensure every input can reach every output through specific routes.
- The number of stages is logarithmic relative to the number of inputs. This logarithmic increase ensures efficient scaling and data transfer.
- The network's structure is symmetrical, resembling butterfly wings. This symmetry simplifies the routing process and enhances predictability.
- Each data packet follows a predetermined path through the stages. Fixed paths ensure consistent and reliable data transmission.
- The network includes multiple paths between nodes. These redundant paths enhance fault tolerance and reliability.
- Connections between nodes follow a specific pattern. This pattern ensures that data can traverse the network efficiently.
- The network is organized into layers, with each layer representing a stage. This layered design simplifies the network's structure and management.

### Routing Algorithms in Butterfly Network

Routing algorithms in the Butterfly Network are crucial for determining efficient paths for data packets. These algorithms ensure that data is transmitted reliably and quickly across the network's nodes. The Butterfly Network's unique topology requires specialized routing methods to optimize performance and minimize latency.

Below are the routing algorithms that are integral to the Butterfly Network's functionality:

- **Deterministic Routing:** Deterministic routing uses fixed paths for data packets. Each source-destination pair has a predefined route, ensuring consistent performance. This predictability simplifies network management and troubleshooting.
- **Adaptive Routing:** Adaptive routing adjusts paths based on network conditions. It monitors traffic and reroutes data to avoid congestion. This dynamic approach improves fault tolerance and overall network efficiency.
- **Minimal Routing:** Minimal routing aims to minimize the number of hops a packet takes. It selects the shortest path between the source and destination. This reduces latency and speeds up data transmission.
- **Non-Minimal Routing:** Non-minimal routing allows packets to take longer paths. It avoids congested areas by rerouting through less busy nodes. This can be beneficial in highly trafficked networks, reducing delays caused by congestion.
- **Fault-Tolerant Routing:** Fault-tolerant routing ensures data delivery despite network failures. It uses redundant paths to reroute packets if a node or link fails. This enhances the network's reliability and robustness.

### Communication Patterns in Butterfly Network

The Butterfly Network supports various communication patterns that enhance its efficiency and performance. These patterns dictate how data is transferred between nodes, ensuring effective use of the network's resources. Each pattern serves specific purposes and is suitable for different types of computational tasks.

These are the communication patterns that optimize the use of the Butterfly Network's capabilities:

- **One-to-One Communication:** This pattern involves direct data transfer between two nodes. It is straightforward and ensures quick, efficient communication.
- **One-to-All Communication:** A single node sends data to all other nodes in the network. This pattern is used for broadcasting information. It ensures that every node receives the same data simultaneously.
- **All-to-One Communication:** Multiple nodes send data to a single destination node. This pattern is often used for data aggregation tasks. It collects data from various sources for centralized processing.
- **All-to-All Communication:** Every node sends data to every other node in the network. This pattern is crucial for tasks that require full data sharing. It ensures comprehensive data distribution across the network.
- **Many-to-Many Communication:** Groups of nodes communicate simultaneously with other groups of nodes. This pattern supports complex interaction scenarios. It is useful in collaborative computing environments.
- **Pipeline Communication:** Data is processed and passed through a sequence of nodes. Each node performs a specific task on the data. This pattern is efficient for tasks that can be divided into stages.

### Advantages of Butterfly Network in Distributed Systems

These are the advantages that make the Butterfly Network an ideal choice for distributed systems:

- **High Efficiency:** The structured pathways ensure efficient data routing. This minimizes congestion and reduces communication delays.
- **Scalability:** The network can easily scale by adding more nodes. This flexibility supports the growth of distributed systems without major redesign.
- **Low Latency:** The logarithmic distance between nodes minimizes communication latency. This ensures fast data transfers, crucial for time-sensitive applications.
- **Parallel Processing:** Supports multiple simultaneous data transfers. This parallelism significantly enhances the overall performance of the network.
- **Predictable Performance:** Deterministic routing paths provide consistent and reliable communication. This predictability is essential for applications requiring stable performance.
- **Fault Tolerance:** The network handles node or link failures gracefully. Redundant paths ensure continuous data transfer even during failures.

### Challenges of Butterfly Network in Distributed System

While the Butterfly Network offers numerous advantages, it also presents several challenges. These are the challenges that can impact the network's implementation and operation in distributed systems:

- **Complex Design:** The Butterfly Network's intricate structure is difficult to design and implement. This complexity requires advanced planning and expertise.
- **High Initial Costs:** Setting up a Butterfly Network can be expensive. The cost of hardware and configuration is significant.
- **Maintenance Difficulties:** Maintaining the network's numerous connections and nodes is challenging. Regular checks and updates are necessary to ensure smooth operation.
- **Fault Management:** Handling node or link failures can be complex. Failures disrupt multiple paths, requiring sophisticated fault-tolerant mechanisms.
- **Limited Flexibility:** The network's predefined paths limit flexibility. Adjusting or reconfiguring routes is not straightforward and requires significant effort.
- **Scalability Issues:** Although scalable, the network may face issues as it grows. Larger networks increase complexity and potential points of failure.

### Use Cases of Butterfly Network in Distributed System

Below are some of the key use cases for the Butterfly Network in distributed systems:

- **High-Performance Computing (HPC):** The Butterfly Network is ideal for supercomputers. It ensures efficient data transfer and minimizes latency, enhancing computational power.
- **Data Centers:** Large data centers use Butterfly Networks for server communication. It supports scalable and efficient data handling across numerous servers.
- **Scientific Simulations:** Used in complex scientific simulations that require high-speed data exchanges. It supports simulations in fields like physics, chemistry, and climate science.
- **Big Data Analytics:** Handles large volumes of data efficiently. The network is used in big data applications for quick and reliable data processing.
- **Real-Time Applications:** Suitable for real-time applications requiring fast data transfers. The network ensures low latency, critical for applications like online gaming and financial trading.
- **Telecommunications:** Used in telecom networks for efficient data routing. It supports high-speed communication, enhancing service quality.
- **Cloud Computing:** Facilitates data transfer in cloud computing environments. The network supports scalable and reliable cloud services.

---

## Z-Transformation in Distributed Systems

The Z-transform is a mathematical tool from digital signal processing and control systems, but it also appears in several areas of distributed systems, especially where systems evolve in discrete time steps.

At a high level, the Z-transform helps engineers analyze:
- delays
- feedback loops
- stability
- queue behavior
- synchronization
- discrete-time state changes

### What is the Z-Transform?

For a discrete sequence x[n], the Z-transform converts it into a frequency-domain representation:

`X(z) = Σ x[n] z^(-n)`

It plays a role similar to the Laplace transform for continuous systems.

### Why Distributed Systems Need It

Distributed systems are naturally discrete-event systems:
- messages arrive at intervals
- clocks tick discretely
- retries happen after timeouts
- queues change step-by-step
- consensus progresses in rounds

Because of this, many distributed algorithms can be modeled as difference equations, which are ideal for Z-transform analysis.

### Main Uses of Z-Transformation in Distributed Systems

#### 1. Network Delay and Congestion Analysis

In packet-switched networks, packet queues evolve over discrete time intervals.

Example queue equation: `q[n+1] = max(0, q[n] + a[n] - d[n])`

#### 2. Distributed Control Systems

Large-scale distributed systems often use feedback control:
- distributed databases
- load balancing

**Example:**
A cloud service adjusts server count every few seconds. Z-transform helps determine:
- whether scaling oscillates
- convergence speed
- stability under delays

#### 3. Clock Synchronization

Protocols like:
- NTP
- PTP
- distributed sensor networks

use recursive clock correction algorithms.

#### 4. Reliability and Failure Recovery

Retry mechanisms are discrete-time recursive systems.

---

## Cloud Computing

### Introduction to Cloud Computing

#### What is Cloud Computing?

Cloud computing is the delivery of computing services such as servers, storage, databases, networking, software, and analytics over the internet ("the cloud").

Instead of owning physical hardware or data centers, users can access technology services on demand from cloud providers.

#### Definition

According to National Institute of Standards and Technology (NIST):

> Cloud computing is a model for enabling convenient, on-demand network access to a shared pool of configurable computing resources.

#### Characteristics of Cloud Computing

| Characteristic | Description |
|---|---|
| On-Demand Self-Service | Users can access resources whenever needed |
| Broad Network Access | Services available through the internet |
| Resource Pooling | Shared resources among multiple users |
| Rapid Elasticity | Resources scale up/down quickly |
| Measured Service | Pay only for what is used |

#### Advantages of Cloud Computing

- Cost reduction
- Scalability and flexibility
- High availability
- Faster deployment
- Data backup and disaster recovery
- Global accessibility

#### Types of Cloud Computing

Cloud computing is commonly divided into two categories:
1. Deployment Models
2. Service Models

### Deployment Models of Cloud Computing

#### 1. Public Cloud

A public cloud is owned and managed by third-party cloud providers and services are delivered over the internet.

**Examples:**
- Amazon Web Services (AWS)
- Google Cloud
- Microsoft Azure

**Features:**
- Shared infrastructure
- Pay-as-you-go pricing
- Highly scalable
- Accessible globally

**Advantages:**
- Low cost
- No hardware maintenance
- Easy scalability

**Disadvantages:**
- Less control
- Security concerns for sensitive data

#### 2. Private Cloud

A private cloud is dedicated to a single organization.

**Features:**
- Greater control
- Enhanced security
- Customized infrastructure

**Advantages:**
- Better privacy
- High security
- Compliance support

**Disadvantages:**
- Expensive
- Requires management expertise

#### 3. Hybrid Cloud

A hybrid cloud combines public and private clouds.

**Features:**
- Data and applications move between clouds
- Flexible deployment

**Advantages:**
- Better scalability
- Improved security
- Cost optimization

**Disadvantages:**
- Complex management
- Integration challenges

#### 4. Community Cloud

A cloud shared by several organizations with similar requirements.

**Example:**
Used by:
- universities
- research institutions
- government departments

### Service Models in Cloud Computing

#### 1. Infrastructure as a Service (IaaS)

Provides virtualized computing resources over the internet.

**Services Include:**
- Virtual machines
- Storage
- Networks

**Examples:**
- Amazon Web Services EC2
- Microsoft Azure Virtual Machines

**Benefits:**
- High flexibility
- Full infrastructure control

#### 2. Platform as a Service (PaaS)

Provides a platform for developing and deploying applications.

**Services Include:**
- Development tools
- Databases
- Operating systems

**Examples:**
- Google Cloud App Engine
- Microsoft Azure App Services

**Benefits:**
- Faster development
- Reduced infrastructure management

#### 3. Software as a Service (SaaS)

Provides software applications through the internet.

**Examples:**
- Google Workspace
- Microsoft 365

**Benefits:**
- Easy access
- No installation required
- Automatic updates

### Major Public Cloud Platforms

#### 1. Amazon Web Services (AWS)

Amazon Web Services is the world's leading cloud platform.

**Services:**
- EC2 (Virtual Servers)
- S3 (Storage)
- RDS (Databases)
- Lambda (Serverless Computing)

**Features:**
- Global infrastructure
- High scalability
- Large service portfolio

#### 2. Google Cloud Platform (GCP)

Google Cloud provides cloud services powered by Google infrastructure.

**Services:**
- Compute Engine
- Cloud Storage
- BigQuery
- Kubernetes Engine

**Features:**
- Strong AI and analytics tools
- Fast networking
- Container support

#### 3. Microsoft Azure

Microsoft Azure is widely used in enterprises.

**Services:**
- Azure Virtual Machines
- Azure SQL Database
- Azure Active Directory

**Features:**
- Strong integration with Microsoft products
- Hybrid cloud support
- Enterprise security

### Resource Management in Cloud Computing

Resource management ensures efficient allocation and use of cloud resources.

**Main Functions:**

| Function | Description |
|---|---|
| Resource Allocation | Assigning CPU, memory, and storage |
| Load Balancing | Distributing workloads evenly |
| Virtualization | Creating virtual resources |
| Auto Scaling | Automatically increasing/decreasing resources |
| Monitoring | Tracking system performance |

**Benefits:**
- Better performance
- Reduced costs
- Efficient utilization

### Security in Cloud Computing

Security is one of the most important aspects of cloud computing.

**Common Security Risks:**
- Data breaches
- Unauthorized access
- Malware attacks
- Data loss
- Insider threats

**Cloud Security Measures:**

| Security Measure | Purpose |
|---|---|
| Encryption | Protects data |
| Authentication | Verifies users |
| Firewalls | Blocks unauthorized access |
| Backup & Recovery | Prevents data loss |
| Access Control | Restricts permissions |

**Shared Responsibility Model:**
In cloud computing:
- Cloud providers secure the infrastructure
- Customers secure their applications and data

This is known as the **Shared Responsibility Model**.

### Applications of Cloud Computing

- Online storage
- Web hosting
- Video streaming
- E-learning
- Big data analytics
- Artificial Intelligence
- Internet of Things (IoT)

---

## Algorithms for Systems of Linear Equations

A system of linear equations is a collection of equations involving the same set of variables.

**General Form:**

a₁₁x₁ + a₁₂x₂ + ... + a₁ₙxₙ = b₁
a₂₁x₁ + a₂₂x₂ + ... + a₂ₙxₙ = b₂
...
aₘ₁x₁ + aₘ₂x₂ + ... + aₘₙxₙ = bₘ

These systems are important in:
- Engineering simulations
- Machine learning
- Computer graphics
- Network analysis
- Scientific computing

### 2.1 Gaussian Elimination

Gaussian Elimination is a direct method used to solve linear systems.

**Steps:**
1. Convert matrix into upper triangular form.
2. Use back substitution to calculate unknown variables.

**Example:**

Given:
2x + 4y = 10
3x + 5y = 11

**Algorithm:**
1. Select pivot element.
2. Eliminate lower entries.
3. Repeat until upper triangular matrix is formed.
4. Apply back substitution.

**Advantages:**
- Accurate for small systems
- Deterministic solution

**Disadvantages:**
- Computationally expensive for large matrices
- Poor scalability in sequential systems

### 2.2 LU Decomposition

LU decomposition factors matrix (A) into:

**A = LU**

Where:
- (L) = lower triangular matrix
- (U) = upper triangular matrix

**Benefits:**
- Efficient for solving multiple systems with same coefficient matrix
- Useful in parallel computing

**Applications:**
- Scientific computing
- Numerical simulations
- Optimization problems

### 2.3 Parallel Processing of Linear Equations

Parallel algorithms divide computations among multiple processors.

**Parallel Gaussian Elimination:**

Tasks performed in parallel:
- Row operations
- Matrix partitioning
- Elimination processes

**Benefits:**
- Reduced execution time
- Better utilization of hardware
- Suitable for large matrices

**Challenges:**
- Processor synchronization
- Communication overhead
- Load balancing

### Distributed Memory Systems

In distributed systems:
- Matrix blocks are distributed among nodes
- Nodes communicate using message passing
- MPI (Message Passing Interface) is commonly used

---

## 3. IoT Applications: RFID

### 3.1 Introduction to RFID

RFID (Radio Frequency Identification) is a wireless technology used for automatic identification and tracking of objects.

RFID uses radio waves to communicate between tags and readers.

It is a major technology in the Internet of Things (IoT).

### 3.2 Components of RFID Systems

1. **RFID Tag** - Stores information about an object.
   - Types:
     - Passive tags
     - Active tags
     - Semi-passive tags

2. **RFID Reader** - Reads data from RFID tags.

3. **Antenna** - Transmits radio signals between reader and tag.

4. **Database/System** - Stores and processes collected information.

### 3.3 Working Principle of RFID

1. Reader sends radio signal.
2. RFID tag receives signal.
3. Tag transmits stored data.
4. Reader receives and forwards data to database.

### 3.4 Applications of RFID in IoT

1. **Supply Chain Management**
   - Inventory tracking
   - Shipment monitoring
   - Warehouse automation

2. **Healthcare**
   - Patient tracking
   - Medicine identification
   - Hospital asset management

3. **Smart Transportation**
   - Toll collection
   - Vehicle tracking
   - Smart parking systems

4. **Retail Systems**
   - Automated billing
   - Product tracking
   - Theft prevention

5. **Smart Agriculture**
   - Livestock tracking
   - Crop monitoring
   - Equipment management

### 3.5 Advantages of RFID

- Fast identification
- Contactless communication
- Real-time tracking
- Increased automation
- Reduced human effort

### 3.6 Challenges of RFID

- Security concerns
- Privacy issues
- High implementation cost
- Signal interference
- Limited reading range

---

## 4. Strassen's Matrix Multiplication

Matrix multiplication is an important operation in:
- Scientific computing
- Artificial intelligence
- Computer graphics
- Parallel processing

### 4.1 Traditional Matrix Multiplication

For two matrices:
**C = A × B**

Traditional multiplication requires:
C[i][j] = Σ A[i][k] × B[k][j]

This becomes inefficient for large matrices.

### 4.2 Strassen's Algorithm

Strassen's algorithm reduces the number of multiplications. Instead of 8 multiplications for 2×2 matrices, it uses only 7 multiplications.

**Divide and Conquer Approach**

Matrices are divided into submatrices.

For matrices:

A = [[A11, A12], [A21, A22]]
B = [[B11, B12], [B21, B22]]

Seven products are computed:

M1 = (A11 + A22) × (B11 + B22)
M2 = (A21 + A22) × B11
M3 = A11 × (B12 - B22)
M4 = A22 × (B21 - B11)
M5 = (A11 + A12) × B22
M6 = (A21 - A11) × (B11 + B12)
M7 = (A12 - A22) × (B21 + B22)

**Result matrix:**

C11 = M1 + M4 - M5 + M7
C12 = M3 + M5
C21 = M2 + M4
C22 = M1 - M2 + M3 + M6

### 4.3 Complexity Analysis

| Method | Complexity |
|---|---|
| Traditional multiplication | O(n³) |
| Strassen's algorithm | O(n²·⁸¹) |

**Advantages:**
- Faster for large matrices
- Suitable for parallel processing

**Disadvantages:**
- Complex implementation
- More memory usage
- Less efficient for very small matrices

### 4.4 Python Implementation of Strassen's Matrix Multiplication

```python
import numpy as np

# Function to split matrix into quarters
def split(matrix):
    row, col = matrix.shape
    row2, col2 = row // 2, col // 2
    return matrix[:row2, :col2], matrix[:row2, col2:], \
           matrix[row2:, :col2], matrix[row2:, col2:]

def strassen(A, B):
    # Base case
    if len(A) == 1:
        return A * B

    # Split matrices
    A11, A12, A21, A22 = split(A)
    B11, B12, B21, B22 = split(B)

    # Compute M1 to M7
    M1 = strassen(A11 + A22, B11 + B22)
    M2 = strassen(A21 + A22, B11)
    M3 = strassen(A11, B12 - B22)
    M4 = strassen(A22, B21 - B11)
    M5 = strassen(A11 + A12, B22)
    M6 = strassen(A21 - A11, B11 + B12)
    M7 = strassen(A12 - A22, B21 + B22)

    # Compute result submatrices
    C11 = M1 + M4 - M5 + M7
    C12 = M3 + M5
    C21 = M2 + M4
    C22 = M1 - M2 + M3 + M6

    # Combine submatrices
    top = np.hstack((C11, C12))
    bottom = np.hstack((C21, C22))

    return np.vstack((top, bottom))

# Example matrices
A = np.array([[1, 2],
              [3, 4]])

B = np.array([[5, 6],
              [7, 8]])

result = strassen(A, B)

print("Result Matrix:")
print(result)
```

**Output:**
```
Result Matrix:
[[19 22]
 [43 50]]
```

---

## 5. Iterative Methods for Linear Systems

Iterative methods start with an initial approximation and repeatedly improve the solution.

These methods are efficient for:
- Large sparse matrices
- Parallel systems
- Scientific simulations

### 5.1 Jacobi Method

The Jacobi method computes new values using old values from previous iteration.

**Formula:**

xᵢ⁽ᵏ⁺¹⁾ = (1/aᵢᵢ) × (bᵢ - Σⱼ≠ᵢ aᵢⱼ × xⱼ⁽ᵏ⁾)

**Features:**
- Easy to parallelize
- Requires many iterations

**Advantages:**
- Simple implementation
- Suitable for distributed systems

**Disadvantages:**
- Slow convergence
- Requires diagonally dominant matrix

### 5.2 Gauss-Seidel Method

Gauss-Seidel uses newly computed values immediately.

**Formula:**

xᵢ⁽ᵏ⁺¹⁾ = (1/aᵢᵢ) × (bᵢ - Σⱼ<ᵢ aᵢⱼ × xⱼ⁽ᵏ⁺¹⁾ - Σⱼ>ᵢ aᵢⱼ × xⱼ⁽ᵏ⁾)

**Advantages:**
- Faster convergence than Jacobi
- Better accuracy

**Disadvantages:**
- Harder to parallelize
- Sequential dependency exists

### 5.3 Convergence Criteria

Iterative methods converge when:

||x⁽ᵏ⁺¹⁾ - x⁽ᵏ⁾|| < ε

Where:
- ε = small tolerance value

**Conditions for Convergence:**
- Matrix should be diagonally dominant
- Spectral radius should be less than 1

### 5.4 Parallelization of Iterative Methods

**Jacobi Method in Parallel Systems:**
Each variable update is independent. Therefore:
- Multiple processors can update values simultaneously.
- Excellent for GPU computing.
- Used in high-performance computing (HPC).

**Gauss-Seidel in Parallel Systems:**
More difficult because computations depend on updated values.

**Solutions:**
- Block decomposition
- Domain decomposition
- Hybrid methods

---

## 6. Applications in Parallel and Distributed Systems

### Scientific Computing
- Weather prediction
- Fluid dynamics
- Molecular simulations

### Machine Learning
- Optimization algorithms
- Neural network training

### Big Data Analytics
- Distributed processing frameworks
- Parallel matrix operations

### Computer Graphics
- Image processing
- 3D rendering
- Simulation systems

### IoT and Smart Systems
- RFID-based tracking
- Sensor data processing
- Distributed monitoring systems

---

## Numerical Problems

### Question 1:

Apply the concept of divide-and-conquer matrix multiplication (Strassen's Algorithm) in a parallel and distributed system environment. Explain how Strassen's method optimizes performance by minimizing multiplication operations compared to the traditional matrix multiplication approach. Then, propose a parallel execution model (using MPI or OpenMP-based task parallelism) for computing the product of two 2×2 matrices, highlighting how the intermediate computations can be assigned to different processing units for efficient execution.

**Answer:**

#### 1. Reduction in Multiplications (Strassen vs Classical Method)

In classical matrix multiplication for two 2×2 matrices:
- We need **8 multiplications**
- And **4 additions**

Strassen's Algorithm optimizes this by reducing:
- **8 multiplications → 7 multiplications**
- It increases additions/subtractions, which are computationally cheaper than multiplication.

This reduction improves performance, especially for large matrices in parallel systems where multiplication cost dominates.

---

## OpenMP Examples

### Example 1: Simple OpenMP Program (C)

```c
#include <stdio.h>
#include <omp.h>

int main() {

    #pragma omp parallel
    {
        printf("Hello from thread\n");
    }

    return 0;
}
```

**Output:**
If system has four main cores:
```
Hello from thread
Hello from thread
Hello from thread
Hello from thread
```

### Example 2: With Thread ID

```c
#include <stdio.h>
#include <omp.h>

int main() {

    int id;

    #pragma omp parallel private(id)
    {
        id = omp_get_thread_num();
        printf("Hello from thread %d\n", id);
    }

    return 0;
}
```

**Output:**
```
Hello from thread 0
Hello from thread 1
Hello from thread 2
Hello from thread 3
```

### Example 3: Loop Parallelization

```c
#include <stdio.h>
#include <omp.h>

int main() {

    #pragma omp parallel for
    for(int i = 0; i < 10; i++) {
        printf("i = %d\n", i);
    }
    return 0;
}
```

### Example 4: Complete C Program For Array Sum

```c
#include <stdio.h>
#include <omp.h>

int main() {

    int i, sum = 0;
    int arr[10] = {1,2,3,4,5,6,7,8,9,10};

    #pragma omp parallel for reduction(+:sum)
    for(i = 0; i < 10; i++) {
        sum = sum + arr[i];
    }

    printf("Total Sum = %d\n", sum);

    return 0;
}
```

**Code Explanation:**
Array: `arr[10] = {1,2,3,4,5,6,7,8,9,10}`

Expected sum: 1+2+...+10 = 55