## Conversion Operators: ToList ##

This sample uses ToList to immediately evaluate a sequence into a List

&lt;T&gt;

.

### Code ###

```
public void Linq55() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    var sortedWords =
        from w in words
        orderby w
        select w;
    var wordList = sortedWords.ToList();
    
    Console.WriteLine("The sorted word list:");
    foreach (var w in wordList) {
        Console.WriteLine(w);
    }             
}

```

### Output ###

```
The sorted word list:
apple
blueberry
cherry
```
