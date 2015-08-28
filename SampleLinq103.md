## Join Operators: Group Join ##

Using a group join you can get all the products that match a given category bundled as a sequence.

### Code ###

```
public void Linq103() {
    string[] categories = new string[]{ 
        "Beverages", 
        "Condiments", 
        "Vegetables", 
        "Dairy Products", 
        "Seafood" };
       
    List<Product> products = GetProductList();

    var q = 
        from c in categories
        join p in products on c equals p.Category into ps
        select new { Category = c, Products = ps };

    foreach (var v in q) {
        Console.WriteLine(v.Category + ":");
        foreach (var p in v.Products) {
            Console.WriteLine("   " + p.ProductName);
        }
    }
}

```

### Output ###

```
Beverages:
   Chai
   Chang
   Guaraná Fantástica
   Sasquatch Ale
   Steeleye Stout
   Côte de Blaye
   Chartreuse verte
   Ipoh Coffee
   Laughing Lumberjack Lager
   Outback Lager
   Rhönbräu Klosterbier
   Lakkalikööri
Condiments:
   Aniseed Syrup
   Chef Anton's Cajun Seasoning
   Chef Anton's Gumbo Mix
   Grandma's Boysenberry Spread
   Northwoods Cranberry Sauce
   Genen Shouyu
   Gula Malacca
   Sirop d'érable
   Vegie-spread
   Louisiana Fiery Hot Pepper Sauce
   Louisiana Hot Spiced Okra
   Original Frankfurter grüne Soße
Vegetables:
Dairy Products:
   Queso Cabrales
   Queso Manchego La Pastora
   Gorgonzola Telino
   Mascarpone Fabioli
   Geitost
   Raclette Courdavault
   Camembert Pierrot
   Gudbrandsdalsost
   Flotemysost
   Mozzarella di Giovanni
Seafood:
   Ikura
   Konbu
   Carnarvon Tigers
   Nord-Ost Matjeshering
   Inlagd Sill
   Gravad lax
   Boston Crab Meat
   Jack's New England Clam Chowder
   Rogede sild
   Spegesild
   Escargots de Bourgogne
   Röd Kaviar
```
