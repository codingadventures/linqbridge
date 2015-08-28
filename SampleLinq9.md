## Projection Operators: Select - Anonymous Types 1 ##

This sample uses select to produce a sequence of the uppercase and lowercase versions of each word in the original array.

### Code ###

```
public void Linq9() {
    string[] words = { "aPPLE", "BlUeBeRrY", "cHeRry" };

    var upperLowerWords =
        from w in words
        select new {Upper = w.ToUpper(), Lower = w.ToLower()};

    foreach (var ul in upperLowerWords) {
        Console.WriteLine("Uppercase: {0}, Lowercase: {1}", ul.Upper, ul.Lower);
    }
}

```

### Output ###

```
Uppercase: APPLE, Lowercase: apple
Uppercase: BLUEBERRY, Lowercase: blueberry
Uppercase: CHERRY, Lowercase: cherry
```
