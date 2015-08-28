## Set Operators: Union - 2 ##

This sample uses Union to create one sequence that contains the unique first letter from both product and customer names.

### Code ###

```
public void Linq49() {
    List<Product> products = GetProductList();
    List<Customer> customers = GetCustomerList();
    
    var productFirstChars =
        from p in products
        select p.ProductName[0];
    var customerFirstChars =
        from c in customers
        select c.CompanyName[0];
    
    var uniqueFirstChars = productFirstChars.Union(customerFirstChars);
    
    Console.WriteLine("Unique first letters from Product names and Customer names:");
    foreach (var ch in uniqueFirstChars) {
        Console.WriteLine(ch);
    }
}

```

### Output ###

```
Unique first letters from Product names and Customer names:
C
A
G
U
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
J
Z
V
F
E
W
L
O
D
H
```
