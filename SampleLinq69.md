## Quantifiers: Any - Grouped ##

This sample uses Any to return a grouped a list of products only for categories that have at least one product that is out of stock.

### Code ###

```
public void Linq69() {
    List<Product> products = GetProductList();

    var productGroups =
        from p in products
        group p by p.Category into g
        where g.Any(p => p.UnitsInStock == 0)
        select new { Category = g.Key, Products = g };

    ObjectDumper.Write(productGroups, 1);
}

```

### Output ###

```
Category=Condiments     Products=...
  Products: ProductID=3   ProductName=Aniseed Syrup       Category=Condiments     UnitPrice=10.0000       UnitsInStock=13
  Products: ProductID=4   ProductName=Chef Anton's Cajun Seasoning        Category=Condiments     UnitPrice=22.0000       UnitsInStock=53
  Products: ProductID=5   ProductName=Chef Anton's Gumbo Mix      Category=Condiments     UnitPrice=21.3500       UnitsInStock=0
  Products: ProductID=6   ProductName=Grandma's Boysenberry Spread        Category=Condiments     UnitPrice=25.0000       UnitsInStock=120
  Products: ProductID=8   ProductName=Northwoods Cranberry Sauce  Category=Condiments     UnitPrice=40.0000       UnitsInStock=6
  Products: ProductID=15  ProductName=Genen Shouyu        Category=Condiments     UnitPrice=15.5000       UnitsInStock=39
  Products: ProductID=44  ProductName=Gula Malacca        Category=Condiments     UnitPrice=19.4500       UnitsInStock=27
  Products: ProductID=61  ProductName=Sirop d'érable      Category=Condiments     UnitPrice=28.5000       UnitsInStock=113
  Products: ProductID=63  ProductName=Vegie-spread        Category=Condiments     UnitPrice=43.9000       UnitsInStock=24
  Products: ProductID=65  ProductName=Louisiana Fiery Hot Pepper Sauce    Category=Condiments     UnitPrice=21.0500       UnitsInStock=76
  Products: ProductID=66  ProductName=Louisiana Hot Spiced Okra   Category=Condiments     UnitPrice=17.0000       UnitsInStock=4
  Products: ProductID=77  ProductName=Original Frankfurter grüne Soße     Category=Condiments     UnitPrice=13.0000       UnitsInStock=32
Category=Meat/Poultry   Products=...
  Products: ProductID=9   ProductName=Mishi Kobe Niku     Category=Meat/Poultry   UnitPrice=97.0000       UnitsInStock=29
  Products: ProductID=17  ProductName=Alice Mutton        Category=Meat/Poultry   UnitPrice=39.0000       UnitsInStock=0
  Products: ProductID=29  ProductName=Thüringer Rostbratwurst     Category=Meat/Poultry   UnitPrice=123.7900      UnitsInStock=0
  Products: ProductID=53  ProductName=Perth Pasties       Category=Meat/Poultry   UnitPrice=32.8000       UnitsInStock=0
  Products: ProductID=54  ProductName=Tourtière   Category=Meat/Poultry   UnitPrice=7.4500        UnitsInStock=21
  Products: ProductID=55  ProductName=Pâté chinois        Category=Meat/Poultry   UnitPrice=24.0000       UnitsInStock=115
Category=Dairy Products         Products=...
  Products: ProductID=11  ProductName=Queso Cabrales      Category=Dairy Products         UnitPrice=21.0000       UnitsInStock=22
  Products: ProductID=12  ProductName=Queso Manchego La Pastora   Category=Dairy Products         UnitPrice=38.0000       UnitsInStock=86
  Products: ProductID=31  ProductName=Gorgonzola Telino   Category=Dairy Products         UnitPrice=12.5000       UnitsInStock=0
  Products: ProductID=32  ProductName=Mascarpone Fabioli  Category=Dairy Products         UnitPrice=32.0000       UnitsInStock=9
  Products: ProductID=33  ProductName=Geitost     Category=Dairy Products         UnitPrice=2.5000        UnitsInStock=112
  Products: ProductID=59  ProductName=Raclette Courdavault        Category=Dairy Products         UnitPrice=55.0000       UnitsInStock=79
  Products: ProductID=60  ProductName=Camembert Pierrot   Category=Dairy Products         UnitPrice=34.0000       UnitsInStock=19
  Products: ProductID=69  ProductName=Gudbrandsdalsost    Category=Dairy Products         UnitPrice=36.0000       UnitsInStock=26
  Products: ProductID=71  ProductName=Flotemysost         Category=Dairy Products         UnitPrice=21.5000       UnitsInStock=26
  Products: ProductID=72  ProductName=Mozzarella di Giovanni      Category=Dairy Products         UnitPrice=34.8000       UnitsInStock=14
```
