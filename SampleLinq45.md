## Grouping Operators: GroupBy - Comparer, Mapped ##

This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other, and then converts the results to uppercase.

### Code ###

```
public void Linq45() {
    string[] anagrams = {"from   ", " salt", " earn ", "  last   ", " near ", " form  "};

    var orderGroups = anagrams.GroupBy(
                w => w.Trim(), 
                a => a.ToUpper(),
                new AnagramEqualityComparer()
                );
                   
    ObjectDumper.Write(orderGroups, 1);
}

public class AnagramEqualityComparer : IEqualityComparer<string>
{
    public bool Equals(string x, string y) {
        return getCanonicalString(x) == getCanonicalString(y);
    }

    public int GetHashCode(string obj) {
        return getCanonicalString(obj).GetHashCode();
    }
    
    private string getCanonicalString(string word) {
        char[] wordChars = word.ToCharArray();
        Array.Sort<char>(wordChars);
        return new string(wordChars);
    }
}

```

### Output ###

```
...
  FROM   
   FORM  
...
   SALT
    LAST   
...
   EARN 
   NEAR 
```
