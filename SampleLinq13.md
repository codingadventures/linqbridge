## Projection Operators: Select - Filtered ##

This sample combines select and where to make a simple query that returns the text form of each digit less than 5.

### Code ###

```
public void Linq13() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    string[] digits = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    var lowNums =
        from n in numbers
        where n < 5
        select digits[n];
    
    Console.WriteLine("Numbers < 5:");
    foreach (var num in lowNums) {
        Console.WriteLine(num);
    }       
}

```

### Output ###

```
Numbers < 5:
four
one
three
two
zero
```
