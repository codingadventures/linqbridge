## Aggregate Operators: Average - Grouped ##

This sample uses Average to get the average price of each category's products.

### Code ###

```
public void Linq91() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        select new {Category = g.Key, AveragePrice = g.Average(p => p.UnitPrice)};

    ObjectDumper.Write(categories);
}

```

### Output ###

```
Category=Beverages      AveragePrice=37.979166666666666666666666667
Category=Condiments     AveragePrice=23.0625
Category=Produce        AveragePrice=32.3700
Category=Meat/Poultry   AveragePrice=54.006666666666666666666666667
Category=Seafood        AveragePrice=20.6825
Category=Dairy Products         AveragePrice=28.7300
Category=Confections    AveragePrice=25.1600
Category=Grains/Cereals         AveragePrice=20.2500
```
