## Partitioning Operators: TakeWhile - Simple ##

This sample uses TakeWhile to return elements starting from the beginning of the array until a number is hit that is not less than 6.

### Code ###

```
public void Linq24() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    var firstNumbersLessThan6 = numbers.TakeWhile(n => n < 6);
    
    Console.WriteLine("First numbers less than 6:");
    foreach (var n in firstNumbersLessThan6) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
First numbers less than 6:
5
4
1
3
```
