## Aggregate Operators: Sum - Grouped ##

This sample uses Sum to get the total units in stock for each product category.

### Code ###

```
public void Linq80() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        select new {Category = g.Key, TotalUnitsInStock = g.Sum(p => p.UnitsInStock)};

    ObjectDumper.Write(categories);
}

```

### Output ###

```
Category=Beverages      TotalUnitsInStock=559
Category=Condiments     TotalUnitsInStock=507
Category=Produce        TotalUnitsInStock=100
Category=Meat/Poultry   TotalUnitsInStock=165
Category=Seafood        TotalUnitsInStock=701
Category=Dairy Products         TotalUnitsInStock=393
Category=Confections    TotalUnitsInStock=386
Category=Grains/Cereals         TotalUnitsInStock=308
```
