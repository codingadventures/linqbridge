## Query Execution: Immediate Execution ##

The following sample shows how queries can be executed immediately with operators such as ToList().

### Code ###

```
public void Linq100() {
    // Methods like ToList() cause the query to be
    // executed immediately, caching the results.
    
    int[] numbers = new int[] { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };        
    
    int i = 0;
    var q = (
        from n in numbers
        select ++i )
        .ToList();

    // The local variable i has already been fully
    // incremented before we iterate the results:
    foreach (var v in q) {
        Console.WriteLine("v = {0}, i = {1}", v, i);
    }  
}

```

### Output ###

```
v = 1, i = 10
v = 2, i = 10
v = 3, i = 10
v = 4, i = 10
v = 5, i = 10
v = 6, i = 10
v = 7, i = 10
v = 8, i = 10
v = 9, i = 10
v = 10, i = 10
```
