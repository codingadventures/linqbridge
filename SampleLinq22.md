## Partitioning Operators: Skip - Simple ##

This sample uses Skip to get all but the first 4 elements of the array.

### Code ###

```
public void Linq22() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    var allButFirst4Numbers = numbers.Skip(4);
    
    Console.WriteLine("All but first 4 numbers:");
    foreach (var n in allButFirst4Numbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
All but first 4 numbers:
9
8
6
7
2
0
```
