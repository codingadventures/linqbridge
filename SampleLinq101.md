## Query Execution: Query Reuse ##

The following sample shows how, because of deferred execution, queries can be used again after data changes and will then operate on the new data.

### Code ###

```
public void Linq101() {
    // Deferred execution lets us define a query once
    // and then reuse it later after data changes.

    int[] numbers = new int[] { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };
    var lowNumbers =
        from n in numbers
        where n <= 3
        select n;

    Console.WriteLine("First run numbers <= 3:");
    foreach (int n in lowNumbers) {
        Console.WriteLine(n);
    }

    for (int i = 0; i < 10; i++) {
        numbers[i] = -numbers[i];
    }

    // During this second run, the same query object,
    // lowNumbers, will be iterating over the new state
    // of numbers[], producing different results:
    Console.WriteLine("Second run numbers <= 3:");
    foreach (int n in lowNumbers) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
First run numbers <= 3:
1
3
2
0
Second run numbers <= 3:
-5
-4
-1
-3
-9
-8
-6
-7
-2
0
```
