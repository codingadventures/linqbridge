## Element Operators: FirstOrDefault - Simple ##

This sample uses FirstOrDefault to try to return the first element of the sequence, unless there are no elements, in which case the default value for that type is returned.

### Code ###

```
public void Linq61() {
    int[] numbers = {};

    int firstNumOrDefault = numbers.FirstOrDefault();

    Console.WriteLine(firstNumOrDefault);
}

```

### Output ###

```
0
```
