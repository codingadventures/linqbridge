## Miscellaneous Operators: EqualAll - 1 ##

This sample uses EqualAll to see if two sequences match on all elements in the same order.

### Code ###

```
public void Linq96() {
    var wordsA = new string[] { "cherry", "apple", "blueberry" };
    var wordsB = new string[] { "cherry", "apple", "blueberry" };
    
    bool match = wordsA.SequenceEqual(wordsB);
    
    Console.WriteLine("The sequences match: {0}", match);
}

```

### Output ###

```
The sequences match: True
```
