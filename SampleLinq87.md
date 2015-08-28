## Aggregate Operators: Max - Grouped ##

This sample uses Max to get the most expensive price among each category's products.

### Code ###

```
public void Linq87() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        select new {Category = g.Key, MostExpensivePrice = g.Max(p => p.UnitPrice)};

    ObjectDumper.Write(categories);
}

```

### Output ###

```
Category=Beverages      MostExpensivePrice=263.5000
Category=Condiments     MostExpensivePrice=43.9000
Category=Produce        MostExpensivePrice=53.0000
Category=Meat/Poultry   MostExpensivePrice=123.7900
Category=Seafood        MostExpensivePrice=62.5000
Category=Dairy Products         MostExpensivePrice=55.0000
Category=Confections    MostExpensivePrice=81.0000
Category=Grains/Cereals         MostExpensivePrice=38.0000
```
