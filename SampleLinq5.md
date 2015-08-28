## Restriction Operators: Where - Indexed ##

This sample demonstrates an indexed Where clause that returns digits whose name is shorter than their value.

### Code ###

```
public void Linq5() {
    string[] digits = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    var shortDigits = digits.Where((digit, index) => digit.Length < index);

    Console.WriteLine("Short digits:");
    foreach (var d in shortDigits) {
        Console.WriteLine("The word {0} is shorter than its value.", d);
    }
}

```

### Output ###

```
Short digits:
The word five is shorter than its value.
The word six is shorter than its value.
The word seven is shorter than its value.
The word eight is shorter than its value.
The word nine is shorter than its value.
```
