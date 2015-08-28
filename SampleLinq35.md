## Ordering Operators: ThenBy - Simple ##

This sample uses a compound orderby to sort a list of digits, first by length of their name, and then alphabetically by the name itself.

### Code ###

```
public void Linq35() {
    string[] digits = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    var sortedDigits =
        from d in digits 
        orderby d.Length, d
        select d;

    Console.WriteLine("Sorted digits:");
    foreach (var d in sortedDigits) {
        Console.WriteLine(d);
    }
}

```

### Output ###

```
Sorted digits:
one
six
two
five
four
nine
zero
eight
seven
three
```
