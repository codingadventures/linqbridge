## Set Operators: Intersect - 1 ##

This sample uses Intersect to create one sequence that contains the common values shared by both arrays.

### Code ###

```
public void Linq50() {
    int[] numbersA = { 0, 2, 4, 5, 6, 8, 9 };
    int[] numbersB = { 1, 3, 5, 7, 8 };
    
    var commonNumbers = numbersA.Intersect(numbersB);
    
    Console.WriteLine("Common numbers shared by both arrays:");
    foreach (var n in commonNumbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
Common numbers shared by both arrays:
5
8
```
