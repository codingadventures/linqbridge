## Set Operators: Union - 1 ##

This sample uses Union to create one sequence that contains the unique values from both arrays.

### Code ###

```
public void Linq48() {
    int[] numbersA = { 0, 2, 4, 5, 6, 8, 9 };
    int[] numbersB = { 1, 3, 5, 7, 8 };
    
    var uniqueNumbers = numbersA.Union(numbersB);
    
    Console.WriteLine("Unique numbers from both arrays:");
    foreach (var n in uniqueNumbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
Unique numbers from both arrays:
0
2
4
5
6
8
9
1
3
7
```
