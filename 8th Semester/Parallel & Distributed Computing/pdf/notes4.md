# CS-482: Ultimate Exam Notes (The "Perfect" Blend)

*This document combines the easy-to-learn structure of `notes2.md` with the crucial examples, advantages, and disadvantages from `notes.md`. Designed specifically to help you score full marks on 5 and 10-mark theory questions.*

---

## Lecture 1: Introduction to Parallel and Distributed Computing

### 1. Computing History & Moore's Law
*   **Early Era:** ENIAC/UNIVAC used vacuum tubes, taking up entire rooms. Mainframe era followed with IBM System/360 (1960s).
*   **Personal Computers:** Apple II and IBM PC popularized computing.
*   **Moore's Law:** Predicts transistor count on chips doubles every two years, driving processing power growth.

### 2. Types of Computing
*   **Serial Computing:** A single CPU executes instructions one after another. Simple but slow.
*   **Parallel Computing:** Multiple CPUs solve parts of *one single problem* at the same time.
    *   *Advantages:* Faster computation, efficient use of resources.
    *   *Disadvantages:* High programming complexity, synchronization issues, and higher hardware cost (more cores/GPUs).
*   **Distributed Computing:** Multiple independent computers connected via a network acting as one system.
    *   *Advantages:* High fault tolerance (one fails, others keep working), cost-effective scaling via commodity hardware.
    *   *Disadvantages:* Network latency/overhead, complex management, security vulnerabilities.
*   **Examples:**
    *   *Parallel:* Multi-core CPUs, GPUs, supercomputers, scientific simulation, AI/ML training.
    *   *Distributed:* Cloud systems (clusters), microservices, Hadoop/Spark-style clusters, IoT networks, blockchains.
*   **Parallel vs Distributed:**
    *   *Parallel:* Single computer, multiple processors. Shared or distributed memory. Bus communication.
    *   *Distributed:* Multiple computers. Distributed memory only. Message passing over network.

### 3. Parallel Memory Architectures
*   **Shared Memory:** All processors use one global memory. Easy to program, but poor scalability due to memory path contention.
*   **Distributed Memory:** Each processor has local memory and communicates via messages. Highly scalable, but harder to program (explicit data movement).
*   **Hybrid Memory:** Shared memory within a node, distributed communication across nodes. Offers best scalability and performance but maximum complexity.

### 4. Communication Concepts
*   **Latency vs Bandwidth:** Latency is the startup delay to send a small message; bandwidth is the data transferred per unit time.
*   **Synchronous vs Asynchronous:** Synchronous is blocking (task waits); asynchronous is non-blocking.
*   **Point-to-Point vs Collective:** Point-to-point is between two tasks; collective involves all tasks in a group.

---

## Lecture 2: Flynn's Taxonomy & Parallelism

### 1. Flynn's Taxonomy (Instruction & Data Streams)
*   **Instruction Stream:** The sequence of instructions fetched/executed by a CPU (conceptually tied to a program counter).
*   **Data Stream:** The sequence of data items those instructions operate on.
*   **SISD (Single Instruction, Single Data):** Traditional uniprocessor (old PCs).
    *   *Examples:* Single-core sequential machine (classic Von Neumann style).
*   **SIMD (Single Instruction, Multiple Data):** Exact same operation runs on different data simultaneously. Best for Vectors, Matrix math, GPUs.
    *   *Examples:* GPUs, vector/array processors, image/signal processing.
    *   *Subcategories:*
        *   **Array Processor:** Each parallel processing unit has its own separate memory and register file.
        *   **Pipelined Processor:** Read data from central resource (typically register file in modern CPUs), process fragments, write results back.
        *   **Associative Processor:** Each parallel processing unit independently decides whether to execute or skip (predicated/masked SIMD).
*   **MISD (Multiple Instruction, Single Data):** Different operations on the exact same data stream. Rare, rarely implemented commercially. Example: *Z = sin(x) + cos(x) + tan(x)*.
*   **MIMD (Multiple Instruction, Multiple Data):** Entirely different instructions on different datasets. The standard for modern distributed and multi-core systems.
    *   *Examples:* Multi-core CPUs, multiprocessors, clusters/distributed systems.
    *   *Subcategories:*
        *   **Shared Memory MIMD (Tightly Coupled):** Connected to a single global memory. Prone to memory contention, less tolerant to failures, and harder to extend.
        *   **Distributed Memory MIMD (Loosely Coupled):** Each PE has local memory; communicates via an interconnection network. More scalable, fault-tolerant (easier to isolate).

### 2. SPMD vs MPMD (MIMD sub-types)
*   **SPMD:** Single Program Multiple Data (proposed by Federica Darema). Every node runs the exact same code, but works on different chunks of data.
*   **MPMD:** Multiple Program Multiple Data. Manager-worker model where nodes run completely different programs (heterogeneous tasks).

### 3. Types of Parallelism
*   **Hardware-Level:** Pipelining, Superscalar, VLIW, SIMD, Multi-core, Clusters.
*   **Software-Level:** 
    *   **Instruction-Level (ILP):** Re-ordering and grouping instructions to execute concurrently without affecting the outcome.
    *   **Data-Level (DLP):** Operating concurrently on several distinct pieces of data.
    *   **Task-Level (TLP):** Decomposing a task into subtasks and allocating them to compute concurrently.

### 4. Needs & Limitations
*   **Why Needed:** Serial computation wastes hardware potential; real-world data requires faster crunching.
*   **Applications:** Databases, AI/ML, Real-time systems, VR/AR.
*   **Limitations:** Synchronization overhead, algorithm design complexity, portability issues.

---

## Lecture 3: Concurrency & Processors

### 1. Concurrency vs Parallelism
*   **Concurrency:** OS handles multiple tasks by quickly context-switching between them (illusion of simultaneous execution). Focuses on structure and scheduling.
*   **Parallelism:** Tasks run physically at the exact same time on multiple processing cores.
*   **Key Difference:** Concurrency addresses multiple tasks at once but not necessarily simultaneously; parallelism executes tasks at the same time using different processors/cores.

### 2. Motivation for Concurrent Systems
*   Physical resource sharing (limited hardware for multiple users).
*   Logical resource sharing (shared files/data).
*   Speedup through overlapping execution and modular design.

### 2B. Principles of Concurrency (Why results can vary)
*   Execution order/speed is **unpredictable** in concurrent systems.
*   It depends on OS scheduling policies, interrupts, and the activity of other processes/threads.

### 3. Independent vs Cooperating Processes
*   **Independent:** State is not shared; output is deterministic/predictable.
*   **Cooperating:** State is shared; output is non-deterministic (depends on execution order).

### 4. Process Operations
*   **Creation:** Parent creates child (execute concurrently or wait; share resources or isolate).
*   **Termination:** Parent can terminate child if resources exceeded or task done. Cascading rule: if a parent is terminated by the OS, its children must also be terminated.

### 5. Concurrency Issues, Advantages & Drawbacks
*   **Issues:** Inconsistency, loss of data, deadlocks (if synchronization fails), race conditions, starvation, blocking.
*   **Advantages:** Running multiple applications, better resource utilization, vastly improved response times. Reduces CPU utilization by allowing waiting without wasting cycles.
*   **Drawbacks:** Difficult to coordinate, heavy overhead on OS, hard to track bugs. Limits parallelism and introduces overhead/deadlock risks with critical sections.

### 5B. Common Problems in Concurrency (OS + programmer view)
*   Safe sharing of global resources (read/write ordering matters).
*   Optimal resource allocation is hard (CPU, memory, I/O contention).
*   Bugs can be non-reproducible (timing-dependent).
*   Locking shared channels/resources can reduce efficiency if overused.

### 6. What is a Microprocessor?
*   **Definition:** CPU found in modern computers, smartphones, and devices. Fetches, decodes, and executes instructions stored in memory. Brain of computing devices controlling overall execution.
*   **Types:** Scalar (one data element at a time), Vector/Array (multiple data elements), Superscalar (multiple pipelines executing >1 instruction/cycle).
*   **Superscalar Processor:** Contains multiple pipelines and executes more than one instruction per clock cycle for enhanced performance.

### 7. RISC vs CISC
*   **RISC (Reduced Instruction Set Computing):** Simple instructions (1 cycle), fixed length, heavily pipelined, more general-purpose registers. Uses purely hardwired control units. Needs more lines of code.
    *   *Advantages:* Simpler instruction decoding, faster execution, lower power consumption.
    *   *Disadvantages:* More instructions required for complex tasks, increased memory usage.
*   **CISC (Complex Instruction Set Computing):** Complex instructions (multi-cycle), variable length, fewer registers (operations in memory). Uses both hardwired and microprogrammed control units. Less code needed.
    *   *Advantages:* Reduced code size, memory-efficient, widely used with large software base.
    *   *Disadvantages:* Slower execution due to complex instruction decoding, higher power consumption.
*   **CPU Performance Summary:** RISC tends to reduce *cycles per instruction (CPI)* but increases *instructions per program*; CISC tends to reduce *instructions per program* but can increase *CPI*.

---

## Lecture 4: Vector and Array Processors

### 1. Vector vs Scalar Processors
*   **Scalar Processor:** Works on one data element at a time. Simpler, cheaper, lower power. Supports conditional branching natively. Applications: Video games, web browsing, office applications.
*   **Vector Processor:** Works on arrays/vectors of data in one instruction. Highly parallel, expensive. Applications: CAD, virtual reality, scientific simulations.
    *   *Architectural Constraints:* Vector processors **do not** support conditional vector branching easily (unlike scalar processors) and require multiple caches & significantly higher memory bandwidth due to bulk memory accesses.

### 2. Array Processors (SIMD)
*   **Attached:** An auxiliary processor attached to a main host general-purpose computer with an I/O interface and a local memory interface.
*   **SIMD Array:** Built-in master controller issues one single instruction to multiple parallel Processing Elements (PEs).
    *   *PE typically contains:* ALU, floating-point unit, and working registers (plus local memory).
    *   *Organization idea:* Often described as a 2D grid of PEs; each PE may connect to nearest neighbors for data exchange.
    *   *Control note:* Scalar/program-control instructions may be executed by the master control unit; vector work is broadcast to PEs.

### 3. Vector Processor Architectures
*   **Memory-to-Memory:** Fetches operands and writes results directly back to main memory. Slower speed, but no limitation on data size.
*   **Register-to-Register:** Uses dedicated internal vector registers. Much faster execution but limited by hardware register sizes.
*   **Hybrid Architecture:** Combines memory-to-memory and register-to-register approaches. Provides flexible operand retrieval methods for balanced performance and efficiency.

### 4. Vector Instruction Format
*   Contains Opcode, Source/Destination registers, Vector length, Base address/offset, Address increment (stride), Mask field, Addressing mode field, and Data type field.

---

## Lecture 5: Multi-Threading & Synchronization

### 1. Multithreading vs Multitasking
*   **Multitasking:** OS running multiple *different programs* at once (Listening to music + browsing internet + typing document).
    *   *Processor-based:* OS switches between processes/programs.
    *   *Thread-based:* A program creates multiple threads to do work concurrently.
*   **Multithreading:** A single program executing multiple *threads* (Word checking spelling while typing).
*   **How it Works:** Processor switches between threads so fast it gives illusion of simultaneous execution.
*   **Thread vs Process:** A process is a complete program in execution; a thread is a smaller part of a process that can run independently within that process.

### 2. Execution & Lifecycle
*   **Types:** Concurrent execution (switching on one core) vs Parallel execution (running on multiple cores simultaneously).
    *   **New:** Thread created but not yet scheduled to run.
    *   **Runnable:** Ready to run (may be running or waiting for CPU time slice).
    *   **Waiting:** Blocked until some event/resource is available (e.g., lock, I/O).
    *   **Timed Waiting:** Waiting with a timeout/sleep.
    *   **Terminated:** Finished execution.
*   **Lifecycle:** New ➔ Runnable ➔ Waiting/Timed Waiting ➔ Terminated.

### 3. Benefits & Drawbacks of Multithreading
*   **Benefits:** Better CPU utilization, faster interactive responses, better modularity.
*   **Drawbacks:** Complex synchronization, deadlocks, resource contention, debugging difficulty.

### 4. Process Synchronization & Critical Section
*   **Goal:** Ensure safe access to resources & maintain data consistency.
*   **Types of Synchronization:**
    *   *Competitive Synchronization:* Multiple processes compete for a shared resource. Lack of synchronization may lead to inconsistency or data loss.
    *   *Cooperative Synchronization:* Multiple processes are interdependent; execution of one affects others. Lack of synchronization may lead to deadlock.
*   **Conditions Requiring Synchronization:** Critical Section (shared resource access), Race Condition (execution order affects results), Pre-Emption (OS switches process mid-execution on shared resources).
*   **Critical Section:** Code region accessing shared data. Must satisfy 3 rules:
    1.  **Mutual Exclusion:** Only 1 process in critical section at a time.
    2.  **Progress:** Only waiting processes compete to enter if section is empty.
    3.  **Bounded Waiting:** Limited waiting time to enter section.
*   **OS Level Approaches:**
    *   **Preemptive Kernels:** Allows a process to be preempted while running in kernel mode.
    *   **Non-preemptive Kernels:** A process in kernel mode will run until it exits, blocks, or voluntarily yields. It is essentially free from race conditions on kernel data structures (only one active process).
*   **Quick Lock Pattern (concept):** `acquireLock();` -> critical section -> `releaseLock();`
*   **Why Critical Sections Matter:**
    *   *Advantages:* Prevent race conditions, enforce mutual exclusion, can reduce wasted CPU by making waiting explicit.
    *   *Disadvantages:* Overhead of locking/unlocking, can cause deadlocks/starvation if misused, can limit parallelism if the critical section is large/frequent.

### 5. Classical IPC Problems
*   **Producer-Consumer:** Buffer underflow/overflow issues.
*   **Readers-Writers:** Multiple concurrent readers allowed, but writers require exclusive access.
*   **Dining Philosophers:** Models deadlock and starvation.

---

## Lecture 6: Concurrency Control (Mutex vs Semaphore)

### 1. Mutual Exclusion
*   **Concept:** "No two processes can exist in the critical section at the same time." Essential to avoid race conditions.
*   **Requirements:** Only 1 process enters, remains a bounded time, and doesn't infinitely block others.
    *   *Dijkstra's Extended Criteria:* It is not advisable to make assumptions about the relative speeds of asynchronous concurrent processes; and a process that is outside of its critical section must not obstruct another process.
*   **Approaches:** 
    *   *Software:* Prone to errors, high overhead, and can leave systems vulnerable.
    *   *Hardware:* Uses special-purpose machine instructions. Cannot guarantee absence of starvation or deadlock. Can cause "spinlocks" (processes continuously loop/spin while waiting for a lock, wasting CPU).
    *   *OS/Language:* Uses built-in primitives like Mutexes and Semaphores.

### 2. Mutex (Mutual Exclusion)
*   Strict, ownership-based locking mechanism.
*   Only the exact thread that acquired/locked the mutex is allowed to unlock it.
*   Best for protecting a *single* shared resource.
*   Many OSes implement **priority inheritance** with mutexes to reduce priority inversion impact.

### 3. Semaphore
*   A signaling mechanism that uses an integer counter. Does not require strict ownership. Used for avoiding deadlocks and Resource Management.
*   **Wait (P):** Decrements value, blocks if unavailable. **Signal (V):** Increments value, wakes waiters.
*   **Binary Semaphore:** Values 0/1 (acts similarly to a Mutex).
*   **Counting Semaphore:** Values > 1. Manages a pool of identical resources.
*   **Common Uses:** Mutual exclusion, process/thread synchronization (ordering), resource pools (N identical resources), readers-writers coordination.
*   **Pros/Cons (Exam-ready):**
    *   *Advantages:* Simple, flexible, supports coordination across multiple threads/processes, helps prevent race conditions when used correctly.
    *   *Disadvantages:* Overhead; can deadlock if acquired/released incorrectly; hard to debug/maintain; can suffer from busy waiting/priority inversion depending on implementation.
*   **Limitations:** Inherently causes **busy waiting** (wasting CPU cycles continuously checking the lock) and **priority inversion** issues unless a waiting queue is explicitly implemented. Can be difficult to debug/maintain and vulnerable to DOS attacks.

---

## Lecture 7: Amdahl’s Law

### 1. Core Concept & Formula
*   Amdahl's law states that overall performance speedup is strictly limited by the remaining sequential (non-parallelizable) portion of the code.
*   **Formula:** $S = \frac{1}{\alpha + \frac{1-\alpha}{q}}$ (where $\alpha$ = serial fraction, $q$ = improvement factor).
*   *Example:* Even with infinite processors, if 10% of a program is sequential ($\alpha = 0.1$), max speedup ($S$) is $1/0.1 = 10x$.

### 2. Key Implications
*   **Golden Rule:** Optimize the most frequently executed parts of the code. ("Make the common case fast").
*   Removing bottlenecks in rarely used code provides minimal global benefit.

### 3. Scaled Amdahl's Law (Fixed-Time View)
*   Responds to standard Amdahl criticism by arguing that as computing power increases, users tend to run larger data problem sizes rather than just solving small problems faster. Highlights why parallel systems are powerful at scale.

---

## Lecture 8: Pipelining Architecture

### 1. What is Pipelining?
*   A technique where multiple instruction stages are overlapped in an assembly-line fashion to boost CPU throughput.
*   *Advantages:* Vastly increases instruction throughput (instructions per unit time) and allows higher CPU clock speeds.
*   *Disadvantages:* Increases hardware complexity, triggers hazards, raises power consumption.

### 1B. Detailed Need for Pipelining
*   **Improved Performance:** Without pipelining, CPU executes one instruction at a time. With pipelining, multiple instructions processed simultaneously.
*   **Efficient Resource Utilization:** Different functional units (Fetch, Decode, Execute, etc.) work in parallel, reducing idle time.
*   **Higher Clock Speeds:** Instructions broken into smaller tasks can execute faster, allowing higher clock frequencies.
*   **Reduced Execution Delay:** Pipelining overlaps execution instead of waiting for each instruction to complete.
*   **Scalability:** Essential for advanced architectures like RISC and Multi-core systems to manage multiple instruction flows.
*   **Better Architecture Support:** Modern CPUs with multiple execution units benefit greatly from pipelining for efficiency.

### 2. Types of Pipelining
*   **Hardware:** Dedicated physical segments. Includes Instruction pipelining, Arithmetic pipelining (ALUs), and Data pipelining (DMA).
*   **Software:** Compiler optimizations. Includes Loop Unrolling, VLIW scheduling, Speculative Execution, and Software Parallelism in Multi-Core Processors (OpenMP/CUDA).

### 3. The 5 Standard Pipeline Stages
1.  **Fetch (IF):** Grab the instruction from memory.
2.  **Decode (ID):** Translate what the instruction means.
3.  **Execute (EX):** Perform the ALU mathematical operation.
4.  **Memory (MEM):** Read or write data to main memory if needed.
5.  **Write Back (WB):** Save the final result back into the CPU registers.

### 4. Tradeoffs & Performance
*   **Latency vs Throughput:** Pipelining massively improves throughput, though single-instruction latency slightly increases.
*   **Detailed Tradeoff Table:**
    *   **Scenario: High Performance (e.g., gaming, AI, HPC)** - Deep pipelining, out-of-order execution. *Cost:* Expensive fabrication and higher power.
    *   **Scenario: Low Cost (e.g., embedded systems)** - Few pipeline stages, lower complexity. *Benefit:* Reduced hardware cost, lower power usage.
    *   **Superpipelining:** More stages per instruction increases clock speed. *Cost:* Increases hazard handling complexity.
    *   **Superscalar:** Multiple pipelines execute multiple instructions per cycle. *Cost:* Requires more execution units, raising cost.
*   **Cost vs Performance:** Deeper pipelines offer more speed but come with higher cost, complexity, and hazard penalties.

### 5. Pipeline Hazards & Mitigation
*   **Data Hazards:** True dependency (Instruction 2 needs output of Instruction 1). *Mitigation:* Operand Forwarding, Register Renaming.
    *   *Formal Classifications:* **RAW** (Read After Write - true dependency), **WAR** (Write After Read - anti-dependency), **WAW** (Write After Write - output dependency).
*   **Structural Hazards:** Hardware conflict (two instructions need the same executing unit). *Mitigation:* Resource duplication.
*   **Control Hazards:** Branching/Jumping confuses fetch order. *Mitigation:* Branch Prediction, Speculative execution.

### 6. Pipeline Performance Theory
*   **CPI (Clock Cycles Per Instruction):** Under ideal pipelining, CPI approaches 1.
*   **Pipeline Utilization & Throughput:** Higher utilization of pipeline stages directly increases instruction throughput and overall speedup factor.

### 7. Space-Time Diagram
*   **Concept:** A theoretical graphical representation used to visualize overlapping instruction execution across pipeline stages over multiple clock cycles. It clearly maps stages (Space) against clock cycles (Time).
