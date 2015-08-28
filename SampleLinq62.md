## Element Operators: FirstOrDefault - Condition ##

This sample uses FirstOrDefault to return the first product whose ProductID is 789 as a single Product object, unless there is no match, in which case null is returned.

### Code ###

```
public void Linq62() {
    List<Product> products = GetProductList();

    Product product789 = products.FirstOrDefault(p => p.ProductID == 789);

    Console.WriteLine("Product 789 exists: {0}", product789 != null);
}

```

### Output ###

```
Product 789 exists: False
```
