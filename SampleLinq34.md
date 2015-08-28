## Ordering Operators: OrderByDescending - Comparer ##

This sample uses an OrderBy clause with a custom comparer to do a case-insensitive descending sort of the words in an array.

### Code ###

```
public void Linq34() {
    string[] words = { "aPPLE", "AbAcUs", "bRaNcH", "BlUeBeRrY", "ClOvEr", "cHeRry"};
    
    var sortedWords = words.OrderByDescending(a => a, new CaseInsensitiveComparer());
        
    ObjectDumper.Write(sortedWords);
}

public class CaseInsensitiveComparer : IComparer<string>
{
    public int Compare(string x, string y)
    {
        return string.Compare(x, y, StringComparison.OrdinalIgnoreCase);
    }
}

```

### Output ###

```
ClOvEr
cHeRry
bRaNcH
BlUeBeRrY
aPPLE
AbAcUs
```
