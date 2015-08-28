## Conversion Operators: ToArray ##

This sample uses ToArray to immediately evaluate a sequence into an array.

### Code ###

```
public void Linq54() {
    double[] doubles = { 1.7, 2.3, 1.9, 4.1, 2.9 };
    
    var sortedDoubles =
        from d in doubles
        orderby d descending
        select d;
    var doublesArray = sortedDoubles.ToArray();
    
    Console.WriteLine("Every other double from highest to lowest:");
    for (int d = 0; d < doublesArray.Length; d += 2) {
        Console.WriteLine(doublesArray[d]);
    }             
}

```

### Output ###

```
Every other double from highest to lowest:
4.1
2.3
1.7
```
