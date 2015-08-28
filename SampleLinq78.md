## Aggregate Operators: Sum - Simple ##

This sample uses Sum to get the total of the numbers in an array.

### Code ###

```
public void Linq78() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    double numSum = numbers.Sum();
    
    Console.WriteLine("The sum of the numbers is {0}.", numSum);
}

```

### Output ###

```
The sum of the numbers is 45.
```
