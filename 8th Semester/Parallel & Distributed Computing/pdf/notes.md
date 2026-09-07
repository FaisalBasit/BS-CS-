# CS-482 Exam Notes (Theory Only)

These notes are prepared from Lecture 1 to Lecture 8.
Goal: easy understanding, easy revision, and strong answers for 5-10 mark theory questions.

## How to Use These Notes in Exam

1. For a 5-mark question:
- Write definition first (1-2 lines).
- Write 3-5 key points.
- Add one short example or use-case.
- End with one concluding line.

2. For a 10-mark question:
- Start with definition/background.
- Explain working or classification step by step.
- Add advantages, disadvantages, and applications.
- Compare related concepts in a small table/list.
- End with a conclusion.

---

## Lecture 1: Introduction to Parallel and Distributed Computing

### 1) Serial, Parallel, and Distributed Computing

Serial Computing:
- One CPU executes one instruction at one time.
- Instructions run one after another.
- Simple but slow for large problems.

Parallel Computing:
- Multiple processors/cores solve parts of one problem at the same time.
- Can use shared memory or distributed memory.
- Main goal: higher speed and better performance.

Distributed Computing:
- Multiple autonomous computers connected by network.
- No shared memory across machines.
- Communication is done by message passing.
- Main goals: scalability, fault tolerance, resource sharing.

### 2) Parallel vs Distributed (important theory difference)

- Parallel: usually focuses on speedup of one large task.
- Distributed: focuses on scaling across many machines and reliability.
- Parallel can be inside one machine (multi-core/GPU).
- Distributed is across multiple networked systems.

### 3) Advantages and Disadvantages

Parallel advantages:
- Faster computation.
- Better resource utilization.
- Good for scientific/data-heavy tasks.

Parallel disadvantages:
- Programming complexity.
- Synchronization issues.
- Hardware cost.

Distributed advantages:
- Fault tolerance.
- Horizontal scalability.
- Cost-effective with commodity hardware.

Distributed disadvantages:
- Network latency and communication overhead.
- Harder management and debugging.
- Security concerns.

### 4) Memory Architectures in Parallel Systems

Shared Memory:
- All processors access a common memory space.
- Easy data sharing, easier programming model.
- Poor scalability due to memory contention.

Distributed Memory:
- Each processor has local memory.
- Scales better with more processors.
- Programmer handles explicit communication.

Hybrid (Distributed + Shared):
- Shared memory within node, distributed across nodes.
- Better scalability and performance.
- More programming complexity.

### 5) Parallel Program Communication Concepts

- Latency: time to start/transfer a small message.
- Bandwidth: amount of data transferred per unit time.
- Synchronous communication: sender/receiver waits (blocking).
- Asynchronous communication: execution continues (non-blocking).
- Point-to-point: between two tasks.
- Collective: involves a group of tasks.

---

## Lecture 2: Flynn Taxonomy and Types of Parallelism

### 1) Flynn Taxonomy Basics

Flynn classifies architectures by:
- Number of instruction streams.
- Number of data streams.

### 2) Four Classes

SISD (Single Instruction, Single Data):
- One processor, one instruction stream, one data stream.
- Traditional sequential computers.

SIMD (Single Instruction, Multiple Data):
- Same instruction on many data items in parallel.
- Good for vectors, matrices, graphics, image processing.
- Example idea: GPU-like behavior.

MISD (Multiple Instruction, Single Data):
- Different instructions on same data.
- Rare in practical systems.
- Mostly theoretical or special fault-tolerant setups.

MIMD (Multiple Instruction, Multiple Data):
- Different processors execute different instructions on different data.
- Most modern multi-core and distributed systems are MIMD.

### 3) Why MISD is Rare (common theory question)

- Hard to find practical workloads for same data with many different instruction streams.
- Resource usage is inefficient in general-purpose computing.
- More complexity, less real-world benefit than SIMD/MIMD.

### 4) MIMD Types

Shared-memory MIMD:
- Common global memory.
- Easier to program.
- Less scalable and more contention.

Distributed-memory MIMD:
- Local memory per processor.
- Better scalability and fault isolation.
- More explicit communication complexity.

### 5) SPMD vs MPMD

SPMD:
- Same program runs on different processors with different data.
- Widely used in HPC and distributed processing.

MPMD:
- Different programs run on different processors and data.
- Useful in heterogeneous systems (manager-worker model).

### 6) Types of Parallelism

Hardware-level:
- Pipelining, superscalar, VLIW, SIMD units, multi-core, clusters.

Software-level:
- Instruction-level parallelism.
- Data-level parallelism.
- Task-level parallelism.

---

## Lecture 3: Concurrency and RISC vs CISC

### 1) Concurrency in OS

Concurrency means multiple tasks are in progress during overlapping time.
- Can be true parallel (multiple cores) or interleaving (context switching on one core).
- Improves responsiveness and resource utilization.

### 2) Independent vs Cooperating Processes

Independent process:
- Does not share state with others.
- Same input gives same output behavior.

Cooperating process:
- Shares data/resources.
- Output may depend on execution order.
- Can cause race conditions.

### 3) Concurrency Problems

- Race condition.
- Deadlock.
- Starvation.
- Blocking.
- Difficult debugging due to non-deterministic behavior.

### 4) Concurrency vs Parallelism

- Concurrency: many tasks make progress together.
- Parallelism: many tasks execute exactly at same time.

### 5) Microprocessor Types (quick theory)

Scalar processor:
- Operates on one data element at a time.

Vector processor:
- Operates on vectors (many data elements) in one instruction style.

Array/SIMD processor:
- Multiple processing elements execute same instruction on different data.

### 6) RISC vs CISC

RISC (Reduced Instruction Set Computing):
- Simple instructions, fixed length, usually single-cycle style.
- More registers, simple addressing.
- Better pipelining and lower power.
- Needs more instructions for complex tasks.

CISC (Complex Instruction Set Computing):
- Complex instructions, variable length, multi-cycle behavior.
- Rich addressing modes, fewer instructions per task.
- Smaller code size but higher decode complexity and power.

When to prefer RISC:
- Performance per watt is important.
- Pipeline-friendly design needed.

When to prefer CISC:
- Code density and backward compatibility are priorities.

---

## Lecture 4: Vector and Array Processors

### 1) Array Processor Types

Attached Array Processor:
- External auxiliary processor attached to host computer.
- Used to accelerate numeric operations.
- Host controls it through interface.

SIMD Array Processor:
- Built-in multiple processing elements under one control unit.
- All PEs execute same instruction on different data.

### 2) Vector Processor Classifications

Memory-to-Memory:
- Operands/results directly from main memory.
- Flexible size, generally slower.

Register-to-Register:
- Uses vector registers; memory access is indirect through registers.
- Faster, but limited by register size and hardware cost.

Hybrid:
- Combines both methods.
- Balances flexibility and speed.

### 3) Vector vs Scalar (core understanding)

Vector processor:
- High data parallelism.
- Best for scientific simulations, image/video, AI, matrix operations.
- More complex and expensive.

Scalar processor:
- Simpler, cheaper, lower power.
- Better for general sequential tasks.

### 4) Vector Instruction Format (theory points)

Typical fields:
- Opcode.
- Source/destination vector register.
- Vector length.
- Base address and offset.
- Address increment (stride).
- Mask/predicate field (optional).

---

## Lecture 5: Multithreading and Process Synchronization

### 1) Multithreading Basics

- A process can contain multiple threads.
- Threads are lightweight execution units sharing process resources.
- Increases responsiveness and throughput.

### 2) Multithreading vs Multitasking

Multithreading:
- Multiple threads inside one program.
- Improves performance of one application.

Multitasking:
- Multiple programs run concurrently.
- Managed mainly by OS scheduler.

### 3) Thread Lifecycle

Main states:
- New.
- Runnable.
- Waiting.
- Timed Waiting.
- Terminated.

### 4) Benefits and Drawbacks of Multithreading

Benefits:
- Better CPU utilization.
- Faster response for interactive apps.
- Better modular program structure.

Drawbacks:
- Hard synchronization.
- Race conditions.
- Deadlocks/starvation.
- More debugging complexity.

### 5) Process Synchronization

Goal:
- Ensure safe access to shared resources.
- Maintain data consistency.

Lack of synchronization can cause:
- Inconsistency.
- Data loss.
- Deadlock.

### 6) Critical Section and Race Condition

Critical Section:
- Code region where shared data is accessed.
- Only one process/thread should execute at a time.

Race Condition:
- Final result depends on unpredictable order of execution.

### 7) Conditions for Correct Critical Section Solution

- Mutual exclusion.
- Progress.
- Bounded waiting.

### 8) Classical IPC Problems (must remember)

Producer-Consumer:
- Producer fills buffer, consumer removes items.
- Main issues: overflow and underflow.

Readers-Writers:
- Many readers can read together.
- Writer needs exclusive access.

Dining Philosophers:
- Models deadlock and starvation in resource sharing.

---

## Lecture 6: Concurrency Control (Mutex and Semaphore)

### 1) Mutex

- Mutual exclusion lock with ownership.
- Only lock owner can unlock.
- Used to protect one critical resource.

### 2) Semaphore

- Synchronization primitive with integer counter.
- Supports multiple resource instances.
- Two operations:
  - wait (P): decrement; block if unavailable.
  - signal (V): increment; wake waiting process.

### 3) Types of Semaphore

Binary semaphore:
- Values 0/1.
- Similar to lock behavior.

Counting semaphore:
- Value can be greater than 1.
- Controls access to pool of resources.

### 4) Mutex vs Semaphore (important comparison)

Mutex:
- Ownership-based.
- Mainly for mutual exclusion.
- Good for one resource.

Semaphore:
- Counter-based.
- For signaling and resource counting.
- Good for multiple instances/resources.

### 5) Limitations and Risks

- Busy waiting/spinlock overhead in naive implementation.
- Priority inversion.
- Deadlock if order/release is wrong.
- Hard debugging in large systems.

---

## Lecture 7: Amdahl Law (Theory View, No Numerical Focus)

### 1) Main Idea

Amdahl law states:
- Overall speedup is limited by the part of the program that cannot be improved/parallelized.

Even if parallel part becomes very fast, total speedup is bounded by serial fraction.

### 2) Core Terms

- alpha: fraction that remains serial (unimproved part).
- q: improvement factor of enhanced part.
- S: overall speedup.

Conceptual form:
- Speedup depends on both improved and unimproved portions.
- As q becomes very large, maximum speedup tends to 1/alpha.

### 3) Key Implications

- Optimize common-case operations first.
- Removing bottlenecks in rarely used code gives little total benefit.
- Parallel systems have practical limits if serial portion exists.

### 4) Scaled Amdahl Law (Fixed-Time View)

- Focuses on solving bigger problems in same time using more processors.
- Useful in real HPC where single processor may not be practical for huge problem sizes.
- Shows why parallel systems are still useful at scale.

### 5) Theory Answer Closing Line

- Amdahl law is a warning that partial optimization gives limited global speedup; real performance improvement needs reducing serial bottlenecks.

---

## Lecture 8: Pipelining Architecture

### 1) What is Pipelining?

- Technique that overlaps instruction stages.
- Multiple instructions are processed at different stages simultaneously.
- Improves throughput (instructions completed per unit time).

### 2) Why Pipelining is Needed

- Better CPU efficiency.
- Better utilization of hardware units.
- Higher instruction throughput.
- Foundation for modern high-performance processors.

### 3) Pipeline Types

Hardware pipelining:
- Implemented in processor hardware.
- Includes instruction, arithmetic, and data pipelining.

Software pipelining:
- Compiler reorders instructions to reduce stalls.
- Includes loop unrolling, VLIW scheduling, speculative execution.

### 4) Classic 5 Pipeline Stages

- IF: Instruction Fetch.
- ID: Instruction Decode.
- EX: Execute.
- MEM: Memory Access.
- WB: Write Back.

### 5) Hazards in Pipelining

Data hazards:
- RAW, WAR, WAW dependencies.

Structural hazards:
- Hardware resource conflict.

Control hazards:
- Branch/jump uncertainty.

### 6) Hazard Mitigation Techniques

- Operand forwarding.
- Branch prediction.
- Register renaming.
- Instruction scheduling.
- Speculative execution.

### 7) Latency vs Throughput

- Pipelining improves throughput significantly.
- Single instruction latency may not reduce much.
- Real performance depends on hazard handling quality.

### 8) Cost vs Performance Tradeoff

- Deeper pipelines can increase speed but add complexity, power, and hazard penalty.
- Design must balance performance goals and system cost.

---

## Most Important Theory Questions to Prepare

1. Explain differences between serial, parallel, and distributed computing with examples.
2. Compare parallel and distributed memory architectures.
3. Explain Flynn taxonomy and classify SISD, SIMD, MISD, MIMD.
4. Why is MISD rarely used in practice?
5. Explain SPMD and MPMD in MIMD systems.
6. Define concurrency and differentiate it from parallelism.
7. Explain race condition, deadlock, and starvation with short examples.
8. Explain critical section problem and its required properties.
9. Explain producer-consumer, readers-writers, and dining philosophers problems.
10. Compare RISC and CISC architectures.
11. Explain vector processor and scalar processor differences.
12. Explain attached array processor and SIMD array processor.
13. Explain vector processor classifications: memory-to-memory and register-to-register.
14. Explain multithreading and thread lifecycle.
15. Compare multithreading and multitasking.
16. Explain mutex and semaphore with differences.
17. Explain binary semaphore and counting semaphore.
18. Explain Amdahl law and its practical significance in parallel computing.
19. Explain fixed-time (scaled) interpretation of Amdahl law.
20. Explain pipelining architecture, stages, hazards, and mitigation methods.

---

## Last-Minute Revision Sheet (1-2 lines each)

- Concurrency means many tasks in progress; parallelism means many tasks executing at same time.
- Critical section must satisfy mutual exclusion, progress, and bounded waiting.
- Mutex is ownership lock; semaphore is counter-based synchronization.
- SIMD: same instruction, multiple data. MIMD: multiple instructions, multiple data.
- Vector processors are best for data-parallel math-heavy workloads.
- RISC favors simple instructions and pipelining; CISC favors complex instructions and code density.
- Amdahl law: serial part limits total speedup.
- Pipelining increases throughput by overlapping IF-ID-EX-MEM-WB stages.
- Hazards (data/structural/control) reduce ideal pipeline performance.
- Branch prediction, forwarding, and register renaming improve pipeline efficiency.

---

## Quick 5-Mark and 10-Mark Writing Templates

5-Mark Template:
- Definition.
- 3 key features.
- 2 advantages/disadvantages.
- 1 example.
- 1-line conclusion.

10-Mark Template:
- Definition and background.
- Working/principle in steps.
- Classification/types.
- Comparison with related concept.
- Advantages, disadvantages, applications.
- Short conclusion with practical importance.

Good luck. If you want, I can also make a second file with "ready-to-memorize model answers" for each important 5-10 mark theory question.