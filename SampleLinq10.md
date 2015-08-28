## Projection Operators: Select - Anonymous Types 2 ##

This sample uses select to produce a sequence containing text representations of digits and whether their length is even or odd.

### Code ###

```
public void Linq10() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    string[] strings = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    var digitOddEvens =
        from n in numbers
        select new {Digit = strings[n], Even = (n % 2 == 0)};

    foreach (var d in digitOddEvens) {
        Console.WriteLine("The digit {0} is {1}.", d.Digit, d.Even ? "even" : "odd");
    }
}

```

### Output ###

```
The digit five is odd.
The digit four is even.
The digit one is odd.
The digit three is odd.
The digit nine is odd.
The digit eight is even.
The digit six is even.
The digit seven is odd.
The digit two is even.
The digit zero is even.
```
