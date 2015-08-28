## Projection Operators: Select - Indexed ##

This sample uses an indexed Select clause to determine if the value of ints in an array match their position in the array.

### Code ###

```
public void Linq12() {
    int[] numbers = { 5, 4, 1, 3, 9, 8, 6, 7, 2, 0 };

    var numsInPlace = numbers.Select((num, index) => new {Num = num, InPlace = (num == index)});

    Console.WriteLine("Number: In-place?");
    foreach (var n in numsInPlace) {
        Console.WriteLine("{0}: {1}", n.Num, n.InPlace);
    }
}

```

### Output ###

```
Number: In-place?
5: False
4: False
1: False
3: True
9: False
8: False
6: True
7: True
2: False
0: False
```
