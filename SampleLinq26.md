## Partitioning Operators: SkipWhile - Simple ##

This sample uses SkipWhile to get the elements of the array starting from the first element divisible by 3.

### Code ###

```
public void Linq26() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    var allButFirst3Numbers = numbers.SkipWhile(n => n % 3 != 0);
    
    Console.WriteLine("All elements starting from first element divisible by 3:");
    foreach (var n in allButFirst3Numbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
All elements starting from first element divisible by 3:
3
9
8
6
7
2
0
```
