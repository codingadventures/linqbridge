## Set Operators: Distinct - 2 ##

This sample uses Distinct to find the unique Category names.

### Code ###

```
public void Linq47() {
    List<Product> products = GetProductList();
    
    var categoryNames = (
        from p in products
        select p.Category)
        .Distinct();
                                         
    Console.WriteLine("Category names:");
    foreach (var n in categoryNames) {
        Console.WriteLine(n);
    }
}

```

### Output ###

```
Category names:
Beverages
Condiments
Produce
Meat/Poultry
Seafood
Dairy Products
Confections
Grains/Cereals
```
