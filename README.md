# Uncommon Objective-C Bugs: Memory Management and Exception Handling

This repository demonstrates some less obvious bugs that can occur in Objective-C, particularly related to memory management and exception handling.  These issues are often more difficult to track down than simple syntax errors.

**Key Issues:**

* **Memory Leaks:** Incorrect usage of `retain`/`release` or `copy` properties can lead to memory leaks.  The `bug.m` file provides an example of this, showing how assigning new values to properties without releasing old ones increases retain counts and prevents deallocation.
* **Retain Cycles:** Failure to properly nil out delegate objects or using circular references among objects results in retain cycles, preventing garbage collection and leading to memory bloat.
* **Exception Handling:** Insufficient or improper use of `@try`, `@catch`, and `@finally` blocks in Objective-C can result in unexpected crashes and make debugging difficult. The examples highlight how to handle exceptions gracefully to improve application stability.

**Solutions:**

The `bugSolution.m` file provides corrected versions of the code, demonstrating best practices for memory management and exception handling.