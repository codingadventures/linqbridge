## Aggregate Operators: Count - Conditional ##

This sample uses Count to get the number of odd ints in the array.

### Code ###

```
public void Linq74() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    int oddNumbers = numbers.Count(n => n % 2 == 1);
    
    Console.WriteLine("There are {0} odd numbers in the list.", oddNumbers);
}

```

### Output ###

```
There are 5 odd numbers in the list.
```
