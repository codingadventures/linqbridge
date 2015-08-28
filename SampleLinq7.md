## Projection Operators: Select - Simple 2 ##

This sample uses select to return a sequence of just the names of a list of products.

### Code ###

```
public void Linq7() {
    List<Product> products = GetProductList();

    var productNames =
        from p in products
        select p.ProductName;
    
    Console.WriteLine("Product Names:");
    foreach (var productName in productNames) {
        Console.WriteLine(productName);
    }
}

```

### Output ###

```
Product Names:
Chai
Chang
Aniseed Syrup
Chef Anton's Cajun Seasoning
Chef Anton's Gumbo Mix
Grandma's Boysenberry Spread
Uncle Bob's Organic Dried Pears
Northwoods Cranberry Sauce
Mishi Kobe Niku
Ikura
Queso Cabrales
Queso Manchego La Pastora
Konbu
Tofu
Genen Shouyu
Pavlova
Alice Mutton
Carnarvon Tigers
Teatime Chocolate Biscuits
Sir Rodney's Marmalade
Sir Rodney's Scones
Gustaf's Knäckebröd
Tunnbröd
Guaraná Fantástica
NuNuCa Nuß-Nougat-Creme
Gumbär Gummibärchen
Schoggi Schokolade
Rössle Sauerkraut
Thüringer Rostbratwurst
Nord-Ost Matjeshering
Gorgonzola Telino
Mascarpone Fabioli
Geitost
Sasquatch Ale
Steeleye Stout
Inlagd Sill
Gravad lax
Côte de Blaye
Chartreuse verte
Boston Crab Meat
Jack's New England Clam Chowder
Singaporean Hokkien Fried Mee
Ipoh Coffee
Gula Malacca
Rogede sild
Spegesild
Zaanse koeken
Chocolade
Maxilaku
Valkoinen suklaa
Manjimup Dried Apples
Filo Mix
Perth Pasties
Tourtière
Pâté chinois
Gnocchi di nonna Alice
Ravioli Angelo
Escargots de Bourgogne
Raclette Courdavault
Camembert Pierrot
Sirop d'érable
Tarte au sucre
Vegie-spread
Wimmers gute Semmelknödel
Louisiana Fiery Hot Pepper Sauce
Louisiana Hot Spiced Okra
Laughing Lumberjack Lager
Scottish Longbreads
Gudbrandsdalsost
Outback Lager
Flotemysost
Mozzarella di Giovanni
Röd Kaviar
Longlife Tofu
Rhönbräu Klosterbier
Lakkalikööri
Original Frankfurter grüne Soße
```
