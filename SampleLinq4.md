## Restriction Operators: Where - Drilldown ##

This sample uses where to find all customers in Washington and then uses the resulting sequence to drill down into their orders.

### Code ###

```
public void Linq4() {
    List<Customer> customers = GetCustomerList();

    var waCustomers =
        from c in customers
        where c.Region == "WA"
        select c;
    
    Console.WriteLine("Customers from Washington and their orders:");
    foreach (var customer in waCustomers) {
        Console.WriteLine("Customer {0}: {1}", customer.CustomerID, customer.CompanyName);
        foreach (var order in customer.Orders) {
            Console.WriteLine("  Order {0}: {1}", order.OrderID, order.OrderDate);
        }
    }
}

```

### Output ###

```
Customers from Washington and their orders:
Customer LAZYK: Lazy K Kountry Store
  Order 10482: 3/21/1997 12:00:00 AM
  Order 10545: 5/22/1997 12:00:00 AM
Customer TRAIH: Trail's Head Gourmet Provisioners
  Order 10574: 6/19/1997 12:00:00 AM
  Order 10577: 6/23/1997 12:00:00 AM
  Order 10822: 1/8/1998 12:00:00 AM
Customer WHITC: White Clover Markets
  Order 10269: 7/31/1996 12:00:00 AM
  Order 10344: 11/1/1996 12:00:00 AM
  Order 10469: 3/10/1997 12:00:00 AM
  Order 10483: 3/24/1997 12:00:00 AM
  Order 10504: 4/11/1997 12:00:00 AM
  Order 10596: 7/11/1997 12:00:00 AM
  Order 10693: 10/6/1997 12:00:00 AM
  Order 10696: 10/8/1997 12:00:00 AM
  Order 10723: 10/30/1997 12:00:00 AM
  Order 10740: 11/13/1997 12:00:00 AM
  Order 10861: 1/30/1998 12:00:00 AM
  Order 10904: 2/24/1998 12:00:00 AM
  Order 11032: 4/17/1998 12:00:00 AM
  Order 11066: 5/1/1998 12:00:00 AM
```
