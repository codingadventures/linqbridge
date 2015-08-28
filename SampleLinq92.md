## Aggregate Operators: Aggregate - Simple ##

This sample uses Aggregate to create a running product on the array that calculates the total product of all elements.

### Code ###

```
public void Linq92() {
    double[] doubles = { 1.7, 2.3, 1.9, 4.1, 2.9 };
    
    double product = doubles.Aggregate((runningProduct, nextFactor) => runningProduct * nextFactor);
    
    Console.WriteLine("Total product of all numbers: {0}", product);
}

```

### Output ###

```
Total product of all numbers: 88.33081
```
