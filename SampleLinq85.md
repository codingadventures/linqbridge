## Aggregate Operators: Max - Simple ##

This sample uses Max to get the highest number in an array.

### Code ###

```
public void Linq85() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    int maxNum = numbers.Max();
    
    Console.WriteLine("The maximum number is {0}.", maxNum);
}

```

### Output ###

```
The maximum number is 9.
```
