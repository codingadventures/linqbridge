## Grouping Operators: GroupBy - Simple 2 ##

This sample uses group by to partition a list of words by their first letter.

### Code ###

```
public void Linq41() {
    string[] words = { "blueberry", "chimpanzee", "abacus", "banana", "apple", "cheese" };
    
    var wordGroups =
        from w in words
        group w by w[0] into g
        select new { FirstLetter = g.Key, Words = g };
    
    foreach (var g in wordGroups) {
        Console.WriteLine("Words that start with the letter '{0}':", g.FirstLetter);
        foreach (var w in g.Words) {
            Console.WriteLine(w);
        }
    }
}

```

### Output ###

```
Words that start with the letter 'b':
blueberry
banana
Words that start with the letter 'c':
chimpanzee
cheese
Words that start with the letter 'a':
abacus
apple
```
