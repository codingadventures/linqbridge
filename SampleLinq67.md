## Quantifiers: Any - Simple ##

This sample uses Any to determine if any of the words in the array contain the substring 'ei'.

### Code ###

```
public void Linq67() {
    string[] words = { "believe", "relief", "receipt", "field" };
    
    bool iAfterE = words.Any(w => w.Contains("ei"));

    Console.WriteLine("There is a word that contains in the list that contains 'ei': {0}", iAfterE);
}

```

### Output ###

```
There is a word that contains in the list that contains 'ei': True
```
