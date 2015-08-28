## Quantifiers: All - Grouped ##

This sample uses All to return a grouped a list of products only for categories that have all of their products in stock.

### Code ###

```
public void Linq72() {
    List<Product> products = GetProductList();

    var productGroups =
        from p in products
        group p by p.Category into g
        where g.All(p => p.UnitsInStock > 0)
        select new { Category = g.Key, Products = g };

    ObjectDumper.Write(productGroups, 1);
}

```

### Output ###

```
Category=Beverages      Products=...
  Products: ProductID=1   ProductName=Chai        Category=Beverages      UnitPrice=18.0000       UnitsInStock=39
  Products: ProductID=2   ProductName=Chang       Category=Beverages      UnitPrice=19.0000       UnitsInStock=17
  Products: ProductID=24  ProductName=Guaraná Fantástica  Category=Beverages      UnitPrice=4.5000        UnitsInStock=20
  Products: ProductID=34  ProductName=Sasquatch Ale       Category=Beverages      UnitPrice=14.0000       UnitsInStock=111
  Products: ProductID=35  ProductName=Steeleye Stout      Category=Beverages      UnitPrice=18.0000       UnitsInStock=20
  Products: ProductID=38  ProductName=Côte de Blaye       Category=Beverages      UnitPrice=263.5000      UnitsInStock=17
  Products: ProductID=39  ProductName=Chartreuse verte    Category=Beverages      UnitPrice=18.0000       UnitsInStock=69
  Products: ProductID=43  ProductName=Ipoh Coffee         Category=Beverages      UnitPrice=46.0000       UnitsInStock=17
  Products: ProductID=67  ProductName=Laughing Lumberjack Lager   Category=Beverages      UnitPrice=14.0000       UnitsInStock=52
  Products: ProductID=70  ProductName=Outback Lager       Category=Beverages      UnitPrice=15.0000       UnitsInStock=15
  Products: ProductID=75  ProductName=Rhönbräu Klosterbier        Category=Beverages      UnitPrice=7.7500        UnitsInStock=125
  Products: ProductID=76  ProductName=Lakkalikööri        Category=Beverages      UnitPrice=18.0000       UnitsInStock=57
Category=Produce        Products=...
  Products: ProductID=7   ProductName=Uncle Bob's Organic Dried Pears     Category=Produce        UnitPrice=30.0000       UnitsInStock=15
  Products: ProductID=14  ProductName=Tofu        Category=Produce        UnitPrice=23.2500       UnitsInStock=35
  Products: ProductID=28  ProductName=Rössle Sauerkraut   Category=Produce        UnitPrice=45.6000       UnitsInStock=26
  Products: ProductID=51  ProductName=Manjimup Dried Apples       Category=Produce        UnitPrice=53.0000       UnitsInStock=20
  Products: ProductID=74  ProductName=Longlife Tofu       Category=Produce        UnitPrice=10.0000       UnitsInStock=4
Category=Seafood        Products=...
  Products: ProductID=10  ProductName=Ikura       Category=Seafood        UnitPrice=31.0000       UnitsInStock=31
  Products: ProductID=13  ProductName=Konbu       Category=Seafood        UnitPrice=6.0000        UnitsInStock=24
  Products: ProductID=18  ProductName=Carnarvon Tigers    Category=Seafood        UnitPrice=62.5000       UnitsInStock=42
  Products: ProductID=30  ProductName=Nord-Ost Matjeshering       Category=Seafood        UnitPrice=25.8900       UnitsInStock=10
  Products: ProductID=36  ProductName=Inlagd Sill         Category=Seafood        UnitPrice=19.0000       UnitsInStock=112
  Products: ProductID=37  ProductName=Gravad lax  Category=Seafood        UnitPrice=26.0000       UnitsInStock=11
  Products: ProductID=40  ProductName=Boston Crab Meat    Category=Seafood        UnitPrice=18.4000       UnitsInStock=123
  Products: ProductID=41  ProductName=Jack's New England Clam Chowder     Category=Seafood        UnitPrice=9.6500        UnitsInStock=85
  Products: ProductID=45  ProductName=Rogede sild         Category=Seafood        UnitPrice=9.5000        UnitsInStock=5
  Products: ProductID=46  ProductName=Spegesild   Category=Seafood        UnitPrice=12.0000       UnitsInStock=95
  Products: ProductID=58  ProductName=Escargots de Bourgogne      Category=Seafood        UnitPrice=13.2500       UnitsInStock=62
  Products: ProductID=73  ProductName=Röd Kaviar  Category=Seafood        UnitPrice=15.0000       UnitsInStock=101
Category=Confections    Products=...
  Products: ProductID=16  ProductName=Pavlova     Category=Confections    UnitPrice=17.4500       UnitsInStock=29
  Products: ProductID=19  ProductName=Teatime Chocolate Biscuits  Category=Confections    UnitPrice=9.2000        UnitsInStock=25
  Products: ProductID=20  ProductName=Sir Rodney's Marmalade      Category=Confections    UnitPrice=81.0000       UnitsInStock=40
  Products: ProductID=21  ProductName=Sir Rodney's Scones         Category=Confections    UnitPrice=10.0000       UnitsInStock=3
  Products: ProductID=25  ProductName=NuNuCa Nuß-Nougat-Creme     Category=Confections    UnitPrice=14.0000       UnitsInStock=76
  Products: ProductID=26  ProductName=Gumbär Gummibärchen         Category=Confections    UnitPrice=31.2300       UnitsInStock=15
  Products: ProductID=27  ProductName=Schoggi Schokolade  Category=Confections    UnitPrice=43.9000       UnitsInStock=49
  Products: ProductID=47  ProductName=Zaanse koeken       Category=Confections    UnitPrice=9.5000        UnitsInStock=36
  Products: ProductID=48  ProductName=Chocolade   Category=Confections    UnitPrice=12.7500       UnitsInStock=15
  Products: ProductID=49  ProductName=Maxilaku    Category=Confections    UnitPrice=20.0000       UnitsInStock=10
  Products: ProductID=50  ProductName=Valkoinen suklaa    Category=Confections    UnitPrice=16.2500       UnitsInStock=65
  Products: ProductID=62  ProductName=Tarte au sucre      Category=Confections    UnitPrice=49.3000       UnitsInStock=17
  Products: ProductID=68  ProductName=Scottish Longbreads         Category=Confections    UnitPrice=12.5000       UnitsInStock=6
Category=Grains/Cereals         Products=...
  Products: ProductID=22  ProductName=Gustaf's Knäckebröd         Category=Grains/Cereals         UnitPrice=21.0000       UnitsInStock=104
  Products: ProductID=23  ProductName=Tunnbröd    Category=Grains/Cereals         UnitPrice=9.0000        UnitsInStock=61
  Products: ProductID=42  ProductName=Singaporean Hokkien Fried Mee       Category=Grains/Cereals         UnitPrice=14.0000       UnitsInStock=26
  Products: ProductID=52  ProductName=Filo Mix    Category=Grains/Cereals         UnitPrice=7.0000        UnitsInStock=38
  Products: ProductID=56  ProductName=Gnocchi di nonna Alice      Category=Grains/Cereals         UnitPrice=38.0000       UnitsInStock=21
  Products: ProductID=57  ProductName=Ravioli Angelo      Category=Grains/Cereals         UnitPrice=19.5000       UnitsInStock=36
  Products: ProductID=64  ProductName=Wimmers gute Semmelknödel   Category=Grains/Cereals         UnitPrice=33.2500       UnitsInStock=22
```
