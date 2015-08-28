## Aggregate Operators: Average - Projection ##

This sample uses Average to get the average length of the words in the array.

### Code ###

```
public void Linq90() {
    string[] words = { "cherry", "apple", "blueberry" };
    
    double averageLength = words.Average(w => w.Length);
    
    Console.WriteLine("The average word length is {0} characters.", averageLength);
}

```

### Output ###

```
The average word length is 6.66666666666667 characters.
```
