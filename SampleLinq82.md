## Aggregate Operators: Min - Projection ##

This sample uses Min to get the length of the shortest word in an array.

### Code ###

```
public void Linq82() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    int shortestWord = words.Min(w => w.Length);
    
    Console.WriteLine("The shortest word is {0} characters long.", shortestWord);
}

```

### Output ###

```
The shortest word is 5 characters long.
```
