# Analysis of Synchronization Mechanisms in Shared-Memory Parallel Programs

An empirical evaluation of core synchronization strategies in shared-memory parallel programming using C, OpenMP, and POSIX Threads on Linux (Ubuntu 22.04 LTS).

## Synchronization Mechanisms

- **None (Race Condition)**: Unsynchronized access. Fastest, but causes data corruption.
- **Critical Section (`#pragma omp critical`)**: Serializes thread access. Correct, but slow due to lock contention.
- **Atomic Operation (`#pragma omp atomic`)**: Indivisible hardware update. Correct, fast, and highly scalable.
- **OpenMP Lock (`omp_lock_t`)**: Explicit mutex lock. Correct, but high lock contention.
- **Barrier (`#pragma omp barrier`)**: Phase synchronization point. Limited by slowest thread.
- **POSIX Semaphore (`sem_t`)**: OS-level counter lock. Has system-call overhead.

## Building and Running

Compile all files:
make

Run benchmark:
./bin/compare_sync
