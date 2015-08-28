## Projection Operators: SelectMany - Multiple from ##

This sample uses multiple from clauses so that filtering on customers can be done before selecting their orders.  This makes the query more efficient by not selecting and then discarding orders for customers outside of Washington.

### Code ###

```
public void Linq18() {
    List<Customer> customers = GetCustomerList();

    DateTime cutoffDate = new DateTime(1997, 1, 1);

    var orders =
        from c in customers
        where c.Region == "WA"
        from o in c.Orders
        where o.OrderDate >= cutoffDate
        select new {c.CustomerID, o.OrderID};

    ObjectDumper.Write(orders);
}

```

### Output ###

```
CustomerID=LAZYK        OrderID=10482
CustomerID=LAZYK        OrderID=10545
CustomerID=TRAIH        OrderID=10574
CustomerID=TRAIH        OrderID=10577
CustomerID=TRAIH        OrderID=10822
CustomerID=WHITC        OrderID=10469
CustomerID=WHITC        OrderID=10483
CustomerID=WHITC        OrderID=10504
CustomerID=WHITC        OrderID=10596
CustomerID=WHITC        OrderID=10693
CustomerID=WHITC        OrderID=10696
CustomerID=WHITC        OrderID=10723
CustomerID=WHITC        OrderID=10740
CustomerID=WHITC        OrderID=10861
CustomerID=WHITC        OrderID=10904
CustomerID=WHITC        OrderID=11032
CustomerID=WHITC        OrderID=11066
```
