## Generation Operators: Repeat ##

This sample uses Repeat to generate a sequence that contains the number 7 ten times.

### Code ###

```
public void Linq66() {
    var numbers = Enumerable.Repeat(7, 10);
    
    foreach (var n in numbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
7
7
7
7
7
7
7
7
7
7
```
