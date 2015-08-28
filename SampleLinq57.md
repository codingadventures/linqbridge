## Conversion Operators: OfType ##

This sample uses OfType to return only the elements of the array that are of type double.

### Code ###

```
public void Linq57() {
    object[] numbers = { null, 1.0, "two", 3, "four", 5, "six", 7.0 };

    var doubles = numbers.OfType<double>();
    
    Console.WriteLine("Numbers stored as doubles:");
    foreach (var d in doubles) {
        Console.WriteLine(d);
    }       
}

```

### Output ###

```
Numbers stored as doubles:
1
7
```
