## Ordering Operators: OrderBy - Comparer ##

This sample uses an OrderBy clause with a custom comparer to do a case-insensitive sort of the words in an array.

### Code ###

```
public void Linq31() {
    string[] words = { "aPPLE", "AbAcUs", "bRaNcH", "BlUeBeRrY", "ClOvEr", "cHeRry"};
    
    var sortedWords = words.OrderBy(a => a, new CaseInsensitiveComparer());
        
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
AbAcUs
aPPLE
BlUeBeRrY
bRaNcH
cHeRry
ClOvEr
```
