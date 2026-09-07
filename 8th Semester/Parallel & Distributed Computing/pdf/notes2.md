# Parallel & Distributed Computing - Exam Notes 
*(Simplified & Exam-Ready)*

---

## Lecture 1: Introduction to Parallel and Distributed Computing

**Computing History:**
*   **Early Era:** ENIAC/UNIVAC used vacuum tubes, taking up entire rooms.
*   **Mainframes:** IBM System/360 enhanced processing power in the 1960s.
*   **Personal Computers:** Apple II and IBM PC popularized personal computing.
*   **Moore's Law:** Predicts that the number of transistors on a microchip doubles every two years, driving the massive growth in processing power.

**Types of Computing:**
*   **Serial Computing:** Traditional approach where a single CPU executes unbroken sequences of instructions one after another.
*   **Parallel Computing:** The simultaneous use of multiple compute resources (CPUs) to solve a single problem. The problem is broken into parts that are processed at the same time.
    *   *Advantages:* Saves time (increased speed), efficient use of resources, highly scalable, and best for complex mathematical tasks.
    *   *Disadvantages:* High programming complexity, synchronization issues between processors, and expensive hardware costs.
*   **Distributed Computing:** Multiple autonomous computers connected via a network that appear to the user as a single system. They communicate via message passing (no shared memory).
    *   *Advantages:* High fault tolerance (if one fails, others keep working), cost-effective (uses regular machines), highly scalable, and capable of geographic distribution.
    *   *Disadvantages:* Complex to manage, high communication overhead (network delays), and security risks (due to network dependency).

---

## Lecture 2: Flynn’s Taxonomy & Types of Parallelism

**Flynn's Taxonomy (1966):**
A standard classification of computer architectures based on the number of **Instruction Streams** and **Data Streams**. 

1.  **SISD (Single Instruction, Single Data):** 
    *   A traditional uniprocessor machine (e.g., standard older PCs). 
    *   Executes one instruction on a single piece of data sequentially.
2.  **SIMD (Single Instruction, Multiple Data):**
    *   A single processor executes the exact same instruction on multiple sets of data simultaneously. 
    *   Best for vector, matrix, and image/signal processing.
    *   *Types:* Array Processor, Pipelined Processor, Associative Processor.
3.  **MISD (Multiple Instruction, Single Data):**
    *   Multiple processors perform different instructions on the exact same dataset.
    *   Not commonly used in commercial applications.
4.  **MIMD (Multiple Instruction, Multiple Data):**
    *   Multiple processors execute entirely different instructions on different datasets.
    *   Standard for modern distributed and parallel processing.
    *   *Shared Memory MIMD:* Processors communicate via one shared global memory.
    *   *Distributed Memory MIMD:* Each processor has its own local memory.

---

## Lecture 3: Concurrent Systems (Processors)

**Concurrency:**
The OS handles multiple tasks or processes at the same time, optimizing CPU/memory usage and improving system responsiveness.

**Process Types:**
*   **Independent Processes:** Execution state is not shared. Input strictly dictates output. (Predictable)
*   **Cooperating Processes:** State is shared among processes. Execution outcomes depend on sequence and timing. (Non-deterministic)

**Key Issues in Concurrency:**
*   **Race Conditions:** When the outcome depends on which process reaches a specific point first.
*   **Blocking & Starvation:** A process is stuck waiting for resources indefinitely.
*   **Deadlock:** Two or more processes block each other, causing the system to freeze.

**Advantages & Drawbacks:**
*   *Pros:* Running multiple applications simultaneously, better resource utilization, vastly improved response times.
*   *Cons:* Difficult to coordinate smoothly, hard to track bugs/errors, creates heavy overhead on the Operating System.

---

## Lecture 4: Vector and Array Processors

**Array Processors:**
Designed specifically to perform operations on enormous arrays of data at once.
1.  **Attached Array Processor:** Functions as an auxiliary processor connected to a general-purpose host computer to speed up numerical computations. Focuses on heavy lifting for the host.
2.  **SIMD Array Processor:** Built directly into the computer. A Master Control Unit issues one instruction to multiple Processing Elements (PEs), causing them all to execute the same instruction on their local data simultaneously. 

**Vector Processor Architecture Types:**
*   **Memory-to-Memory:** Retrieves operands and writes results straight to main memory. Slower speed but no limitation on data size.
*   **Register-to-Register:** Uses vector registers for operands/results. Much faster execution, but size is limited and hardware is expensive.
*   **Hybrid:** Uses a mix of both for maximum efficiency depending on the task.

---

## Lecture 5: Multi-Threading

**What is Multi-Threading?**
It allows a single program to perform multiple sub-tasks (threads) at the same time. Think of it as a single process dividing into smaller, lightweight units of execution.

**Multitasking vs. Multithreading:**
*   **Multitasking:** OS running multiple *different programs* at once (e.g., Chrome, Word, and Spotify).
*   **Multithreading:** A single program executing multiple *threads* (e.g., Word checking spelling while you type).

**Thread Lifecycle:**
1.  **New:** Thread is created.
2.  **Runnable:** Thread starts executing.
3.  **Waiting/Timed Waiting:** Paused while waiting for a resource or a signal from another thread.
4.  **Terminated (Dead):** Thread finishes its execution.

**Execution Types:**
*   *Concurrent:* A single CPU quickly switches between threads (illusion of parallel).
*   *Parallel:* Threads run physically at the exact same time on multi-core processors.

---

## Lecture 6: Concurrency Control (Mutex & Semaphore)

**Mutual Exclusion:**
A foundational rule of process synchronization dictating that *"no two processes can exist in the critical section (shared code/resource area) at the exact same time."* It prevents race conditions and data corruption.

**Techniques for Synchronization:**
1.  **Mutex (Mutual Exclusion Object):** 
    *   A strict locking mechanism. 
    *   Only the exact thread that acquired (locked) the mutex can unlock it. 
    *   Strictly used for protecting a critical section so one thread accesses it at a time.
2.  **Semaphore:**
    *   A signaling mechanism that uses a counter to manage access to shared resources.
    *   Allows a specific number of instances to be accessed simultaneously (unlike Mutex which is strictly 1).
    *   Uses `wait` (decrements counter) and `signal` (increments counter) operations to coordinate threads.

---

## Lecture 7: Amdahl’s Law

**Core Concept:**
Amdahl’s Law states that the overall performance improvement you can gain by parallelizing a system is strictly limited by the remaining **sequential (non-parallelizable) portion** of the code.

**Key Takeaways for Theory Questions:**
*   **The Bottleneck:** Even with an infinite number of processors, the maximum possible speedup is limited by the code that *must* run sequentially. (e.g., If 10% of a program cannot be parallelized, the maximum speedup is 10x, no matter how many CPUs you add).
*   **Golden Rule of Design:** "Make the common case fast." Developers should focus on optimizing the most frequently executed parts of the code for the biggest performance boost.
*   **Scaled Amdahl's Law (Gustafson's Law context):** Responds to the criticism of standard Amdahl's law by pointing out that as computing power increases, users tend to run larger, more complex problem sizes rather than just solving the identical small problem faster.

---

## Lecture 8: Pipelining Architecture

**What is Pipelining?**
A technique where multiple instruction stages are overlapped during execution to boost CPU efficiency and throughput. Instead of waiting for one instruction to fully finish, the CPU starts the next one right behind it in an assembly-line fashion.

**Need for Pipelining:**
*   Increases instruction throughput.
*   Reduces overall execution time without changing the underlying hardware capabilities.
*   Enables much higher CPU clock speeds.

**Types of Pipelining:**
1.  **Hardware Pipelining:** The physical CPU unit is split into dedicated hardware segments (e.g., Instruction pipelining, Arithmetic ALUs, Data DMA).
2.  **Software Pipelining:** The Software/Compiler optimizes and rearranges instructions (like loop unrolling or speculative execution) to keep the pipeline full without needing new hardware.

**5 Standard Stages in a Pipeline:**
1.  **Fetch (IF):** Get the instruction from memory.
2.  **Decode (ID):** Understand what the instruction means.
3.  **Execute (EX):** Calculate or perform the action.
4.  **Memory Access (MEM):** Read/write to the memory if required.
5.  **Write Back (WB):** Save the final result back to the CPU's registers.

**Tradeoffs:** While pipelining drastically improves performance, making a pipeline "deeper" (more stages) increases design complexity, hardware cost, and raises power consumption. Complexity also triggers hazards (like branching issues) that require expensive fixes.