## Aggregate Operators: Average - Simple ##

This sample uses Average to get the average of all numbers in an array.

### Code ###

```
public void Linq89() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    double averageNum = numbers.Average();
    
    Console.WriteLine("The average number is {0}.", averageNum);
}

```

### Output ###

```
The average number is 4.5.
```
