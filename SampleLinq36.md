## Ordering Operators: ThenBy - Comparer ##

This sample uses an OrderBy and a ThenBy clause with a custom comparer to sort first by word length and then by a case-insensitive sort of the words in an array.

### Code ###

```
public void Linq36() {
    string[] words = { "aPPLE", "AbAcUs", "bRaNcH", "BlUeBeRrY", "ClOvEr", "cHeRry"};
    
    var sortedWords =
        words.OrderBy(a => a.Length)
             .ThenBy(a => a, new CaseInsensitiveComparer());
        
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
aPPLE
AbAcUs
bRaNcH
cHeRry
ClOvEr
BlUeBeRrY
```
