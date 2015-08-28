## Partitioning Operators: Skip - Nested ##

This sample uses Take to get all but the first 2 orders from customers in Washington.

### Code ###

```
public void Linq23() {
    List<Customer> customers = GetCustomerList();

    var waOrders =
        from c in customers
        from o in c.Orders
        where c.Region == "WA"
        select new {c.CustomerID, o.OrderID, o.OrderDate};

    var allButFirst2Orders = waOrders.Skip(2);
    
    Console.WriteLine("All but first 2 orders in WA:");
    foreach (var order in allButFirst2Orders) {
        ObjectDumper.Write(order);
    }
}

```

### Output ###

```
All but first 2 orders in WA:
CustomerID=TRAIH        OrderID=10574   OrderDate=6/19/1997
CustomerID=TRAIH        OrderID=10577   OrderDate=6/23/1997
CustomerID=TRAIH        OrderID=10822   OrderDate=1/8/1998
CustomerID=WHITC        OrderID=10269   OrderDate=7/31/1996
CustomerID=WHITC        OrderID=10344   OrderDate=11/1/1996
CustomerID=WHITC        OrderID=10469   OrderDate=3/10/1997
CustomerID=WHITC        OrderID=10483   OrderDate=3/24/1997
CustomerID=WHITC        OrderID=10504   OrderDate=4/11/1997
CustomerID=WHITC        OrderID=10596   OrderDate=7/11/1997
CustomerID=WHITC        OrderID=10693   OrderDate=10/6/1997
CustomerID=WHITC        OrderID=10696   OrderDate=10/8/1997
CustomerID=WHITC        OrderID=10723   OrderDate=10/30/1997
CustomerID=WHITC        OrderID=10740   OrderDate=11/13/1997
CustomerID=WHITC        OrderID=10861   OrderDate=1/30/1998
CustomerID=WHITC        OrderID=10904   OrderDate=2/24/1998
CustomerID=WHITC        OrderID=11032   OrderDate=4/17/1998
CustomerID=WHITC        OrderID=11066   OrderDate=5/1/1998
```
