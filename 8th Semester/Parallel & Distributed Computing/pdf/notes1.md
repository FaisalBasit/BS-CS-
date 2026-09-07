# CS-482 Complete Theory Notes (Lectures 1 to 8)

These notes are made for theory paper preparation.
The style is balanced: not too short, not too long, and every point is self-explanatory.

## How to Write 5-Mark and 10-Mark Answers

For 5 marks:
- Start with a clear definition in 2 to 3 lines.
- Explain 3 to 4 core points with short explanation.
- Add one practical example.
- End with one concluding line.

For 10 marks:
- Start with definition and background.
- Explain working, types, or architecture in steps.
- Add advantages, disadvantages, and applications.
- Add a short comparison with related concept.
- End with a conclusion focused on real-world importance.

---

## Lecture 1: Introduction to Parallel and Distributed Computing

### 1) Short Computing History

- Early computers like ENIAC and UNIVAC were large, vacuum-tube based machines with limited performance.
- Mainframe era improved computational power, and IBM System/360 became a key milestone.
- Personal computer era made computing affordable and user-friendly, led by systems like Apple II and IBM PC.

### 2) Moore's Law

- Proposed by Gordon Moore in 1965.
- It states that transistor count on chips tends to double roughly every two years.
- This trend enabled smaller, faster, and more power-efficient computers.
- It strongly influenced growth from personal devices to supercomputers.

### 3) Serial Computation

- A serial program runs on a single CPU.
- A problem is divided into instructions executed one after another.
- At any instant, only one instruction is executed.
- This model is simpler but slower for large and complex workloads.

### 4) Parallel Computing

Definition:
- Parallel computing means using multiple processing units at the same time to solve a problem faster.

Working idea:
- Break a large problem into smaller subproblems.
- Execute these subproblems concurrently on different processors.
- Combine partial results into final output.

Examples:
- AI and ML workloads, supercomputers, blockchain systems, graphics workloads, IoT analytics.

Advantages:
- Faster execution for compute-heavy tasks.
- Better utilization of available processors.
- Good scalability with additional cores/processors.
- Strong performance in simulation, modeling, and data processing.

Disadvantages:
- Parallel programming is harder than serial programming.
- Synchronization and communication between tasks can become bottlenecks.
- Hardware and infrastructure cost can be high.

### 5) Distributed Computing

Definition:
- Distributed computing uses multiple autonomous computers connected by a network, and they appear as one system to users.

Core properties:
- No global shared memory across all nodes.
- Nodes communicate through message passing.
- One large task is divided among multiple machines.

Examples:
- Scientific research clusters, large-scale ML systems, financial analytics, blockchain networks, IoT cloud platforms.

Advantages:
- Fault tolerance: failure of one node does not stop the whole system.
- Horizontal scalability: add more machines for more capacity.
- Cost-effective growth using commodity hardware.
- Geographic distribution can reduce local bottlenecks.

Disadvantages:
- Harder to manage due to network delays and node failures.
- Inter-node communication overhead can reduce performance.
- Security is more challenging because the system depends on networked communication.

### 6) Parallel vs Distributed Computing

Parallel computing:
- Focuses on speeding up one problem by executing many operations simultaneously.
- Often uses tightly-coupled processors and high-speed communication.
- Can use shared memory, distributed memory, or hybrid memory.

Distributed computing:
- Focuses on scale, availability, and fault tolerance using many machines.
- Communication is network-based message passing.
- Memory is physically distributed across nodes.

### 7) Communication Concepts in Parallel Programs

- Communication cost includes packaging, transmitting, and synchronizing data.
- Latency is the startup delay to send a small message.
- Bandwidth is the amount of data transferred per unit time.
- Too many small messages increase latency overhead.
- Synchronous communication is blocking (task waits).
- Asynchronous communication is non-blocking (task can continue work).
- Point-to-point communication happens between two tasks.
- Collective communication involves all tasks in a communication group.

### 8) Parallel Memory Architectures

Shared Memory:
- All processors access one global memory space.
- Easy data sharing and convenient programming model.
- Scalability is limited due to contention on shared memory paths.
- Programmer must carefully control concurrent memory access.

Distributed Memory:
- Each processor has its own local memory.
- Data exchange requires explicit communication.
- Better scalability as processors and memory increase together.
- Programmer must design communication logic explicitly.

Hybrid Memory:
- Shared memory inside a node, distributed communication across nodes.
- Used by large modern HPC systems.
- Provides better scalability and performance.
- Increases programming complexity.

### 9) Flynn Taxonomy (intro in Lecture 1)

- Flynn classification is based on instruction stream count and data stream count.
- SISD: single instruction, single data.
- SIMD: single instruction, multiple data.
- MISD: multiple instruction, single data (rare).
- MIMD: multiple instruction, multiple data.

---

## Lecture 2: Flynn Taxonomy and Types of Parallelism

### 1) Instruction Stream and Data Stream

- Instruction stream is the sequence of instructions fetched and executed.
- Data stream is the sequence of data items used by these instructions.
- Flynn taxonomy classifies architecture by how many instruction and data streams run simultaneously.

### 2) SISD (Single Instruction, Single Data)

- One processor executes one instruction stream on one data stream.
- Instructions run sequentially.
- Represents traditional Von Neumann style systems.
- Common in classic PCs and sequential execution environments.

### 3) SIMD (Single Instruction, Multiple Data)

- A common control unit broadcasts the same instruction to many processing elements.
- Each processing element applies that instruction to different data.
- Best suited for vector/matrix workloads and image/signal processing.
- Typical examples include vector machines and modern GPU-style processing.

SIMD subcategories:
- Array processor: each unit executes same instruction with its own local memory/registers.
- Pipelined processor: units process stages of data from a central source.
- Associative processor: each unit can selectively execute instruction based on local condition (masked execution).

### 4) MISD (Multiple Instruction, Single Data)

- Multiple processing units apply different instructions on the same data stream.
- Rarely used in general systems because practical use cases are limited.
- Sometimes discussed in fault-tolerant redundant computation contexts.

Why MISD is rare:
- Difficult workload mapping.
- Low practical throughput gain for common applications.
- Higher complexity with limited advantage.

### 5) MIMD (Multiple Instruction, Multiple Data)

- Multiple processors execute different instructions on different data sets.
- Processors usually work asynchronously.
- Most modern multi-core and distributed systems follow MIMD principles.

MIMD categories:
- Shared-memory MIMD: processors communicate via common global memory.
- Distributed-memory MIMD: processors communicate via interconnection network/message passing.

Comparison:
- Shared-memory MIMD is easier to program but scales less due to memory contention.
- Distributed-memory MIMD scales better and isolates failures but needs explicit communication.

### 6) SPMD and MPMD Models

SPMD (Single Program, Multiple Data):
- All processors run the same program on different data portions.
- Processors can follow different control paths based on local data.
- Widely used in HPC and distributed training/inference pipelines.

MPMD (Multiple Program, Multiple Data):
- Different processors run different programs on different data.
- Common in manager-worker and heterogeneous systems.

### 7) Types of Parallelism

Hardware-level parallelism:
- Pipelining in CPU stages.
- Superscalar execution.
- VLIW architectures.
- SIMD/vector units and GPUs.
- Multiprocessors and multi-core systems.
- Cluster/multi-computer systems.

Software-level parallelism:
- Instruction-level parallelism (ILP).
- Data-level parallelism (DLP).
- Task-level parallelism (TLP).

### 8) Need, Applications, and Limits of Parallel Computing

Need:
- Real-world systems generate huge data and need faster computation.
- Serial computing wastes available hardware parallel capability.

Applications:
- Databases and data mining.
- Scientific and engineering simulation.
- Real-time systems.
- AR/VR and advanced graphics.

Limitations:
- Communication and synchronization overhead.
- Parallel algorithm design is difficult.
- Requires skilled programmers.
- Portability across different architectures is hard.

Future direction:
- Multi-core processors, high-speed networks, and distributed platforms make parallel methods increasingly important.

---

## Lecture 3: Concurrent Systems and Processor Types (RISC and CISC)

### 1) Concurrency in OS

Definition:
- Concurrency means multiple processes/threads make progress during overlapping time.

Key understanding:
- It may be true simultaneous execution (on multiple cores) or interleaved execution (via context switching on one core).
- It improves responsiveness and resource utilization in multitasking systems.

### 2) Motivation for Concurrent Systems

- Physical resource sharing in multi-user environments.
- Logical resource sharing, such as shared files/data.
- Speedup through overlapping execution.
- Better modular design by splitting system functions.

### 3) Process Relationships

Independent process:
- Does not share state with others.
- Output is deterministic for same input.
- Its termination does not affect others.

Cooperating process:
- Shares state/resources with others.
- Output may depend on execution order.
- Its behavior can affect other processes.

### 4) Process Operations

Process creation:
- Parent creates child processes.
- Parent and child can run concurrently, or parent can wait.
- Child may share all or part of parent resources.

Process termination:
- Parent may terminate child if resource limits are exceeded or child task is no longer needed.
- In many models, if parent exits, child cleanup/termination must be handled.

### 5) Principles and Issues in Concurrency

Principle:
- Relative execution speed/order is unpredictable due to interrupts, scheduler behavior, and other process activity.

Common issues:
- Race condition.
- Deadlock.
- Starvation.
- Blocking for long durations.
- Hard reproducibility of bugs.

### 6) Advantages and Drawbacks of Concurrency

Advantages:
- Multiple applications can run together.
- Better resource utilization.
- Better average response time.
- Better throughput when workloads use different resources.

Drawbacks:
- Requires protection between applications.
- Requires synchronization mechanisms.
- Adds overhead for scheduling/context switching.
- Too much concurrency can degrade performance.

### 7) Concurrency vs Parallelism

- Concurrency is about structure: handling many tasks in overlapping time.
- Parallelism is about hardware execution: running tasks literally at the same instant.

### 8) Microprocessor Basics and Types

Microprocessor:
- CPU on a chip that fetches, decodes, and executes instructions.
- Core brain of modern computers and smart devices.

Types:
- Scalar processor: processes one data element at a time.
- Vector processor: processes multiple data elements in vector style.
- Array processor (SIMD): many processing elements perform same operation on different data.
- Superscalar processor: multiple pipelines execute more than one instruction per cycle.

### 9) RISC vs CISC

RISC concept:
- Simplify instruction set and hardware.
- Typical flow is load, operate, store.

RISC characteristics:
- Simple, fixed-length instructions.
- Usually near single-cycle execution style.
- More general-purpose registers.
- Simple addressing modes.
- Pipeline-friendly design.

RISC advantages:
- Faster decode and execution.
- Better energy efficiency.
- Strong pipelining potential.

RISC disadvantages:
- Complex tasks may require more instructions.
- Program size and memory use can increase.

CISC concept:
- Use complex instructions that combine multiple operations.

CISC characteristics:
- Variable-length and complex instructions.
- Rich addressing modes and data types.
- Often needs multiple cycles per instruction.
- Fewer registers in some designs due to memory-based operations.

CISC advantages:
- Smaller code size for many tasks.
- Fewer instructions needed for complex operations.
- Long software compatibility ecosystem.

CISC disadvantages:
- More complex decode/control logic.
- Higher power and design complexity.
- Slower instruction decode in many cases.

Performance tradeoff summary:
- RISC reduces cycles per instruction, often with more instructions per program.
- CISC reduces instructions per program, often with more cycles per instruction.

---

## Lecture 4: Vector and Array Processors

### 1) Array Processor Overview

- Array processors are designed for large data-array computations.
- They accelerate repetitive numerical operations by exploiting data parallelism.

### 2) Attached Array Processor

- An auxiliary processor is attached to a host computer to speed numerical work.
- It has two interfaces: one with host/I-O and one with local memory.
- Host remains general-purpose controller, attached processor handles heavy backend computation.
- Useful when host alone would take very long for large instruction batches.

### 3) SIMD Array Processor

- Built as a parallel machine with many processing elements under one control unit.
- Control unit decodes instruction and broadcasts control signals to all processing elements.
- All elements execute same instruction simultaneously on different data.
- Each processing element typically has ALU, floating-point unit, registers, and local memory.

### 4) SIMD Array Operation

- Master control unit handles instruction control.
- Scalar/program-control instructions are handled centrally.
- Vector data is distributed across local memories of processing elements.
- Neighbor links between processing elements support data exchange patterns.

### 5) Vector Processor Classification

Memory-to-memory architecture:
- Operands and results move directly between main memory and pipelines.
- Flexible for larger vectors.
- Generally slower due to heavy memory traffic.

Register-to-register architecture:
- Data is first loaded into vector registers, processed there, then written back.
- Higher speed due to fast register operations.
- Limited by register file size and higher hardware cost.

Hybrid architecture:
- Combines memory-to-memory and register-to-register approaches.
- Balances flexibility and performance.

### 6) Advantages of Vector Processors

- High SIMD parallelism for repeated operations on large datasets.
- Better computational throughput for scientific/engineering workloads.
- Lower instruction overhead because one vector instruction handles many elements.
- Better memory bandwidth utilization through vectorized transfers.
- Useful in simulation, signal processing, AI, rendering, and analytics.

### 7) Disadvantages and Limitations

Disadvantages:
- Programming and optimization are complex.
- Specialized hardware raises system cost.
- Not suitable for inherently sequential problems.

Limitations:
- Bounded by instruction and memory system capabilities.
- May need instruction/data restructuring for complex workflows.

### 8) Vector Processor vs Scalar Processor

Vector processors:
- Process many data elements in parallel.
- Higher performance for data-parallel tasks.
- Higher complexity, power, and cost.

Scalar processors:
- Process one data element at a time.
- Simpler, cheaper, and lower power.
- Better for control-heavy or lightly parallel workloads.

### 9) Vector Instruction Format and Fields

Typical vector instruction fields:
- Opcode: operation type.
- Vector register specifier: source/destination vectors.
- Vector length: number of elements.
- Base address: starting memory location.
- Offset/displacement: effective address adjustment.
- Address increment (stride): spacing between elements.
- Mask/predicate: selective element execution.
- Data type field: element type information.

---

## Lecture 5: Multithreading and Process Synchronization

### 1) Multithreading Basics

- Multithreading allows one process to run multiple threads.
- Threads are lightweight execution units sharing process resources.
- It improves responsiveness and CPU utilization.

How it appears to users:
- Even on a single core, rapid context switching creates an effect of simultaneous activity.
- On multi-core systems, threads can truly execute in parallel.

### 2) Multitasking and Its Relation to Threads

Multitasking:
- Running multiple programs concurrently at OS level.

Multithreading:
- Running multiple threads inside a single program.

Process vs thread:
- Process is an independent execution environment.
- Thread is a smaller execution path inside a process.

### 3) Multithreading vs Multitasking

Multithreading:
- Scope is within one application.
- Improves one app's performance and responsiveness.
- Thread management is partly application-controlled.

Multitasking:
- Scope is across multiple applications.
- Improves overall system utilization.
- Scheduling and switching are primarily OS-controlled.

### 4) Thread Lifecycle

- New: thread is created but not started.
- Runnable: ready and eligible for CPU execution.
- Waiting: paused until event/signal arrives.
- Timed waiting: waits for fixed time or event.
- Terminated: execution finished.

### 5) Concurrent Execution vs Parallel Execution

- Concurrent execution: tasks progress by interleaving on one processor.
- Parallel execution: tasks run at same instant on separate processors/cores.

### 6) Benefits and Drawbacks of Multithreading

Benefits:
- Better throughput and CPU efficiency.
- Better UI responsiveness by isolating long operations.
- Better handling of many client requests in server systems.
- Better modular decomposition of complex tasks.

Drawbacks:
- Synchronization is difficult.
- Race conditions and deadlocks can occur.
- Starvation/resource contention may occur.
- Debugging and testing are harder.

### 7) Process Synchronization

Definition:
- Synchronization coordinates process/thread execution to ensure safe shared-resource access.

Goal:
- Preserve data consistency and integrity.
- Prevent race conditions and inconsistent updates.

If synchronization is missing:
- Inconsistency in shared data.
- Data loss by conflicting writes.
- Deadlocks in cooperative interactions.

### 8) Types of Process Synchronization

Competitive synchronization:
- Processes compete for shared resources.
- Without control, causes inconsistency and data loss.

Cooperative synchronization:
- Process execution affects other processes.
- Without control, may cause deadlocks.

### 9) Conditions That Require Synchronization

- Critical section exists (shared resource access).
- Race condition possibility exists.
- Pre-emption can interrupt operations before completion.

### 10) Race Condition and Critical Section

Race condition:
- Final result depends on unpredictable execution order.
- Example: concurrent deposit/withdraw operations can produce incorrect balance.

Critical section:
- Code block that accesses shared resource.
- Must be executed atomically by one process/thread at a time.

### 11) Classical IPC Problems

Producer-Consumer:
- Producer inserts data into bounded buffer, consumer removes it.
- Main risks: buffer overflow and buffer underflow.

Readers-Writers:
- Many readers can read together.
- Writer must get exclusive access to prevent inconsistent data.

Dining Philosophers:
- Models deadlock/starvation in resource allocation among competing processes.

### 12) Critical Section Correctness Conditions

- Mutual exclusion: at most one process in critical section.
- Progress: if no one is inside, waiting processes can decide who enters next.
- Bounded waiting: a waiting process gets chance in finite steps.

### 13) Kernel Approaches

Preemptive kernel:
- A process can be preempted even in kernel mode.

Non-preemptive kernel:
- Kernel-mode process runs until exit/block/yield.
- Naturally avoids some race conditions on kernel data structures.

### 14) Synchronization Tradeoffs

Advantages:
- Maintains correctness and consistency.
- Prevents race conditions.
- Supports safer resource sharing.

Disadvantages:
- Adds overhead and complexity.
- Can reduce parallelism if overused.
- Incorrect design can cause deadlock and starvation.

---

## Lecture 6: Concurrency Control (Mutex and Semaphore)

### 1) Synchronization Primitives in OS

- Mutex and semaphore are kernel-level tools for synchronization.
- They protect shared resources during concurrent access.

### 2) Mutex

Definition:
- Mutex (mutual exclusion object) is a lock with strict ownership.

Key points:
- Only the thread/process that locked the mutex can unlock it.
- Used for protecting one critical section/resource at a time.
- Strongly suited to mutual exclusion rather than general signaling.
- Priority inheritance can reduce priority inversion impact.

### 3) Mutual Exclusion Concept

- Mutual exclusion means no two processes execute in critical section simultaneously.
- It is required to eliminate race conditions.
- Applies in interrupts, multithreaded systems, multiprocessors, and distributed setups.

Conditions/requirements for correct mutual exclusion:
- At most one process in critical section.
- No speed assumptions about competing processes.
- A process outside critical section should not block others unnecessarily.
- Entry should be granted in finite time (no infinite postponement).

### 4) Approaches to Implement Mutual Exclusion

Software approach:
- Implement logic in software protocol.
- Can be error-prone and expensive if not carefully designed.

Hardware approach:
- Use atomic machine instructions for lock operations.
- Fast, but not sufficient alone to avoid all deadlock/starvation cases.

Programming language/OS support:
- High-level synchronization primitives and kernel support simplify usage.

### 5) Semaphore

Definition:
- Semaphore is a counter-based synchronization mechanism for coordinating access to shared resources.

Operations:
- wait (P): decrement semaphore; block if resource unavailable.
- signal (V): increment semaphore; wake blocked process if present.

Behavior:
- If semaphore value is zero, further wait requests block.
- Counting semantics allow controlling multiple instances of a resource.

### 6) Types of Semaphore

Binary semaphore:
- Values are 0 or 1.
- Used for mutual exclusion similar to lock behavior.

Counting semaphore:
- Value can be any non-negative count.
- Controls access to limited pool of resources.

### 7) Semaphore Working Model

- Critical section is wrapped by wait and signal.
- Enter section after successful wait.
- Leave section and release with signal.
- Queue-based implementations avoid wasteful busy waiting.

### 8) Busy Waiting and Improved Blocking Approach

Busy waiting issue:
- Repeatedly checking lock/semaphore wastes CPU cycles.
- May lead to spinlock overhead.

Improved approach:
- If resource unavailable, process is blocked and queued.
- On signal, one waiting process is awakened.
- This improves CPU efficiency and fairness.

### 9) Uses, Advantages, and Disadvantages of Semaphores

Uses:
- Mutual exclusion.
- Process ordering/synchronization.
- Limited resource management.
- Reader-writer style coordination.

Advantages:
- Flexible and widely applicable synchronization primitive.
- Helps prevent race conditions.
- Supports coordination among multiple processes.

Disadvantages:
- Hard debugging and maintenance in complex systems.
- Incorrect use can still cause deadlocks.
- Extra overhead from synchronization operations.
- Potential priority inversion and starvation concerns.

### 10) Mutex vs Semaphore

Mutex:
- Ownership-based lock.
- Best for one critical resource and strict exclusion.
- Unlock must be done by lock owner.

Semaphore:
- Counter-based synchronization primitive.
- Good for signaling and managing multiple resource instances.
- No strict ownership requirement like mutex.

---

## Lecture 7: Amdahl Law

### 1) Basic Speedup Concept

- For fixed workload W, speedup is ratio of old execution time to new execution time.
- If T1 is old time and T2 is new time, speedup S = T1/T2.

### 2) Main Idea of Amdahl Law

- Overall speedup is limited by the program portion that does not benefit from improvement.
- Let alpha be the fraction not improved (serial or unaffected part).
- Let q be speedup factor of improved portion.

Amdahl formula:
- S = 1 / (alpha + (1 - alpha)/q)

Equivalent interpretation:
- Improving only one part gives diminishing returns once unaffected part dominates total time.

### 3) Limit Case and Maximum Speedup

- As q approaches very large values, improved part time approaches zero.
- Maximum speedup becomes Smax = 1/alpha.
- So, even infinite processors cannot exceed this bound if serial fraction remains.

Example insight:
- If 10% code is serial, theoretical maximum speedup is 10.

### 4) Practical Implications

- Make common case fast because frequent operations dominate runtime.
- Optimizing rare paths gives limited total performance gain.
- Parallel design must reduce serial bottlenecks for meaningful global speedup.

### 5) Scaled (Fixed-Time) Interpretation

- Criticism of basic Amdahl view: users often scale problem size when more processors are available.
- In fixed-time view, larger problems are solved in same acceptable runtime.
- This explains practical value of parallel machines for very large workloads.
- Key message: scaling problem size can make parallel systems more beneficial than fixed-size analysis suggests.

---

## Lecture 8: Pipelining Architecture

### 1) Definition and Need

Definition:
- Pipelining overlaps instruction stages so different instructions are processed simultaneously at different stages.

Need:
- Increases instruction throughput.
- Improves CPU functional-unit utilization.
- Reduces total execution time for instruction streams.
- Supports high-performance processor design.

### 2) Types of Pipelining

Hardware pipelining:
- Implemented by processor hardware stage design.
- Includes instruction pipelining, arithmetic pipelining, and data pipelining.

Software pipelining:
- Compiler-level instruction reordering to reduce stalls and improve parallel execution.
- Includes loop unrolling, VLIW scheduling, speculative execution, and thread-level decomposition.

### 3) Cost vs Performance Tradeoff

- Deeper pipelines can increase clock frequency and throughput.
- But deeper pipelines increase complexity, power, hazard handling cost, and branch penalty.
- System design must balance target performance, power, area, and workload nature.

### 4) Five Classic Pipeline Stages

IF (Instruction Fetch):
- Fetch next instruction and update program counter.

ID (Instruction Decode):
- Decode operation, read operands, generate control signals.

EX (Execute):
- Perform ALU operations and branch target computations.

MEM (Memory Access):
- Read/write data for load/store instructions.

WB (Write Back):
- Write result to destination register.

### 5) Important Optimizations by Stage

- IF: instruction prefetching and branch prediction.
- ID: register renaming and out-of-order preparation.
- EX: operand forwarding and multiple execution units.
- MEM: cache hierarchy optimization.
- WB: forwarding and write buffering.

### 6) Pipelined vs Non-Pipelined Execution

- Non-pipelined CPU finishes one instruction completely before starting next.
- Pipelined CPU overlaps stages of multiple instructions.
- Throughput improves significantly after pipeline fill.
- Latency of one instruction may remain similar, but system-level instruction completion rate increases.

### 7) Pipeline Characteristics

- Segmenting instruction cycle into stages.
- Concurrent stage utilization.
- High throughput after fill.
- Pipeline depth affects potential performance and complexity.
- Real speedup is less than ideal due to stalls and hazards.

### 8) Pipeline Hazards

Data hazards:
- RAW (Read After Write), WAR (Write After Read), WAW (Write After Write).

Structural hazards:
- Resource conflict when hardware unit demand overlaps.

Control hazards:
- Branch/jump uncertainty changes instruction flow.

### 9) Hazard Mitigation Techniques

- Operand forwarding/bypassing.
- Instruction scheduling.
- Branch prediction and speculative execution.
- Delay slots in some architectures.
- Register renaming to remove false dependencies.

### 10) Key Pipelining Formulas (conceptual)

For N instructions and K stages:
- Non-pipelined cycles = N * K
- Pipelined cycles = K + (N - 1)
- Speedup = (non-pipelined time) / (pipelined time)

CPI concept:
- Ideal pipeline CPI approaches 1 for large N.
- Non-pipelined CPI is closer to K (one full stage sequence per instruction).

Utilization concept:
- Pipeline utilization improves as N becomes much larger than K.

---

## High-Priority Theory Questions (Prepare These First)

1. Explain serial, parallel, and distributed computing with examples and differences.
2. Compare shared, distributed, and hybrid memory architectures in parallel systems.
3. Explain Flynn taxonomy and justify use cases of SISD, SIMD, MISD, and MIMD.
4. Why is MISD rarely implemented in practical computer systems?
5. Differentiate shared-memory MIMD and distributed-memory MIMD.
6. Explain SPMD and MPMD execution models with suitable scenarios.
7. Define concurrency and explain its motivations in operating systems.
8. Explain race condition, deadlock, and starvation with practical examples.
9. Explain critical section problem and the conditions: mutual exclusion, progress, bounded waiting.
10. Explain producer-consumer, readers-writers, and dining philosophers as IPC synchronization problems.
11. Explain scalar, vector, and array processors with application suitability.
12. Compare RISC and CISC in terms of design philosophy and performance tradeoff.
13. Explain attached array processor and SIMD array processor architecture and working.
14. Explain vector processor classifications: memory-to-memory, register-to-register, and hybrid.
15. Explain vector instruction format and fields used in vector instruction sets.
16. Explain multithreading, thread lifecycle, and difference between multithreading and multitasking.
17. Explain mutex and semaphore in detail with differences and use cases.
18. Explain binary semaphore and counting semaphore with behavior.
19. Explain Amdahl law, speedup limits, and practical implications.
20. Explain pipelining stages, hazards, mitigation methods, and throughput-latency tradeoff.

---

## Last-Minute Revision Points

- Parallel computing increases speed for one problem; distributed computing increases scale and fault tolerance across machines.
- Shared memory is easier to program; distributed memory scales better.
- SIMD is best for data-parallel workloads; MIMD is best for general parallel workloads.
- Concurrency is overlapping progress; parallelism is simultaneous execution.
- Critical section safety depends on mutual exclusion, progress, and bounded waiting.
- Mutex has ownership; semaphore is counter-based and supports signaling/resource counting.
- Amdahl law says serial fraction limits total speedup.
- Pipeline throughput improves by overlapping IF, ID, EX, MEM, and WB.
- Data, structural, and control hazards reduce ideal pipeline gain.
- Branch prediction, forwarding, scheduling, and renaming are core hazard-control techniques.
