## Aggregate Operators: Max - Elements ##

This sample uses Max to get the products with the most expensive price in each category.

### Code ###

```
public void Linq88() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        let maxPrice = g.Max(p => p.UnitPrice)
        select new {Category = g.Key, MostExpensiveProducts = g.Where(p => p.UnitPrice == maxPrice)};

    ObjectDumper.Write(categories, 1);
}

```

### Output ###

```
Category=Beverages      MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=38     ProductName=Côte de Blaye       Category=Beverages      UnitPrice=263.5000      UnitsInStock=17
Category=Condiments     MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=63     ProductName=Vegie-spread        Category=Condiments     UnitPrice=43.9000       UnitsInStock=24
Category=Produce        MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=51     ProductName=Manjimup Dried Apples       Category=Produce        UnitPrice=53.0000       UnitsInStock=20
Category=Meat/Poultry   MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=29     ProductName=Thüringer Rostbratwurst     Category=Meat/Poultry   UnitPrice=123.7900      UnitsInStock=0
Category=Seafood        MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=18     ProductName=Carnarvon Tigers    Category=Seafood        UnitPrice=62.5000       UnitsInStock=42
Category=Dairy Products         MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=59     ProductName=Raclette Courdavault        Category=Dairy Products         UnitPrice=55.0000       UnitsInStock=79
Category=Confections    MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=20     ProductName=Sir Rodney's Marmalade      Category=Confections    UnitPrice=81.0000       UnitsInStock=40
Category=Grains/Cereals         MostExpensiveProducts=...
  MostExpensiveProducts: ProductID=56     ProductName=Gnocchi di nonna Alice      Category=Grains/Cereals         UnitPrice=38.0000       UnitsInStock=21
```
