## Projection Operators: Select - Transformation ##

This sample uses select to produce a sequence of strings representing the text version of a sequence of ints.

### Code ###

```
public void Linq8() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    string[] strings = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    var textNums = 
        from n in numbers
        select strings[n];
    
    Console.WriteLine("Number strings:");
    foreach (var s in textNums) {
        Console.WriteLine(s);
    }           
}

```

### Output ###

```
Number strings:
five
four
one
three
nine
eight
six
seven
two
zero
```
