## Aggregate Operators: Count - Grouped ##

This sample uses Count to return a list of categories and how many products each has.

### Code ###

```
public void Linq77() {
    List<Product> products = GetProductList();

    var categoryCounts =
        from p in products
        group p by p.Category into g
        select new {Category = g.Key, ProductCount = g.Count()};
    
    ObjectDumper.Write(categoryCounts);
}

```

### Output ###

```
Category=Beverages      ProductCount=12
Category=Condiments     ProductCount=12
Category=Produce        ProductCount=5
Category=Meat/Poultry   ProductCount=6
Category=Seafood        ProductCount=12
Category=Dairy Products         ProductCount=10
Category=Confections    ProductCount=13
Category=Grains/Cereals         ProductCount=7
```
