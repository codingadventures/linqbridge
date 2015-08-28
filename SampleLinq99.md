## Query Execution: Deferred Execution ##

The following sample shows how query execution is deferred until the query is enumerated at a foreach statement.

### Code ###

```
public void Linq99() {
    // Sequence operators form first-class queries that
    // are not executed until you enumerate over them.
    
    int[] numbers = new int[] { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    
    int i = 0;
    var q =
        from n in numbers
        select ++i;

    // Note, the local variable 'i' is not incremented
    // until each element is evaluated (as a side-effect):
    foreach (var v in q) {
        Console.WriteLine("v = {0}, i = {1}", v, i);          
    }  
}

```

### Output ###

```
v = 1, i = 1
v = 2, i = 2
v = 3, i = 3
v = 4, i = 4
v = 5, i = 5
v = 6, i = 6
v = 7, i = 7
v = 8, i = 8
v = 9, i = 9
v = 10, i = 10
```
