# CS-482 Exam Notes 3
Parallel and Distributed Computing

These notes are written for theory-based exams. For a 5 to 10 mark answer, use this pattern:
- Start with a clear definition.
- Add the main points in short, simple sentences.
- Give one example or comparison if needed.
- End with 1 or 2 lines of conclusion.

## Lecture 1: Introduction to Parallel and Distributed Computing

### Computing history
- Early computers like ENIAC and UNIVAC were huge, room-sized machines that used vacuum tubes.
- Mainframes such as IBM System/360 improved processing power in the 1960s.
- Personal computers became popular in the late 20th century through Apple and Microsoft.
- Apple II and IBM PC helped start the modern PC era.
- Moore's law says that the number of transistors on a chip roughly doubles every two years.
- Moore's law is important because it explains why computers keep getting smaller, faster, and cheaper.

### Serial computation
- Serial computation means one program runs on one CPU.
- A problem is broken into steps, and the steps are executed one after another.
- Only one instruction is active at a time.
- This model is simple, but it becomes slow for large problems.

### Parallel computing
- Parallel computing means solving one problem using multiple processing elements at the same time.
- The problem is divided into smaller parts, and each part is handled simultaneously.
- Parallel computing saves time because many operations run together.
- It is useful when a task is too large or too slow for serial execution.
- Examples include blockchain systems, smartphones, laptops, IoT devices, AI and machine learning, space shuttles, and supercomputers.

### Advantages of parallel computing
- It reduces execution time.
- It uses hardware resources better.
- It can solve large and complex problems efficiently.
- It improves performance for scientific, engineering, and data-heavy tasks.

### Disadvantages of parallel computing
- Programming is more complex than serial programming.
- Processes must be synchronized properly.
- Hardware can be expensive.
- Poor design can reduce the expected speedup.

### Distributed computing
- Distributed computing uses multiple autonomous computers that appear to the user as one system.
- Each computer has its own memory.
- Computers communicate through message passing.
- A single task can be divided across different machines.
- Examples include AI and machine learning, scientific research, high-performance computing, financial systems, energy and environment systems, IoT, blockchain, and cryptocurrencies.

### Advantages of distributed computing
- It is fault tolerant because one machine failing does not stop the whole system.
- It scales well by adding more machines.
- It can use cheaper commodity hardware.
- It supports geographic distribution of work.

### Disadvantages of distributed computing
- Management is more difficult.
- Network communication adds overhead.
- Security is more challenging.
- Delay and failures in communication can reduce performance.

### Parallel computing vs distributed computing

| Feature | Parallel Computing | Distributed Computing |
| --- | --- | --- |
| Memory | Usually shared or hybrid memory | Each node has its own memory |
| Communication | Fast, low-latency communication | Message passing over a network |
| Goal | Faster execution of one large problem | Scalability and fault tolerance |
| System size | Often one machine or tightly coupled machines | Multiple separate computers |
| Coordination | Needs strong synchronization | Coordination through communication |

### Parallel computer memory architectures

#### Shared memory
- Multiple processors share the same memory.
- If one processor changes data, other processors can see it.
- It is easier to program because the address space is global.
- It is fast for data sharing.
- It does not scale well because shared memory becomes a bottleneck.

#### Distributed memory
- Every processor has its own local memory.
- Processors communicate by sending messages.
- It scales better with more processors.
- It is harder to program because data movement must be managed manually.

#### Hybrid distributed shared memory
- Modern high-performance systems often combine both models.
- Processors inside a node may share memory.
- Different nodes communicate through a network.
- It gives better scalability, but programming becomes more complex.

### Communication concepts in parallel programs
- Communication cost matters because data must be packaged and transmitted.
- Latency is the time needed to send a small message.
- Bandwidth is the amount of data sent per unit time.
- Synchronous communication is blocking communication.
- Asynchronous communication is non-blocking communication.
- Point-to-point communication is between two tasks.
- Collective communication involves a group of tasks.

### Quick exam point
- Parallel computing focuses on speeding up execution.
- Distributed computing focuses on scalability, reliability, and resource sharing.

## Lecture 2: Flynn's Taxonomy and Types of Parallelism

### Flynn's taxonomy
- Flynn's taxonomy classifies computer architectures by instruction streams and data streams.
- An instruction stream is the sequence of instructions executed by a processor.
- A data stream is the sequence of data items being processed.
- There are four main categories: SISD, SIMD, MISD, and MIMD.

| Category | Full Form | Meaning | Common Example |
| --- | --- | --- | --- |
| SISD | Single Instruction Single Data | One instruction stream, one data stream | Traditional uniprocessor |
| SIMD | Single Instruction Multiple Data | Same instruction on many data items | Vector processors, GPUs |
| MISD | Multiple Instruction Single Data | Different instructions on the same data | Rare, mostly theoretical |
| MIMD | Multiple Instruction Multiple Data | Different instructions on different data | Multi-core and distributed systems |

### SISD
- SISD is the classic sequential computer model.
- One processor executes one instruction on one data item at a time.
- Most conventional computers follow this model.

### SIMD
- SIMD uses one control unit and many processing elements.
- The same instruction is broadcast to all processing elements.
- Each element works on different data at the same time.
- It is useful for image processing, matrix operations, and scientific computation.

### SIMD subcategories from Flynn's later idea
- Array processor: many processing units, each with its own memory and register file.
- Pipelined processor: the same instruction is applied to data in stages.
- Associative processor: each unit can decide whether to execute based on local data.

### MISD
- MISD means multiple instructions work on the same data stream.
- It is rarely used in practice.
- It has limited real-world applications because most problems do not fit this pattern well.

### MIMD
- MIMD systems execute multiple instructions on multiple data streams.
- They are true multiprocessor systems.
- MIMD is widely used in parallel and distributed computing.
- When all processors run the same program on different data, it is called SPMD.

### MIMD memory styles
- Shared-memory MIMD is easier to program but has memory contention.
- Distributed-memory MIMD is easier to scale and is more fault tolerant.

### SPMD and MPMD
- SPMD means Single Program Multiple Data.
- All processors run the same program, but each processor works on different data.
- It is widely used in HPC and distributed processing.
- MPMD means Multiple Program Multiple Data.
- Different processors run different programs on different data.
- It is useful in heterogeneous systems where tasks are different.

### Types of parallelism

#### Hardware-level parallelism
- Pipelining in a uniprocessor.
- Superscalar and VLIW designs.
- SIMD instructions and vector processing.
- Multiprocessor systems and clusters.

#### Software-level parallelism
- Data-level parallelism.
- Instruction-level parallelism.
- Task-level parallelism.

### Why parallel computing is needed
- Real-world problems are large and complex.
- Many tasks happen at the same time in practice.
- Serial execution wastes hardware potential.
- Parallel computing saves time and money.
- It is needed for real-time systems, simulations, and large data processing.

### Applications of parallel computing
- Databases and data mining.
- Scientific and engineering simulations.
- Real-time systems.
- Graphics, virtual reality, and augmented reality.
- Artificial intelligence and machine learning.

### Limitations of parallel computing
- Communication and synchronization are difficult.
- Algorithms must be designed for parallel execution.
- Good parallel programs need low coupling and high cohesion.
- Skilled programmers are needed.

### Important exam focus for Flynn's taxonomy
- Classify a system into SISD, SIMD, MISD, or MIMD.
- Explain why MISD is rarely used.
- Differentiate SPMD and MPMD.
- Give real-life examples of each category.

## Lecture 3: Concurrent Systems, Processors, RISC and CISC

### Concurrency
- Concurrency means more than one task is in progress at the same time.
- Tasks may run simultaneously on multiple cores or interleaved on one core.
- Concurrency improves responsiveness and resource utilization.
- It is important in operating systems and multitasking systems.

### Motivation for concurrent systems
- Physical resource sharing: many users share limited hardware.
- Logical resource sharing: multiple processes use the same file or data.
- Computation speedup: tasks can be handled in parallel.
- Modularity: system functions can be separated into processes.

### Independent and cooperating processes
- Independent processes do not share state with other processes.
- Their result depends only on their own input.
- Cooperating processes share state or affect each other.
- Their result can depend on execution order.

### Process creation and termination
- A parent process can create child processes.
- Parent and child may run concurrently.
- The parent may wait for the children to finish.
- A child can be terminated if its task is no longer needed.
- If the parent ends, its children may also need to end.

### Problems in concurrency
- Shared resources are difficult to protect safely.
- Resource allocation becomes harder.
- Bugs are hard to reproduce because execution order changes.
- Locking resources too aggressively can reduce efficiency.

### Advantages of concurrency
- It allows multiple applications to run at the same time.
- It improves resource utilization.
- It improves response time.
- It can improve overall system performance.

### Drawbacks and issues of concurrency
- Additional coordination is required.
- Switching between tasks creates overhead.
- Too much concurrency can degrade performance.
- Common issues include race conditions, blocking, starvation, and deadlock.

### Concurrency vs parallelism
- Concurrency means tasks are managed together.
- Parallelism means tasks run at the same instant on different processors or cores.
- Concurrency is about structure and scheduling.
- Parallelism is about actual simultaneous execution.

### Microprocessor
- A microprocessor is the CPU chip used in computers and many electronic devices.
- It fetches, decodes, and executes instructions.
- It is the brain of the computer system.

### Types of processors mentioned in the lecture
- Vector processor: works on vectors or arrays of data.
- Array processor: uses multiple processing elements to work in parallel.
- Scalar processor: processes one data element at a time.

### RISC and CISC
- RISC means Reduced Instruction Set Computing.
- CISC means Complex Instruction Set Computing.
- RISC uses a small number of simple instructions.
- CISC uses a larger set of complex instructions.

| Feature | RISC | CISC |
| --- | --- | --- |
| Instruction set | Small and simple | Large and complex |
| Execution | Usually one clock cycle per instruction | May take multiple cycles |
| Registers | More general-purpose registers | Fewer general-purpose registers |
| Addressing modes | Simple | Complex |
| Code size | Larger | Smaller |
| Power use | Lower | Higher |
| Pipelining | Easier and more efficient | More difficult |

### RISC advantages
- Simpler instruction decoding.
- Faster execution.
- Lower power consumption.
- Good for pipelining.

### RISC disadvantages
- More instructions are needed for complex tasks.
- More memory may be required.
- Hardware design can still be costly.

### CISC advantages
- Smaller code size.
- Fewer instructions are needed.
- It is well suited to complex instruction handling.

### CISC disadvantages
- Slower instruction decoding.
- More complex hardware.
- Higher power consumption.

### CPU performance idea
- RISC reduces cycles per instruction.
- CISC reduces the number of instructions per program.
- Modern systems often combine ideas from both.

## Lecture 4: Vector and Array Processors

### Array processor
- An array processor performs computations on large arrays of data.
- It is designed for numerical and vector-style work.

#### Attached array processor
- An attached array processor is an auxiliary processor connected to a host computer.
- The host computer controls it through I/O.
- It is used to improve the host's numerical performance.
- It usually has an input-output interface and a local memory interface.
- It acts like a back-end machine for heavy calculations.

#### SIMD array processor
- A SIMD array processor has many processing elements controlled by one control unit.
- The same instruction is applied to all processing elements at the same time.
- Each processing element works on different data.
- It is very suitable for vector and matrix operations.
- Each processing element usually contains an ALU, registers, and local memory.
- Processing elements can also exchange data with neighboring elements when the architecture supports it.

### Vector processor classification

| Architecture | Idea | Main Point |
| --- | --- | --- |
| Memory-to-memory | Operands and results come directly from main memory | Flexible but slower |
| Register-to-register | Operands are moved through vector registers | Faster but more expensive |
| Hybrid | Combines both styles | Balanced approach |

### Memory-to-memory architecture
- Data is read directly from main memory.
- It has no strict size limitation.
- It is slower than register-based designs.
- It is common in some early vector machines.

### Register-to-register architecture
- Data is moved between main memory and vector registers.
- It is faster than memory-to-memory architecture.
- It needs more hardware and costs more.
- It is common in high-performance vector processors.

### Vector instruction format
- Opcode: tells the processor which operation to perform.
- Vector register specifier: identifies the vector register to use.
- Length field: tells how many elements are in the vector.
- Mask field: tells which elements should be processed.
- Addressing mode field: tells how data should be accessed.
- Data type field: tells the type of each vector element.
- Base address, offset, and increment help locate vector data in memory.

### Vector processor advantages
- One instruction can operate on many data elements.
- It is very fast for scientific and engineering tasks.
- It uses memory bandwidth efficiently for large data blocks.
- It reduces instruction overhead.
- It is energy efficient for data-heavy parallel work.

### Vector processor disadvantages
- Programming is more complex.
- Hardware is expensive.
- Not all problems can be vectorized.
- Memory size, instruction support, and cost can limit use.

### Applications of vector processors
- Scientific simulation.
- Weather and fluid modeling.
- Image processing.
- CAD and VR.
- AI and data analysis.

### Vector processor vs scalar processor

| Feature | Vector Processor | Scalar Processor |
| --- | --- | --- |
| Data handled | Many data items at once | One data item at a time |
| Architecture | SIMD style | SISD style |
| Speed | Higher for data-parallel work | Lower for large parallel datasets |
| Cost | More expensive | Cheaper |
| Power | Usually higher | Usually lower |
| Best use | Scientific and graphics workloads | General-purpose simple workloads |

### Quick point
- Vector processors are best when the same operation repeats on many data elements.
- Scalar processors are better for simple, general-purpose work.

## Lecture 5: Multithreading and Process Synchronization

### Multithreading
- Multithreading allows one program to perform several tasks at the same time.
- A thread is a lightweight unit of execution inside a process.
- Threads share the same process resources, so they are efficient.
- Multithreading improves responsiveness and performance.

### How multithreading works
- The CPU can switch between threads very quickly.
- It may look like all threads are running at once.
- Threads may run independently or wait for one another.
- Proper synchronization is needed to avoid conflicts.

### Multitasking
- Multitasking means the operating system runs multiple programs or tasks at the same time.
- It is broader than multithreading.
- Multitasking is usually managed by the operating system.

### Multithreading vs multitasking

| Feature | Multithreading | Multitasking |
| --- | --- | --- |
| Scope | Within one program | Across multiple programs |
| Unit | Threads | Processes or tasks |
| Control | Mostly by the program | Mostly by the operating system |
| Purpose | Better performance inside one app | Better system-level concurrency |
| Resource use | Lightweight | Heavier |

### Thread lifecycle
- New: the thread is created.
- Runnable: the thread is ready to run.
- Waiting: the thread is waiting for another action.
- Timed waiting: the thread waits for a fixed time.
- Terminated: the thread has finished execution.

### Concurrent execution and parallel execution
- Concurrent execution means threads take turns on a single processor.
- Parallel execution means threads run at the same time on different processors.
- Concurrency does not always mean true simultaneous execution.

### Benefits of multithreading
- It improves performance and efficiency.
- It keeps applications responsive.
- It improves CPU resource use.
- It helps organize complex programs into smaller tasks.

### Drawbacks of multithreading
- It is harder to design and debug.
- Bad locking can cause deadlock or inconsistent data.
- Too many threads can cause starvation and resource contention.
- Poor coordination can create display or timing problems.

### Process synchronization
- Process synchronization coordinates processes or threads so they do not interfere with each other.
- It protects shared resources.
- It helps avoid race conditions, deadlocks, and inconsistent data.
- Common solutions include semaphores and Peterson's solution.

### Independent and cooperative processes
- Independent processes do not affect each other.
- Cooperative processes can affect each other because they share data or resources.
- Synchronization is mainly needed for cooperative processes.

### Problems caused by lack of synchronization
- Inconsistency in shared data.
- Loss of data when updates overlap.
- Deadlock when processes wait forever for one another.

### Types of process synchronization
- Competitive synchronization: processes compete for a shared resource.
- Cooperative synchronization: processes depend on one another and affect each other's execution.

### Conditions that require synchronization
- Critical section: the part of code that accesses shared resources.
- Race condition: final result depends on execution order.
- Pre-emption: a running process may be interrupted before finishing shared work.

### Race condition
- A race condition happens when the result changes depending on which process wins the race to update shared data.
- Example: one process adds money to a balance while another withdraws money at the same time.
- Without synchronization, the final answer can become wrong.

### Critical section problem
- A critical section is code that only one process should execute at a time.
- The goal is to allow safe access to shared data.
- The solution must keep data consistent.

### Classical IPC problems
- Producer-consumer problem.
- Readers-writers problem.
- Dining philosophers problem.

### Producer-consumer problem
- Producers create data and place it into a shared buffer.
- Consumers remove data from the buffer.
- If the buffer is full, the producer must wait.
- If the buffer is empty, the consumer must wait.

### Readers-writers problem
- Readers only read shared data.
- Writers change shared data.
- Many readers may read together.
- Only one writer may write at a time.
- No reader should read while a writer is writing.

### Dining philosophers problem
- Philosophers need two forks to eat.
- If every philosopher picks up one fork, deadlock can happen.
- Starvation can also happen if some philosophers never get both forks.

### Properties of a correct critical section solution
- Mutual exclusion: only one process is inside the critical section at a time.
- Progress: if no one is inside, a waiting process should be allowed to enter without unnecessary delay.
- Bounded waiting: every process should get a fair chance after a limited wait.

### Preemptive and non-preemptive kernels
- A preemptive kernel can interrupt a running process in kernel mode.
- A non-preemptive kernel lets a kernel process run until it exits, blocks, or yields.
- Non-preemptive kernels reduce some race conditions but are less flexible.

### Advantages of critical sections with synchronization
- They prevent race conditions.
- They provide mutual exclusion.
- They reduce wasted CPU waiting.
- They simplify safe access to shared resources.

### Disadvantages of critical sections
- They add overhead.
- Poor design can cause deadlock.
- Large critical sections can reduce parallelism.
- Frequent contention can slow the system.

## Lecture 6: Mutex and Semaphore

### Mutex
- Mutex stands for mutual exclusion object.
- It is a locking mechanism that protects a critical section.
- Only the thread that locks a mutex can unlock it.
- Mutex is used when strict ownership is needed.
- It helps ensure that only one thread accesses a resource at a time.
- Mutex may use priority inheritance to reduce the effect of priority inversion.

### Mutual exclusion
- Mutual exclusion means only one process can enter the critical section at a time.
- It is essential for safe concurrent execution.
- It prevents race conditions on shared resources.
- Common resources that need protection include global variables, files, printers, I/O devices, and shared data structures.

### Conditions required for mutual exclusion
- No two processes can be in their critical sections at the same time.
- No assumptions should be made about process speed.
- A process outside the critical section should not block others.
- A process should not wait forever to enter the critical section.

### Approaches to implementing mutual exclusion
- Software methods: processes cooperate using algorithms.
- Hardware methods: special atomic instructions are used.
- Programming language or OS methods: the language or system provides support.

### Semaphore
- A semaphore is a synchronization tool that uses a counter.
- It controls access to shared resources.
- It is used to solve critical section problems and manage resource sharing.
- The two main operations are wait and signal.

### Semaphore operations
- Wait or P: decreases the semaphore value.
- Signal or V: increases the semaphore value.
- If the semaphore value is zero, a waiting process is blocked.
- The process continues when another process signals the semaphore.

### Types of semaphores
- Binary semaphore: values are only 0 and 1.
- It is similar to a mutex lock.
- Counting semaphore: value can be more than 1.
- It controls access to multiple instances of a resource.

### Working of semaphore
- A process calls wait before entering the critical section.
- If the resource is available, it enters.
- If not, it is blocked or queued.
- After finishing, it calls signal to release the resource.
- The improved version avoids busy waiting by blocking the process and waking it later.

### Mutex vs semaphore

| Feature | Mutex | Semaphore |
| --- | --- | --- |
| Main use | Mutual exclusion | Resource counting and synchronization |
| Ownership | Strict ownership | No strict ownership in the same way |
| Values | Usually binary | Binary or counting |
| Best for | One resource, one owner | Multiple resource instances or coordination |
| Unlocking | Only owner can unlock | Any process may signal, depending on design |

### Limitations of semaphores
- They can cause priority inversion.
- They can lead to deadlock if used badly.
- They may require busy waiting in simple implementations.
- They are hard to debug and maintain.
- They add overhead because wait and signal must be managed carefully.

### Uses of semaphores
- Mutual exclusion.
- Process synchronization.
- Resource management.
- Reader-writer coordination.
- Deadlock avoidance through careful control.

### Advantages of semaphores
- They are simple and effective.
- They support coordination between multiple processes.
- They help prevent race conditions.
- They can control access to limited resources.

### Disadvantages of semaphores
- They can reduce performance due to synchronization overhead.
- Incorrect use can cause deadlock.
- They can be difficult to debug.
- They must be designed carefully to avoid new synchronization bugs.

## Lecture 7: Amdahl's Law

### Basic idea
- Amdahl's law explains the limit on speedup when only part of a system is improved.
- It shows that the non-improved part of a program limits the total gain.
- It is often used to study parallel systems.

### Main formula
- Let alpha be the fraction of the program that is not improved.
- Let q be the improvement factor for the rest of the program.
- If Told is the original execution time, then:
- New time = alpha x Told + (1 - alpha) x Told / q
- Speedup S = Told / Tnew = 1 / [alpha + (1 - alpha) / q]

### Meaning of the formula
- If alpha is large, speedup is limited.
- If q becomes very large, the sequential part dominates the final performance.
- The untouched part of the program becomes the bottleneck.

### Maximum speedup
- As q approaches infinity, the speedup approaches 1 / alpha.
- This means no amount of improvement can beat the serial fraction.
- Example: if 10 percent of a program is serial, the maximum speedup is 10.

### Main lesson
- Improve the common case first.
- The parts that run most often have the biggest effect on overall performance.
- Amdahl's law reminds us that parallelism has limits.

### Scaling Amdahl's law
- The fixed-problem model is not always realistic.
- Sometimes the goal is to solve a larger problem in the same time.
- The scaled or fixed-time version is used for that situation.
- It is useful when one processor cannot handle the larger problem in a reasonable time.
- The idea is to judge how well a machine handles growth in problem size.

### Exam point
- Amdahl's law is about the speedup limit.
- The sequential fraction decides the upper bound.
- Parallelism helps, but it cannot remove the serial part completely.

## Lecture 8: Pipelining Architecture

### What is pipelining?
- Pipelining is a technique that overlaps instruction stages.
- Different instructions are in different stages at the same time.
- It improves instruction throughput.
- It does not usually reduce the time for a single instruction, but it increases total system efficiency.

### Why pipelining is needed
- It increases CPU efficiency.
- It raises instruction throughput.
- It reduces idle time of hardware units.
- It helps modern processors handle more work per unit time.
- It is very important in RISC and modern CPU designs.

### Types of pipelining

#### Hardware pipelining
- Instruction pipelining: instruction steps are split into stages.
- Arithmetic pipelining: arithmetic operations are divided into stages.
- Data pipelining: data movement is organized in stages.
- Superpipelining increases clock speed by using more stages.
- Superscalar design uses multiple pipelines so more than one instruction can complete in a cycle.

#### Software pipelining
- Loop unrolling: reduces loop overhead and exposes more parallelism.
- VLIW scheduling: compiler places multiple operations in one long instruction.
- Speculative execution: instructions are started before conditions are fully known.
- Software parallelism: the compiler or program uses multiple threads or cores.
- Out-of-order execution lets the processor finish ready instructions in a different order when dependencies allow it.

### Pipeline stages

| Stage | Full Name | Purpose |
| --- | --- | --- |
| IF | Instruction Fetch | Get the instruction from memory |
| ID | Instruction Decode | Decode instruction and read operands |
| EX | Execute | Perform arithmetic or logical work |
| MEM | Memory Access | Read or write data in memory |
| WB | Write Back | Store the result in a register |

### Characteristics of pipelining
- Multiple instructions can be processed at once.
- The instruction cycle is divided into stages.
- Throughput increases after the pipeline fills.
- Pipeline depth affects performance and complexity.
- Latency of a single instruction is not reduced much, but total throughput increases.
- Common optimization ideas include instruction prefetching, branch prediction, forwarding, cache use, multiple execution units, and write buffers.

### Cost and performance tradeoff
- Deeper pipelines can increase performance.
- More pipeline stages also increase design complexity.
- Extra hardware raises cost and power use.
- The best design depends on the target system.
- Cost-sensitive systems prefer simpler pipelines.
- Performance-critical systems use deeper and more complex pipelines.

### Pipelined execution vs non-pipelined execution

| Feature | Pipelined | Non-Pipelined |
| --- | --- | --- |
| Instruction handling | Overlapped | Sequential |
| Throughput | High | Low |
| Hardware use | Better | Poorer |
| Design complexity | Higher | Lower |
| Efficiency | Better for many instructions | Better only for simple designs |

### Important formulas
- Non-pipelined cycles for N instructions and K stages = N x K
- Pipelined cycles for N instructions and K stages = K + N - 1
- Speedup = non-pipelined time / pipelined time
- CPI in pipeline = (K + N - 1) / N
- CPI without pipeline = K
- Utilization = N / (K + N - 1)

### Clock cycle time in a pipeline
- The clock cycle is set by the slowest stage.
- Register delay between stages must also be added.
- So, clock cycle time = slowest stage delay + register delay.

### Hazards in pipelining

| Hazard | Meaning | Common Fix |
| --- | --- | --- |
| Data hazard | One instruction depends on another | Forwarding, register renaming, scheduling |
| Structural hazard | Two stages need the same hardware | Add hardware, schedule instructions |
| Control hazard | Branch changes the flow | Branch prediction, delay slots, speculative execution |

### Data hazards
- RAW means Read After Write.
- WAR means Write After Read.
- WAW means Write After Write.
- RAW is the most common hazard in simple pipelines.

### Structural hazards
- Structural hazards happen when hardware resources are not enough.
- Example: one memory unit is needed by two pipeline stages at the same time.
- Solutions include adding hardware or reordering instructions.

### Control hazards
- Control hazards happen because of branches and jumps.
- The processor may fetch the wrong next instruction.
- Branch prediction and speculative execution reduce the problem.

### Register renaming
- Register renaming gives different physical registers to logically same registers.
- It removes false dependencies.
- It helps avoid WAR and WAW hazards.
- It is used in modern out-of-order and superscalar processors.

### Main conclusion about pipelining
- Pipelining improves throughput by overlapping stages.
- It is a major reason modern CPUs are fast.
- Its benefit is highest when instructions flow smoothly and hazards are low.

## Ultra-Quick Revision

### Parallel, distributed, and concurrency
- Parallel computing: many processors work on one problem at the same time.
- Distributed computing: many computers work together through message passing.
- Concurrency: more than one task is in progress at once.
- Parallelism: more than one task is actually executing at the same time.

### Multithreading, mutex, semaphore
- Multithreading splits one program into lighter threads.
- Mutex is best for one-owner mutual exclusion.
- Semaphore is best for counting and coordination.

### RISC, CISC, vector, scalar
- RISC: simple instructions, easy pipelining.
- CISC: complex instructions, smaller code size.
- Vector processor: one instruction on many data items.
- Scalar processor: one instruction on one data item.

### Key formulas to remember
- Speedup = original time / new time.
- Amdahl's law = 1 / [alpha + (1 - alpha) / q].
- Pipelined cycles = K + N - 1.
- Non-pipelined cycles = N x K.
- Pipeline utilization = N / (K + N - 1).

### Best answer style for theory questions
- Definition first.
- Then 4 to 6 simple points.
- Add a comparison table when asked.
- Mention advantages and disadvantages if the question is long.
- End with a short conclusion.
