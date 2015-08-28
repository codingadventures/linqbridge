## Set Operators: Intersect - 2 ##

This sample uses Intersect to create one sequence that contains the common first letter from both product and customer names.

### Code ###

```
public void Linq51() {
    List<Product> products = GetProductList();
    List<Customer> customers = GetCustomerList();
    
    var productFirstChars =
        from p in products
        select p.ProductName[0];
    var customerFirstChars =
        from c in customers
        select c.CompanyName[0];
    
    var commonFirstChars = productFirstChars.Intersect(customerFirstChars);
    
    Console.WriteLine("Common first letters from Product names and Customer names:");
    foreach (var ch in commonFirstChars) {
        Console.WriteLine(ch);
    }
}

```

### Output ###

```
Common first letters from Product names and Customer names:
C
A
G
N
M
I
Q
K
T
P
S
R
B
V
F
E
W
L
O
```
