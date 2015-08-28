## Ordering Operators: OrderBy - Simple 2 ##

This sample uses orderby to sort a list of words by length.

### Code ###

```
public void Linq29() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    var sortedWords =
        from w in words
        orderby w.Length
        select w;
    
    Console.WriteLine("The sorted list of words (by length):");
    foreach (var w in sortedWords) {
        Console.WriteLine(w);
    }
}

```

### Output ###

```
The sorted list of words (by length):
apple
cherry
blueberry
```
