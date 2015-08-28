## Partitioning Operators: SkipWhile - Indexed ##

This sample uses SkipWhile to get the elements of the array starting from the first element less than its position.

### Code ###

```
public void Linq27() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    var laterNumbers = numbers.SkipWhile((n, index) => n >= index);
    
    Console.WriteLine("All elements starting from first element less than its position:");
    foreach (var n in laterNumbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
All elements starting from first element less than its position:
1
3
9
8
6
7
2
0
```
