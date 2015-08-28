## Ordering Operators: OrderByDescending - Simple 1 ##

This sample uses orderby and descending to sort a list of doubles from highest to lowest.

### Code ###

```
public void Linq32() {
    double[] doubles = { 1.7, 2.3, 1.9, 4.1, 2.9 };
    
    var sortedDoubles =
        from d in doubles
        orderby d descending
        select d;
    
    Console.WriteLine("The doubles from highest to lowest:");
    foreach (var d in sortedDoubles) {
        Console.WriteLine(d);
    }
}

```

### Output ###

```
The doubles from highest to lowest:
4.1
2.9
2.3
1.9
1.7
```
