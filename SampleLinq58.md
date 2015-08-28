## Element Operators: First - Simple ##

This sample uses First to return the first matching element as a Product, instead of as a sequence containing a Product.

### Code ###

```
public void Linq58() {
    List<Product> products = GetProductList();

    Product product12 = (
        from p in products
        where p.ProductID == 12
        select p )
        .First();

    ObjectDumper.Write(product12);
}

```

### Output ###

```
ProductID=12    ProductName=Queso Manchego La Pastora   Category=Dairy Products         UnitPrice=38.0000       UnitsInStock=86
```
