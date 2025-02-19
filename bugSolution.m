The solution involves checking the index before accessing the array element.  This ensures that the index is within the valid range (0 to count-1).

```objectivec
NSArray *myArray = @[@1, @2, @3, @4, @5];
NSInteger index = 5; // Out of bounds index

// Check if the index is within bounds before accessing the element.
if (index >= 0 && index < myArray.count) {
    NSInteger value = [myArray objectAtIndex:index];
    NSLog("Value at index %ld: %ld", (long)index, (long)value);
} else {
    NSLog("Index out of bounds");
    // Handle the error appropriately, e.g., return a default value, throw an exception
}
```

Alternatively, you can use `objectAtIndexedSubscript:` for more concise code (but it still doesn't inherently handle out-of-bounds):

```objectivec
NSArray *myArray = @[@1, @2, @3, @4, @5];
NSInteger index = 5;

if (index >= 0 && index < myArray.count) {
    NSInteger value = myArray[index];
    NSLog("Value at index %ld: %ld", (long)index, (long)value);
} else {
    NSLog("Index out of bounds");
}
```