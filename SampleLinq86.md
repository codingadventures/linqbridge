## Aggregate Operators: Max - Projection ##

This sample uses Max to get the length of the longest word in an array.

### Code ###

```
public void Linq86() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    int longestLength = words.Max(w => w.Length);
    
    Console.WriteLine("The longest word is {0} characters long.", longestLength);
}

```

### Output ###

```
The longest word is 9 characters long.
```
