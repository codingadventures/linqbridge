## Element Operators: First - Condition ##

This sample uses First to find the first element in the array that starts with 'o'.

### Code ###

```
public void Linq59() {
    string[] strings = { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };

    string startsWithO = strings.First(s => s[0] == 'o');

    Console.WriteLine("A string starting with 'o': {0}", startsWithO);
}

```

### Output ###

```
A string starting with 'o': one
```
