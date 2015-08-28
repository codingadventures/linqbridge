## Partitioning Operators: Take - Simple ##

This sample uses Take to get only the first 3 elements of the array.

### Code ###

```
public void Linq20() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    var first3Numbers = numbers.Take(3);
    
    Console.WriteLine("First 3 numbers:");
    foreach (var n in first3Numbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
First 3 numbers:
5
4
1
```
