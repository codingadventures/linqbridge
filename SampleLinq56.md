## Conversion Operators: ToDictionary ##

This sample uses ToDictionary to immediately evaluate a sequence and a related key expression into a dictionary.

### Code ###

```
public void Linq56() {
    var scoreRecords = new [] { new {Name = "Alice", Score = 50},
                                new {Name = "Bob"  , Score = 40},
                                new {Name = "Cathy", Score = 45}
                            };
    
    var scoreRecordsDict = scoreRecords.ToDictionary(sr => sr.Name);
    
    Console.WriteLine("Bob's score: {0}", scoreRecordsDict["Bob"]);
}

```

### Output ###

```
Bob's score: { Name = Bob, Score = 40 }
```
