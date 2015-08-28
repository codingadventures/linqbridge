## Ordering Operators: OrderBy - Simple 1 ##

This sample uses orderby to sort a list of words alphabetically.

### Code ###

```
public void Linq28() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    var sortedWords =
        from w in words
        orderby w
        select w;
    
    Console.WriteLine("The sorted list of words:");
    foreach (var w in sortedWords) {
        Console.WriteLine(w);
    }
}

```

### Output ###

```
The sorted list of words:
apple
blueberry
cherry
```
