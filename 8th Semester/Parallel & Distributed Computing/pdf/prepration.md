# Preparation Answers from notes4.md

This file answers the non-repeated questions from `practicequestions.md`.

Rule followed: when the answer is available in `notes4.md`, the relevant lecture/chapter is mentioned. Where a required concept is not available in `notes4.md`, it is clearly marked and then answered from general knowledge.

## Ignored repeated questions

- The Amdahl's Law question with 75% parallelizable code appears twice. It is answered once as Question 13.
- The healthcare Flynn's Taxonomy question appears multiple times. It is answered once as Question 18.
- The e-commerce infrastructure-upgrade question repeats the same idea as the online food delivery infrastructure question. It is answered once as Question 15.

---

## Question 1: Weather forecasting architecture selection

**Notes status:** Available in `notes4.md`, Lecture 1: Introduction to Parallel and Distributed Computing; Lecture 2: Flynn's Taxonomy; Lecture 4: Vector and Array Processors.

A weather forecasting center should use a hybrid high-performance architecture because its tasks are different in nature.

- For real-time data processing, parallel computing on multicore CPUs is useful because multiple CPUs can solve parts of one problem at the same time.
- For matrix computations and repetitive mathematical operations, GPUs, SIMD, vector processors, or array processors are suitable because the same operation can be applied to many data items simultaneously.
- For long-term climate simulations on very large datasets, distributed computing is suitable because multiple independent computers connected through a network can act as one system.

The best recommendation is a hybrid system: multicore CPUs and GPUs inside each node, combined with distributed servers across the network. `notes4.md` says hybrid memory offers the best scalability and performance, although it has maximum complexity.

---

## Question 2: RISC or CISC for a high-performance web server

**Notes status:** Available in `notes4.md`, Lecture 3: Concurrency & Processors.

RISC is more suitable for a high-performance web server that must handle thousands of simultaneous requests.

RISC uses simple fixed-length instructions, usually completes instructions in fewer cycles, supports heavy pipelining, and has more general-purpose registers. These properties improve execution speed and reduce cycles per instruction. RISC also has lower power consumption and simpler instruction decoding.

CISC is useful where smaller code size and compatibility with older software are important, but its complex instructions require more decoding and may take multiple cycles. For a modern high-performance server, RISC-style execution is generally better because fast execution and efficient pipelining matter more than compact instruction encoding.

---

## Question 3: RISC for embedded systems

**Notes status:** Available in `notes4.md`, Lecture 3: Concurrency & Processors; Lecture 8: Pipelining Architecture.

RISC is better for embedded systems such as smart home devices because these systems need low power consumption, quick response, and simple repetitive execution.

RISC fulfills these needs through:

- Simple instructions that are easier and faster to decode.
- Fixed-length instructions that support efficient pipelining.
- One-cycle style execution for many instructions.
- Lower power consumption compared with CISC.
- Hardwired control units, which make instruction execution faster.

The disadvantage is that RISC may need more instructions for complex tasks, but for simple repetitive embedded tasks this is usually acceptable.

---

## Question 4: CISC legacy banking system vs RISC new distributed system

**Notes status:** Available in `notes4.md`, Lecture 1: Introduction to Parallel and Distributed Computing; Lecture 3: Concurrency & Processors.

In a legacy banking system, CISC can fit well because older processors and older software often rely on complex instruction sets. CISC reduces code size, is memory-efficient, and has a large software base. However, it can be slower because complex instructions need more decoding and may require multiple cycles.

For a new distributed transaction-processing system, RISC is more suitable for the processors because it has simpler instruction decoding, faster execution, lower power consumption, and strong pipelining support. At the system level, distributed computing is also useful because multiple networked computers can handle transactions together, scale cost-effectively, and provide fault tolerance.

The tradeoff is that distributed systems introduce network latency, management complexity, and security concerns.

---

## Question 5: SIMD array processor conceptual paradigm

**Notes status:** Available in `notes4.md`, Lecture 2: Flynn's Taxonomy; Lecture 4: Vector and Array Processors.

A SIMD array processor follows the Single Instruction, Multiple Data model. One master control unit issues the same instruction to many processing elements at the same time. Each processing element performs that instruction on its own data.

The main idea is centralized control with parallel data execution:

- The master controller fetches and broadcasts one instruction.
- Many processing elements execute that same instruction concurrently.
- Each processing element works on a different data item.
- This is useful for vectors, matrices, image processing, signal processing, and other data-parallel problems.

Centralized control makes the system easier to coordinate because all processing elements follow the same instruction stream.

---

## Question 6: Operational dynamics of a SIMD array processor

**Notes status:** Available in `notes4.md`, Lecture 4: Vector and Array Processors.

In a SIMD array processor, the master control unit handles program control and broadcasts vector instructions to all processing elements. Each processing element has its own working registers and local data, so all elements can process different values at the same time.

During vector-oriented computation:

- The master unit sends a single vector instruction.
- Each processing element receives the same instruction.
- Each processing element applies it to its own part of the vector or array.
- Processing elements execute in a synchronized manner because they follow the same instruction stream.
- Neighboring processing elements may exchange data if the architecture supports nearest-neighbor connections.

This is effective when the same mathematical operation must be repeated across many data items.

---

## Question 7: Working mechanism of SIMD array processor with diagram

**Notes status:** Available in `notes4.md`, Lecture 4: Vector and Array Processors.

Example: adding two arrays:

`C[i] = A[i] + B[i]`

The master controller sends one ADD instruction to all processing elements. Each processing element adds one pair of values from arrays A and B and stores the result in C.

```text
                 Master Control Unit
                  broadcasts: ADD
                         |
        -------------------------------------
        |          |          |             |
      PE0        PE1        PE2          PE3
   A0 + B0    A1 + B1    A2 + B2     A3 + B3
      |          |          |             |
     C0         C1         C2            C3
```

All processing elements perform the same instruction, but on different data. This is why SIMD is strong for data-parallel work such as matrix operations, image processing, and scientific simulations.

---

## Question 8: Structural design of a SIMD array processor

**Notes status:** Available in `notes4.md`, Lecture 4: Vector and Array Processors.

A SIMD array processor is built around a master control unit and many processing elements.

Main components:

- Master control unit: issues one instruction to all processing elements.
- Processing elements: each PE usually contains an ALU, floating-point unit, working registers, and local memory.
- Interconnection structure: PEs are often organized as a 2D grid and may connect to nearest neighbors for data exchange.
- Local memory/registers: each PE stores the data it must process.

The master unit handles scalar and program-control instructions, while vector operations are broadcast to the processing elements. This structure allows many operations to happen in parallel.

---

## Question 9: Multithreading in a modern web browser

**Notes status:** Available in `notes4.md`, Lecture 5: Multi-Threading & Synchronization.

Multithreading allows a browser to divide its work into multiple threads inside the same program. One thread may stream video, another may download a file, and another may handle user interaction in a social media tab.

The processor switches between threads very quickly, giving the illusion of simultaneous execution. On multicore systems, threads may also run physically at the same time on different cores.

Benefits in this browser scenario:

- Better CPU utilization.
- Faster interactive response.
- Better modularity because different activities can be handled separately.
- The browser remains responsive even when one thread is waiting for I/O, network data, or another resource.

---

## Question 10: Benefits of multithreading in online banking

**Notes status:** Available in `notes4.md`, Lecture 5: Multi-Threading & Synchronization.

In an online banking system, multithreading allows different parts of a transaction to run concurrently. For example, one thread may update the account balance, another may verify security, another may log the activity, and another may send a confirmation notification.

Benefits:

- Better CPU utilization because the system can keep working while some threads wait for I/O.
- Faster response time for users.
- Better modularity because each operation can be handled by a separate thread.
- Parallel execution on multiple cores if hardware supports it.

However, shared data such as account balances must be protected using synchronization and critical sections to avoid inconsistent results.

---

## Question 11: Drawbacks of multithreading causing inconsistent output, freezes, and crashes

**Notes status:** Available in `notes4.md`, Lecture 3: Concurrency & Processors; Lecture 5: Multi-Threading & Synchronization; Lecture 6: Concurrency Control.

The reported problems are common drawbacks of multithreading when shared data is accessed without proper coordination.

Possible causes:

- Race conditions: multiple threads access shared data and the final result depends on execution order.
- Inconsistency or data loss: shared variables are updated incorrectly.
- Deadlocks: threads wait forever for resources held by one another.
- Resource contention: too many threads compete for the same CPU, memory, or I/O resource.
- Starvation or blocking: some threads wait too long and cannot progress.
- Debugging difficulty: timing-dependent bugs may be hard to reproduce.

The solution is to use synchronization mechanisms such as mutexes, semaphores, and critical sections carefully.

---

## Question 12: Amdahl's Law with 80% parallel code and 8 processors

**Notes status:** Available in `notes4.md`, Lecture 7: Amdahl's Law.

Given:

- Parallel portion = 80% = 0.80
- Serial portion = 20% = 0.20
- Number of processors = 8

Amdahl's Law:

```text
S = 1 / (alpha + ((1 - alpha) / q))
```

Here:

```text
alpha = 0.20
q = 8
S = 1 / (0.20 + 0.80 / 8)
S = 1 / (0.20 + 0.10)
S = 1 / 0.30
S = 3.33
```

The expected speedup is approximately **3.33x**.

Efficiency:

```text
Efficiency = Speedup / Processors
Efficiency = 3.33 / 8
Efficiency = 0.416 = 41.6%
```

Even with unlimited processors, the maximum speedup would be:

```text
1 / 0.20 = 5x
```

This shows that the sequential portion limits total speedup.

---

## Question 13: Amdahl's Law with 75% parallel code

**Notes status:** Available in `notes4.md`, Lecture 7: Amdahl's Law.

Given:

- Parallel portion = 75% = 0.75
- Serial portion = 25% = 0.25
- Required speedup = at least 3x

### Part a: Processors required for 3x speedup

Amdahl's Law:

```text
S = 1 / (0.25 + 0.75 / q)
```

For speedup 3:

```text
3 = 1 / (0.25 + 0.75 / q)
0.25 + 0.75 / q = 1 / 3
0.75 / q = 0.3333 - 0.25
0.75 / q = 0.0833
q = 0.75 / 0.0833
q = 9
```

At least **9 processors** are required to achieve a 3x speedup.

### Part b: Speedup with 4 processors

```text
S = 1 / (0.25 + 0.75 / 4)
S = 1 / (0.25 + 0.1875)
S = 1 / 0.4375
S = 2.29
```

With 4 processors, the actual speedup is approximately **2.29x**.

The maximum possible speedup with unlimited processors is:

```text
1 / 0.25 = 4x
```

---

## Question 14: Climate simulation on 16 processors with local memory and mesh network

**Notes status:** Partially available in `notes4.md`, Lecture 1: Parallel Memory Architectures and Communication Concepts; Lecture 2: MIMD and SPMD. MPI and detailed mesh interconnection networks are **not available in `notes4.md`**, so those parts are answered from general knowledge.

### 1. Parallel computing model

The system uses a distributed-memory parallel computing model. Each processor has its own local memory and communicates with other processors through messages.

It can also be described as MIMD because modern clusters and distributed systems commonly use Multiple Instruction, Multiple Data execution. If every processor runs the same climate simulation program on a different chunk of data, it is also SPMD.

### 2. MPI communication

**Not available in `notes4.md`: MPI is not directly explained.**

MPI stands for Message Passing Interface. In this scenario, processors use MPI to exchange data because each processor has local memory. Neighboring processors exchange boundary data after each computation step. At the end, all processors send partial results to a master processor.

### 3. Interconnection network

**Partially not available in `notes4.md`: mesh networks are not explained in detail.**

The network is a mesh interconnection network. In a mesh, each processor is connected to nearby neighboring processors. This works well for climate simulation because each processor mainly needs boundary data from adjacent regions.

### 4. Information exchange technique

The boundary exchange uses point-to-point communication because processors exchange data with neighboring processors. The final collection of partial results at the master processor is a collective or many-to-one communication pattern.

### 5. Performance issues

The system experiences high communication delay because of latency and bandwidth limits. `notes4.md` defines latency as startup delay and bandwidth as data transferred per unit time.

Efficiency decreases as processors increase because communication, synchronization, and message-passing overhead grow. More processors can reduce computation time, but they also increase coordination cost.

### 6. Improvements

Possible improvements:

- Reduce the amount of boundary data exchanged.
- Use asynchronous communication so processors do not block unnecessarily.
- Improve load balancing so all processors finish their work at similar times.
- Combine smaller messages into larger messages to reduce latency overhead.
- Use a hybrid approach: shared memory inside a node and distributed memory across nodes.
- Optimize the most frequently executed parts of the code, following Amdahl's Law.

---

## Question 15: Food delivery platform infrastructure recommendation

**Notes status:** Available in `notes4.md`, Lecture 1: Introduction to Parallel and Distributed Computing.

The company has three choices.

Serial optimization improves the current single-server system, but it is limited because one CPU still executes instructions one after another. This may reduce some delay but cannot handle very large peak-hour traffic well.

Parallel computing with multicore processors is better because multiple CPUs can solve parts of the same problem at the same time. It improves computation speed and resource use, but it may create synchronization issues and hardware cost.

Distributed computing is the strongest option for a large food delivery platform because multiple independent computers can work together over a network. It gives better scalability, better fault tolerance, and cost-effective growth using commodity hardware.

Recommendation: adopt a distributed computing architecture, preferably with parallel multicore servers inside each region. This allows the system to spread orders across many servers, keep operating if one server fails, and scale during peak hours.

---

## Question 16: Flynn's Classification for FinTech systems

**Notes status:** Flynn's categories are available in `notes4.md`, Lecture 2: Flynn's Taxonomy. FinTech-specific examples are **not available in `notes4.md`**, so the examples are answered from general knowledge.

Flynn's Classification divides computer architectures by the number of instruction streams and data streams.

### SISD: Single Instruction, Single Data

A traditional single-core sequential machine. In FinTech, this could represent a simple program processing one transaction at a time.

### SIMD: Single Instruction, Multiple Data

The same instruction is applied to many data items simultaneously. In FinTech, SIMD can be used for market-data vector calculations, risk scoring over many records, or GPU-based analytics.

### MISD: Multiple Instruction, Single Data

Different instructions operate on the same data stream. `notes4.md` says this is rare and rarely implemented commercially. In FinTech, it could theoretically be used for redundant checking of the same transaction data through different validation methods.

### MIMD: Multiple Instruction, Multiple Data

Different processors execute different instructions on different datasets. In FinTech, this is useful for fraud detection, batch processing of trading history, payment processing, and predictive analytics.

Most common modern FinTech architecture: MIMD, because `notes4.md` says MIMD is the standard for modern distributed and multicore systems. FinTech systems usually need clusters, multicore CPUs, and distributed servers. SIMD accelerators may also be used for matrix-heavy analytics.

---

## Question 17: Robotics manufacturing microprocessors and architecture recommendation

**Notes status:** Available in `notes4.md`, Lecture 3: Concurrency & Processors; Lecture 4: Vector and Array Processors. The exact robotics scenario is not directly in `notes4.md`, so the recommendation is inferred from the notes.

### 1. Microprocessor

A microprocessor is the CPU found in modern computers, smartphones, and devices. It fetches, decodes, and executes instructions stored in memory. It acts as the brain of the computing device and controls overall execution.

### 2. Types of microprocessors

Scalar processor: works on one data element at a time. It is simpler, cheaper, lower power, and supports conditional branching. It is useful for general control tasks.

Vector processor: works on arrays or vectors of data in one instruction. It is useful for scientific simulations, CAD, virtual reality, and numerical workloads.

Array processor: a SIMD-style processor where a master controller sends one instruction to many processing elements. It is useful for image processing, matrix work, and data-parallel computation.

### 3. CISC vs RISC

RISC uses simple fixed-length instructions, usually executes faster, supports pipelining, has more registers, and consumes less power. Its drawback is that complex tasks may require more instructions.

CISC uses complex variable-length instructions, needs fewer lines of code, and is memory-efficient. Its drawback is slower execution due to complex decoding and higher power consumption.

### 4. Recommendation

- Central control unit: use a scalar or superscalar general-purpose processor because it handles decision-making, control flow, and coordination.
- Vision processing module: use a SIMD array processor or GPU-style architecture because images contain many pixels that can be processed with the same operation.
- High-speed numerical computation unit: use vector or array processors because matrix operations are data-parallel.
- Embedded real-time controllers: use RISC because it gives fast response, simpler instruction decoding, pipelining support, and low power consumption.
- If compatibility with older software or compact code is required, CISC can be considered, but it is less suitable for low-power real-time embedded control.

---

## Question 18: Flynn's Classification for healthcare analytics

**Notes status:** Flynn's categories are available in `notes4.md`, Lecture 2: Flynn's Taxonomy. Healthcare-specific examples are **not available in `notes4.md`**, so the examples are answered from general knowledge.

### SISD

Single Instruction, Single Data. A single processor handles one data item at a time. In healthcare, this could be a simple standalone program processing one patient's record sequentially.

### SIMD

Single Instruction, Multiple Data. The same operation is applied to many data items at once. In healthcare, SIMD can help in medical image analysis, where the same image-processing operation is applied to many pixels.

### MISD

Multiple Instruction, Single Data. Different operations are applied to the same data stream. `notes4.md` says this is rare and rarely implemented commercially. In healthcare, it could theoretically be used for fault-tolerant checking of the same patient signal by different algorithms.

### MIMD

Multiple Instruction, Multiple Data. Different processors run different instructions on different datasets. In healthcare, MIMD can support real-time monitoring, disease-outbreak prediction, hospital databases, and distributed analytics systems.

Most common modern healthcare architecture: MIMD, because modern healthcare analytics systems often use multicore CPUs, clusters, and distributed systems. SIMD can also be used for specialized image-processing workloads.

---

## Question 19: SIMD Array Processor vs Attached Array Processor for weather forecasting

**Notes status:** Available in `notes4.md`, Lecture 4: Vector and Array Processors. Limitations of attached array processors are only lightly covered, so that part is partially answered from general knowledge.

### 1. SIMD Array Processor

A SIMD array processor has a built-in master controller that issues one instruction to multiple processing elements. Each processing element works on its own data. A PE typically contains an ALU, floating-point unit, working registers, and local memory.

### 2. Attached Array Processor

An attached array processor is an auxiliary processor connected to a main host general-purpose computer using an I/O interface and a local memory interface. It helps the host by performing array or vector-style computations.

### 3. Diagrams

SIMD Array Processor:

```text
              Master Control Unit
                      |
       --------------------------------
       |        |        |            |
      PE0      PE1      PE2         PE3
   Local    Local    Local       Local
   Data     Data     Data        Data
```

Attached Array Processor:

```text
       Host General-Purpose Computer
                    |
              I/O Interface
                    |
          Attached Array Processor
                    |
              Local Memory
```

### 4. Comparison and limitations

SIMD array processor:

- Best for applying the same instruction to many data items.
- Strong for matrix operations, image/signal processing, and scientific simulation.
- Limitation: conditional branching is difficult, and high memory bandwidth is required.

Attached array processor:

- Works as an auxiliary processor attached to a host.
- Useful when a general-purpose system needs extra array-processing capability.
- Limitation not fully available in `notes4.md`: performance can be limited by host communication and I/O transfer overhead.

### 5. Recommendation

For weather forecasting, a SIMD array processor is better for real-time satellite image processing, climate arrays, and repetitive mathematical operations because these tasks match SIMD's data-parallel model. For very large long-term simulations, a distributed or hybrid system may also be needed.

---

## Question 20: Distributed computing for global e-commerce workload

**Notes status:** Available in `notes4.md`, Lecture 1: Introduction to Parallel and Distributed Computing.

Distributed computing helps a global e-commerce company by connecting multiple independent computers through a network so they act as one system.

During a sale event, millions of users can be handled by spreading requests across many servers. If one server fails, others can continue working, which improves fault tolerance. The company can also scale cost-effectively by adding more commodity servers.

The main disadvantages are network latency, management complexity, and security vulnerabilities, but for very large global workloads distributed computing is still the most suitable architecture.

---

## Question 21: Shared-memory vs distributed-memory systems for weather simulation

**Notes status:** Available in `notes4.md`, Lecture 1: Parallel Memory Architectures; Lecture 2: MIMD subcategories.

Shared-memory architecture:

- All processors use one global memory.
- Easier to program.
- Can suffer from memory path contention.
- Less scalable for very large simulations.

Distributed-memory architecture:

- Each processor has its own local memory.
- Processors communicate by sending messages.
- Highly scalable for large climate simulations.
- Harder to program because explicit data movement is required.

For weather forecasting, shared memory is useful inside one powerful machine, while distributed memory is better for large-scale climate simulation across many processors or servers. A hybrid architecture can combine both.

---

## Question 22: Client-server architecture in a hospital system

**Notes status:** Client-server architecture is **not available in `notes4.md`**. Only the general idea of distributed computing is available in Lecture 1. The answer below is from general knowledge.

In a hospital client-server system, the central server stores and manages patient data. Doctors, laboratories, and billing departments act as clients that send requests to the server.

This supports parallel usage because many clients can access the system at the same time. For example:

- A doctor can view patient history.
- A lab can upload test results.
- Billing can update payment records.
- The server coordinates access to shared patient data.

To keep the data correct, the server must use synchronization, access control, and transaction management so that simultaneous updates do not corrupt patient records.

---

## Question 23: Parallel computing for DNA sequence comparison

**Notes status:** Available in `notes4.md`, Lecture 1: Introduction to Parallel and Distributed Computing; Lecture 2: Types of Parallelism. DNA-specific examples are not directly available, so the example is inferred from the notes.

Parallel computing improves DNA sequence comparison by dividing the large comparison task into smaller parts and processing them at the same time on multiple processors.

For example, different processors can compare different sequence segments. SIMD or GPU-style processing can apply the same comparison operation across many data items. MIMD systems can also run different parts of the analysis on different datasets.

This improves performance because multiple CPUs solve parts of one problem simultaneously. The final results can then be combined after all processors finish their assigned work.

---

## Question 24: Distributed system models for ride-sharing real-time operations

**Notes status:** Peer-to-peer, master-slave, and hybrid distributed system models are **not available in `notes4.md`**. Only general distributed computing is available in Lecture 1. The answer below is from general knowledge.

In a ride-sharing system, thousands of drivers send real-time location updates. Distributed system models can manage this workload in different ways.

Peer-to-peer model:

- Nodes communicate directly with each other.
- Nearby drivers and users may exchange local updates through nearby services.
- It reduces dependence on one central point, but coordination and security are harder.

Master-slave model:

- A central master server coordinates the system.
- Worker servers process driver locations, ride requests, pricing, and route data.
- It is easier to control, but the master can become a bottleneck if not replicated.

Hybrid model:

- Combines central coordination with distributed regional servers.
- Regional servers handle local driver updates and ride matching.
- Central servers manage global data, payments, policies, and monitoring.

For Uber/Careem-like systems, a hybrid distributed model is usually best because it supports real-time regional processing while still keeping central control.

