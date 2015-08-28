## Projection Operators: Select - Simple 1 ##

This sample uses select to produce a sequence of ints one higher than those in an existing array of ints.

### Code ###

```
public void Linq6() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };

    var numsPlusOne =
        from n in numbers
        select n + 1;
    
    Console.WriteLine("Numbers + 1:");
    foreach (var i in numsPlusOne) {
        Console.WriteLine(i);
    }
}

```

### Output ###

```
Numbers + 1:
6
5
2
4
10
9
7
8
3
1
```
