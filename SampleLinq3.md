## Restriction Operators: Where - Simple 3 ##

This sample uses where to find all products that are in stock and cost more than 3.00 per unit.

### Code ###

```
public void Linq3() {
    List<Product> products = GetProductList();

    var expensiveInStockProducts =
        from p in products
        where p.UnitsInStock > 0 && p.UnitPrice > 3.00M
        select p;
    
    Console.WriteLine("In-stock products that cost more than 3.00:");
    foreach (var product in expensiveInStockProducts) {
        Console.WriteLine("{0} is in stock and costs more than 3.00.", product.ProductName);
    }
}

```

### Output ###

```
In-stock products that cost more than 3.00:
Chai is in stock and costs more than 3.00.
Chang is in stock and costs more than 3.00.
Aniseed Syrup is in stock and costs more than 3.00.
Chef Anton's Cajun Seasoning is in stock and costs more than 3.00.
Grandma's Boysenberry Spread is in stock and costs more than 3.00.
Uncle Bob's Organic Dried Pears is in stock and costs more than 3.00.
Northwoods Cranberry Sauce is in stock and costs more than 3.00.
Mishi Kobe Niku is in stock and costs more than 3.00.
Ikura is in stock and costs more than 3.00.
Queso Cabrales is in stock and costs more than 3.00.
Queso Manchego La Pastora is in stock and costs more than 3.00.
Konbu is in stock and costs more than 3.00.
Tofu is in stock and costs more than 3.00.
Genen Shouyu is in stock and costs more than 3.00.
Pavlova is in stock and costs more than 3.00.
Carnarvon Tigers is in stock and costs more than 3.00.
Teatime Chocolate Biscuits is in stock and costs more than 3.00.
Sir Rodney's Marmalade is in stock and costs more than 3.00.
Sir Rodney's Scones is in stock and costs more than 3.00.
Gustaf's Knäckebröd is in stock and costs more than 3.00.
Tunnbröd is in stock and costs more than 3.00.
Guaraná Fantástica is in stock and costs more than 3.00.
NuNuCa Nuß-Nougat-Creme is in stock and costs more than 3.00.
Gumbär Gummibärchen is in stock and costs more than 3.00.
Schoggi Schokolade is in stock and costs more than 3.00.
Rössle Sauerkraut is in stock and costs more than 3.00.
Nord-Ost Matjeshering is in stock and costs more than 3.00.
Mascarpone Fabioli is in stock and costs more than 3.00.
Sasquatch Ale is in stock and costs more than 3.00.
Steeleye Stout is in stock and costs more than 3.00.
Inlagd Sill is in stock and costs more than 3.00.
Gravad lax is in stock and costs more than 3.00.
Côte de Blaye is in stock and costs more than 3.00.
Chartreuse verte is in stock and costs more than 3.00.
Boston Crab Meat is in stock and costs more than 3.00.
Jack's New England Clam Chowder is in stock and costs more than 3.00.
Singaporean Hokkien Fried Mee is in stock and costs more than 3.00.
Ipoh Coffee is in stock and costs more than 3.00.
Gula Malacca is in stock and costs more than 3.00.
Rogede sild is in stock and costs more than 3.00.
Spegesild is in stock and costs more than 3.00.
Zaanse koeken is in stock and costs more than 3.00.
Chocolade is in stock and costs more than 3.00.
Maxilaku is in stock and costs more than 3.00.
Valkoinen suklaa is in stock and costs more than 3.00.
Manjimup Dried Apples is in stock and costs more than 3.00.
Filo Mix is in stock and costs more than 3.00.
Tourtière is in stock and costs more than 3.00.
Pâté chinois is in stock and costs more than 3.00.
Gnocchi di nonna Alice is in stock and costs more than 3.00.
Ravioli Angelo is in stock and costs more than 3.00.
Escargots de Bourgogne is in stock and costs more than 3.00.
Raclette Courdavault is in stock and costs more than 3.00.
Camembert Pierrot is in stock and costs more than 3.00.
Sirop d'érable is in stock and costs more than 3.00.
Tarte au sucre is in stock and costs more than 3.00.
Vegie-spread is in stock and costs more than 3.00.
Wimmers gute Semmelknödel is in stock and costs more than 3.00.
Louisiana Fiery Hot Pepper Sauce is in stock and costs more than 3.00.
Louisiana Hot Spiced Okra is in stock and costs more than 3.00.
Laughing Lumberjack Lager is in stock and costs more than 3.00.
Scottish Longbreads is in stock and costs more than 3.00.
Gudbrandsdalsost is in stock and costs more than 3.00.
Outback Lager is in stock and costs more than 3.00.
Flotemysost is in stock and costs more than 3.00.
Mozzarella di Giovanni is in stock and costs more than 3.00.
Röd Kaviar is in stock and costs more than 3.00.
Longlife Tofu is in stock and costs more than 3.00.
Rhönbräu Klosterbier is in stock and costs more than 3.00.
Lakkalikööri is in stock and costs more than 3.00.
Original Frankfurter grüne Soße is in stock and costs more than 3.00.
```
