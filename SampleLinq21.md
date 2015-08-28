## Partitioning Operators: Take - Nested ##

This sample uses Take to get the first 3 orders from customers in Washington.

### Code ###

```
public void Linq21() {
    List<Customer> customers = GetCustomerList();

    var first3WAOrders = (
        from c in customers
        from o in c.Orders
        where c.Region == "WA"
        select new {c.CustomerID, o.OrderID, o.OrderDate} )
        .Take(3);
    
    Console.WriteLine("First 3 orders in WA:");
    foreach (var order in first3WAOrders) {
        ObjectDumper.Write(order);
    }
}

```

### Output ###

```
First 3 orders in WA:
CustomerID=LAZYK        OrderID=10482   OrderDate=3/21/1997
CustomerID=LAZYK        OrderID=10545   OrderDate=5/22/1997
CustomerID=TRAIH        OrderID=10574   OrderDate=6/19/1997
```
