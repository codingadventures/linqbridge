## Aggregate Operators: Min - Grouped ##

This sample uses Min to get the cheapest price among each category's products.

### Code ###

```
public void Linq83() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        select new {Category = g.Key, CheapestPrice = g.Min(p => p.UnitPrice)};

    ObjectDumper.Write(categories);
}

```

### Output ###

```
Category=Beverages      CheapestPrice=4.5000
Category=Condiments     CheapestPrice=10.0000
Category=Produce        CheapestPrice=10.0000
Category=Meat/Poultry   CheapestPrice=7.4500
Category=Seafood        CheapestPrice=6.0000
Category=Dairy Products         CheapestPrice=2.5000
Category=Confections    CheapestPrice=9.2000
Category=Grains/Cereals         CheapestPrice=7.0000
```
