## Grouping Operators: GroupBy - Comparer ##

This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other.

### Code ###

```
public void Linq44() {
    string[] anagrams = {"from   ", " salt", " earn ", "  last   ", " near ", " form  "};

    var orderGroups = anagrams.GroupBy(w => w.Trim(), new AnagramEqualityComparer());
                   
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
  from   
   form  
...
   salt
    last   
...
   earn 
   near 
```
