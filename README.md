# Objective-C ARC Memory Management Bug: Unexpected Retain Cycles

This repository demonstrates a common yet subtle bug in Objective-C related to Automatic Reference Counting (ARC) and unexpected retain cycles. The bug involves improper handling of strong references within a class, leading to memory leaks and potential crashes.

## Bug Description

The `bug.m` file contains code that creates a retain cycle due to a strong reference property (`myString`) that creates a circular relationship.

## Solution

The `bugSolution.m` file provides a corrected version, employing `weak` references where appropriate to break the retain cycle.

## How to Reproduce

1. Clone the repository.
2. Open the project in Xcode.
3. Run the application. Observe the behavior described in `bug.m` and `bugSolution.m`.

## Lessons Learned

This example highlights the importance of careful memory management even with ARC. Strong references must be used judiciously to avoid creating retain cycles. Using `weak` references where appropriate prevents unintended memory retention and helps to avoid memory leaks.