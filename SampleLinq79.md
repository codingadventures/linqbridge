## Aggregate Operators: Sum - Projection ##

This sample uses Sum to get the total number of characters of all words in the array.

### Code ###

```
public void Linq79() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    double totalChars = words.Sum(w => w.Length);
    
    Console.WriteLine("There are a total of {0} characters in these words.", totalChars);
}

```

### Output ###

```
There are a total of 20 characters in these words.
```
