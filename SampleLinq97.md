## Miscellaneous Operators: EqualAll - 2 ##

This sample uses EqualAll to see if two sequences match on all elements in the same order.

### Code ###

```
public void Linq97() {
    var wordsA = new string[] { "cherry", "apple", "blueberry" };
    var wordsB = new string[] { "apple", "blueberry", "cherry" };

    bool match = wordsA.SequenceEqual(wordsB);
    
    Console.WriteLine("The sequences match: {0}", match);
}

```

### Output ###

```
The sequences match: False
```
