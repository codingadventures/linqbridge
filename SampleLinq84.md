## Aggregate Operators: Min - Elements ##

This sample uses Min to get the products with the cheapest price in each category.

### Code ###

```
public void Linq84() {
    List<Product> products = GetProductList();

    var categories =
        from p in products
        group p by p.Category into g
        let minPrice = g.Min(p => p.UnitPrice)
        select new {Category = g.Key, CheapestProducts = g.Where(p => p.UnitPrice == minPrice)};

    ObjectDumper.Write(categories, 1);
}

```

### Output ###

```
Category=Beverages      CheapestProducts=...
  CheapestProducts: ProductID=24  ProductName=Guaraná Fantástica  Category=Beverages      UnitPrice=4.5000        UnitsInStock=20
Category=Condiments     CheapestProducts=...
  CheapestProducts: ProductID=3   ProductName=Aniseed Syrup       Category=Condiments     UnitPrice=10.0000       UnitsInStock=13
Category=Produce        CheapestProducts=...
  CheapestProducts: ProductID=74  ProductName=Longlife Tofu       Category=Produce        UnitPrice=10.0000       UnitsInStock=4
Category=Meat/Poultry   CheapestProducts=...
  CheapestProducts: ProductID=54  ProductName=Tourtière   Category=Meat/Poultry   UnitPrice=7.4500        UnitsInStock=21
Category=Seafood        CheapestProducts=...
  CheapestProducts: ProductID=13  ProductName=Konbu       Category=Seafood        UnitPrice=6.0000        UnitsInStock=24
Category=Dairy Products         CheapestProducts=...
  CheapestProducts: ProductID=33  ProductName=Geitost     Category=Dairy Products         UnitPrice=2.5000        UnitsInStock=112
Category=Confections    CheapestProducts=...
  CheapestProducts: ProductID=19  ProductName=Teatime Chocolate Biscuits  Category=Confections    UnitPrice=9.2000        UnitsInStock=25
Category=Grains/Cereals         CheapestProducts=...
  CheapestProducts: ProductID=52  ProductName=Filo Mix    Category=Grains/Cereals         UnitPrice=7.0000        UnitsInStock=38
```
