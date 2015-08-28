## Ordering Operators: Reverse ##

This sample uses Reverse to create a list of all digits in the array whose second letter is 'i' that is reversed from the order in the original array.

### Code ###

```
public void Linq39() {
    string[] digits = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };
    
    var reversedIDigits = (
        from d in digits
        where d[1] == 'i'
        select d)
        .Reverse();
    
    Console.WriteLine("A backwards list of the digits with a second character of 'i':");
    foreach (var d in reversedIDigits) {
        Console.WriteLine(d);
    }             
}

```

### Output ###

```
A backwards list of the digits with a second character of 'i':
nine
eight
six
five
```
