## Restriction Operators: Where - Simple 2 ##

This sample uses where to find all products that are out of stock.

### Code ###

```
public void Linq2() {
    List<Product> products = GetProductList();

    var soldOutProducts =
        from p in products
        where p.UnitsInStock == 0
        select p;
    
    Console.WriteLine("Sold out products:");
    foreach (var product in soldOutProducts) {
        Console.WriteLine("{0} is sold out!", product.ProductName);
    }
}

```

### Output ###

```
Sold out products:
Chef Anton's Gumbo Mix is sold out!
Alice Mutton is sold out!
Thüringer Rostbratwurst is sold out!
Gorgonzola Telino is sold out!
Perth Pasties is sold out!
```
