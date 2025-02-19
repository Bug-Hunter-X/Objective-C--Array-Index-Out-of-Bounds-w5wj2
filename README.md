# Objective-C Array Index Out of Bounds

This repository demonstrates a common error in Objective-C: accessing an array element with an index that is out of bounds.  This can lead to crashes or unexpected behavior.

The `bug.m` file contains the erroneous code.  The `bugSolution.m` file provides a corrected version that uses proper bounds checking.

## Bug Description

Accessing an array element using an index greater than or equal to the array's count results in undefined behavior.  In most cases, this leads to a crash or exception.

## Solution

The solution involves checking the index before accessing the array element.  This ensures that the index is within the valid range of 0 to (array count - 1).