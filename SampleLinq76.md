## Aggregate Operators: Count - Nested ##

This sample uses Count to return a list of customers and how many orders each has.

### Code ###

```
public void Linq76() {
    List<Customer> customers = GetCustomerList();
    
    var orderCounts =
        from c in customers
        select new {c.CustomerID, OrderCount = c.Orders.Count()};

    ObjectDumper.Write(orderCounts);
}

```

### Output ###

```
CustomerID=ALFKI        OrderCount=6
CustomerID=ANATR        OrderCount=4
CustomerID=ANTON        OrderCount=7
CustomerID=AROUT        OrderCount=13
CustomerID=BERGS        OrderCount=18
CustomerID=BLAUS        OrderCount=7
CustomerID=BLONP        OrderCount=11
CustomerID=BOLID        OrderCount=3
CustomerID=BONAP        OrderCount=17
CustomerID=BOTTM        OrderCount=14
CustomerID=BSBEV        OrderCount=10
CustomerID=CACTU        OrderCount=6
CustomerID=CENTC        OrderCount=1
CustomerID=CHOPS        OrderCount=8
CustomerID=COMMI        OrderCount=5
CustomerID=CONSH        OrderCount=3
CustomerID=DRACD        OrderCount=6
CustomerID=DUMON        OrderCount=4
CustomerID=EASTC        OrderCount=8
CustomerID=ERNSH        OrderCount=30
CustomerID=FAMIA        OrderCount=7
CustomerID=FISSA        OrderCount=0
CustomerID=FOLIG        OrderCount=5
CustomerID=FOLKO        OrderCount=19
CustomerID=FRANK        OrderCount=15
CustomerID=FRANR        OrderCount=3
CustomerID=FRANS        OrderCount=6
CustomerID=FURIB        OrderCount=8
CustomerID=GALED        OrderCount=5
CustomerID=GODOS        OrderCount=10
CustomerID=GOURL        OrderCount=9
CustomerID=GREAL        OrderCount=11
CustomerID=GROSR        OrderCount=2
CustomerID=HANAR        OrderCount=14
CustomerID=HILAA        OrderCount=18
CustomerID=HUNGC        OrderCount=5
CustomerID=HUNGO        OrderCount=19
CustomerID=ISLAT        OrderCount=10
CustomerID=KOENE        OrderCount=14
CustomerID=LACOR        OrderCount=4
CustomerID=LAMAI        OrderCount=14
CustomerID=LAUGB        OrderCount=3
CustomerID=LAZYK        OrderCount=2
CustomerID=LEHMS        OrderCount=15
CustomerID=LETSS        OrderCount=4
CustomerID=LILAS        OrderCount=14
CustomerID=LINOD        OrderCount=12
CustomerID=LONEP        OrderCount=8
CustomerID=MAGAA        OrderCount=10
CustomerID=MAISD        OrderCount=7
CustomerID=MEREP        OrderCount=13
CustomerID=MORGK        OrderCount=5
CustomerID=NORTS        OrderCount=3
CustomerID=OCEAN        OrderCount=5
CustomerID=OLDWO        OrderCount=10
CustomerID=OTTIK        OrderCount=9
CustomerID=PARIS        OrderCount=0
CustomerID=PERIC        OrderCount=6
CustomerID=PICCO        OrderCount=10
CustomerID=PRINI        OrderCount=6
CustomerID=QUEDE        OrderCount=9
CustomerID=QUEEN        OrderCount=13
CustomerID=QUICK        OrderCount=28
CustomerID=RANCH        OrderCount=5
CustomerID=RATTC        OrderCount=18
CustomerID=REGGC        OrderCount=12
CustomerID=RICAR        OrderCount=11
CustomerID=RICSU        OrderCount=10
CustomerID=ROMEY        OrderCount=5
CustomerID=SANTG        OrderCount=6
CustomerID=SAVEA        OrderCount=31
CustomerID=SEVES        OrderCount=9
CustomerID=SIMOB        OrderCount=7
CustomerID=SPECD        OrderCount=4
CustomerID=SPLIR        OrderCount=9
CustomerID=SUPRD        OrderCount=12
CustomerID=THEBI        OrderCount=4
CustomerID=THECR        OrderCount=3
CustomerID=TOMSP        OrderCount=5
CustomerID=TORTU        OrderCount=10
CustomerID=TRADH        OrderCount=7
CustomerID=TRAIH        OrderCount=3
CustomerID=VAFFE        OrderCount=11
CustomerID=VICTE        OrderCount=10
CustomerID=VINET        OrderCount=4
CustomerID=WANDK        OrderCount=10
CustomerID=WARTH        OrderCount=15
CustomerID=WELLI        OrderCount=9
CustomerID=WHITC        OrderCount=14
CustomerID=WILMK        OrderCount=8
CustomerID=WOLZA        OrderCount=7
```
