## Projection Operators: Select - Anonymous Types 3 ##

This sample uses select to produce a sequence containing some properties of Products, including UnitPrice which is renamed to Price in the resulting type.

### Code ###

```
public void Linq11() {
    List<Product> products = GetProductList();

    var productInfos =
        from p in products
        select new {p.ProductName, p.Category, Price = p.UnitPrice};
    
    Console.WriteLine("Product Info:");
    foreach (var productInfo in productInfos) {
        Console.WriteLine("{0} is in the category {1} and costs {2} per unit.", productInfo.ProductName, productInfo.Category, productInfo.Price);
    }
}

```

### Output ###

```
Product Info:
Chai is in the category Beverages and costs 18.0000 per unit.
Chang is in the category Beverages and costs 19.0000 per unit.
Aniseed Syrup is in the category Condiments and costs 10.0000 per unit.
Chef Anton's Cajun Seasoning is in the category Condiments and costs 22.0000 per unit.
Chef Anton's Gumbo Mix is in the category Condiments and costs 21.3500 per unit.
Grandma's Boysenberry Spread is in the category Condiments and costs 25.0000 per unit.
Uncle Bob's Organic Dried Pears is in the category Produce and costs 30.0000 per unit.
Northwoods Cranberry Sauce is in the category Condiments and costs 40.0000 per unit.
Mishi Kobe Niku is in the category Meat/Poultry and costs 97.0000 per unit.
Ikura is in the category Seafood and costs 31.0000 per unit.
Queso Cabrales is in the category Dairy Products and costs 21.0000 per unit.
Queso Manchego La Pastora is in the category Dairy Products and costs 38.0000 per unit.
Konbu is in the category Seafood and costs 6.0000 per unit.
Tofu is in the category Produce and costs 23.2500 per unit.
Genen Shouyu is in the category Condiments and costs 15.5000 per unit.
Pavlova is in the category Confections and costs 17.4500 per unit.
Alice Mutton is in the category Meat/Poultry and costs 39.0000 per unit.
Carnarvon Tigers is in the category Seafood and costs 62.5000 per unit.
Teatime Chocolate Biscuits is in the category Confections and costs 9.2000 per unit.
Sir Rodney's Marmalade is in the category Confections and costs 81.0000 per unit.
Sir Rodney's Scones is in the category Confections and costs 10.0000 per unit.
Gustaf's Knäckebröd is in the category Grains/Cereals and costs 21.0000 per unit.
Tunnbröd is in the category Grains/Cereals and costs 9.0000 per unit.
Guaraná Fantástica is in the category Beverages and costs 4.5000 per unit.
NuNuCa Nuß-Nougat-Creme is in the category Confections and costs 14.0000 per unit.
Gumbär Gummibärchen is in the category Confections and costs 31.2300 per unit.
Schoggi Schokolade is in the category Confections and costs 43.9000 per unit.
Rössle Sauerkraut is in the category Produce and costs 45.6000 per unit.
Thüringer Rostbratwurst is in the category Meat/Poultry and costs 123.7900 per unit.
Nord-Ost Matjeshering is in the category Seafood and costs 25.8900 per unit.
Gorgonzola Telino is in the category Dairy Products and costs 12.5000 per unit.
Mascarpone Fabioli is in the category Dairy Products and costs 32.0000 per unit.
Geitost is in the category Dairy Products and costs 2.5000 per unit.
Sasquatch Ale is in the category Beverages and costs 14.0000 per unit.
Steeleye Stout is in the category Beverages and costs 18.0000 per unit.
Inlagd Sill is in the category Seafood and costs 19.0000 per unit.
Gravad lax is in the category Seafood and costs 26.0000 per unit.
Côte de Blaye is in the category Beverages and costs 263.5000 per unit.
Chartreuse verte is in the category Beverages and costs 18.0000 per unit.
Boston Crab Meat is in the category Seafood and costs 18.4000 per unit.
Jack's New England Clam Chowder is in the category Seafood and costs 9.6500 per unit.
Singaporean Hokkien Fried Mee is in the category Grains/Cereals and costs 14.0000 per unit.
Ipoh Coffee is in the category Beverages and costs 46.0000 per unit.
Gula Malacca is in the category Condiments and costs 19.4500 per unit.
Rogede sild is in the category Seafood and costs 9.5000 per unit.
Spegesild is in the category Seafood and costs 12.0000 per unit.
Zaanse koeken is in the category Confections and costs 9.5000 per unit.
Chocolade is in the category Confections and costs 12.7500 per unit.
Maxilaku is in the category Confections and costs 20.0000 per unit.
Valkoinen suklaa is in the category Confections and costs 16.2500 per unit.
Manjimup Dried Apples is in the category Produce and costs 53.0000 per unit.
Filo Mix is in the category Grains/Cereals and costs 7.0000 per unit.
Perth Pasties is in the category Meat/Poultry and costs 32.8000 per unit.
Tourtière is in the category Meat/Poultry and costs 7.4500 per unit.
Pâté chinois is in the category Meat/Poultry and costs 24.0000 per unit.
Gnocchi di nonna Alice is in the category Grains/Cereals and costs 38.0000 per unit.
Ravioli Angelo is in the category Grains/Cereals and costs 19.5000 per unit.
Escargots de Bourgogne is in the category Seafood and costs 13.2500 per unit.
Raclette Courdavault is in the category Dairy Products and costs 55.0000 per unit.
Camembert Pierrot is in the category Dairy Products and costs 34.0000 per unit.
Sirop d'érable is in the category Condiments and costs 28.5000 per unit.
Tarte au sucre is in the category Confections and costs 49.3000 per unit.
Vegie-spread is in the category Condiments and costs 43.9000 per unit.
Wimmers gute Semmelknödel is in the category Grains/Cereals and costs 33.2500 per unit.
Louisiana Fiery Hot Pepper Sauce is in the category Condiments and costs 21.0500 per unit.
Louisiana Hot Spiced Okra is in the category Condiments and costs 17.0000 per unit.
Laughing Lumberjack Lager is in the category Beverages and costs 14.0000 per unit.
Scottish Longbreads is in the category Confections and costs 12.5000 per unit.
Gudbrandsdalsost is in the category Dairy Products and costs 36.0000 per unit.
Outback Lager is in the category Beverages and costs 15.0000 per unit.
Flotemysost is in the category Dairy Products and costs 21.5000 per unit.
Mozzarella di Giovanni is in the category Dairy Products and costs 34.8000 per unit.
Röd Kaviar is in the category Seafood and costs 15.0000 per unit.
Longlife Tofu is in the category Produce and costs 10.0000 per unit.
Rhönbräu Klosterbier is in the category Beverages and costs 7.7500 per unit.
Lakkalikööri is in the category Beverages and costs 18.0000 per unit.
Original Frankfurter grüne Soße is in the category Condiments and costs 13.0000 per unit.
```
