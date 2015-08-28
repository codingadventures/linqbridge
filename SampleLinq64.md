## Element Operators: ElementAt ##

This sample uses ElementAt to retrieve the second number greater than 5 from an array.

### Code ###

```
public void Linq64() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };

    int fourthLowNum = (
        from n in numbers
        where n > 5
        select n )
        .ElementAt(1);  // second number is index 1 because sequences use 0-based indexing

    Console.WriteLine("Second number > 5: {0}", fourthLowNum);
}

```

### Output ###

```
Second number > 5: 8
```
