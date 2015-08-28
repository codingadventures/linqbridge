## Sample Data: CustomerList / ProductList ##

This method displays the sample data used by the queries above.  You can also see the method below that constructs the lists.  ProductList is built using a collection initializer and CustomerList uses XLinq to read its values into memory from an XML document.

### Code ###

```
public void Linq106() {
    ObjectDumper.Write(GetCustomerList(), 1);

    Console.WriteLine();

    ObjectDumper.Write(GetProductList());
}

private void createLists() {
    // Product data created in-memory using collection initializer:
    productList =
        new List<Product> {
            new Product { ProductID = 1, ProductName = "Chai", Category = "Beverages", UnitPrice = 18.0000M, UnitsInStock = 39 },
            new Product { ProductID = 2, ProductName = "Chang", Category = "Beverages", UnitPrice = 19.0000M, UnitsInStock = 17 },
            new Product { ProductID = 3, ProductName = "Aniseed Syrup", Category = "Condiments", UnitPrice = 10.0000M, UnitsInStock = 13 },
            new Product { ProductID = 4, ProductName = "Chef Anton's Cajun Seasoning", Category = "Condiments", UnitPrice = 22.0000M, UnitsInStock = 53 },
            new Product { ProductID = 5, ProductName = "Chef Anton's Gumbo Mix", Category = "Condiments", UnitPrice = 21.3500M, UnitsInStock = 0 },
            new Product { ProductID = 6, ProductName = "Grandma's Boysenberry Spread", Category = "Condiments", UnitPrice = 25.0000M, UnitsInStock = 120 },
            new Product { ProductID = 7, ProductName = "Uncle Bob's Organic Dried Pears", Category = "Produce", UnitPrice = 30.0000M, UnitsInStock = 15 },
            new Product { ProductID = 8, ProductName = "Northwoods Cranberry Sauce", Category = "Condiments", UnitPrice = 40.0000M, UnitsInStock = 6 },
            new Product { ProductID = 9, ProductName = "Mishi Kobe Niku", Category = "Meat/Poultry", UnitPrice = 97.0000M, UnitsInStock = 29 },
            new Product { ProductID = 10, ProductName = "Ikura", Category = "Seafood", UnitPrice = 31.0000M, UnitsInStock = 31 },
            new Product { ProductID = 11, ProductName = "Queso Cabrales", Category = "Dairy Products", UnitPrice = 21.0000M, UnitsInStock = 22 },
            new Product { ProductID = 12, ProductName = "Queso Manchego La Pastora", Category = "Dairy Products", UnitPrice = 38.0000M, UnitsInStock = 86 },
            new Product { ProductID = 13, ProductName = "Konbu", Category = "Seafood", UnitPrice = 6.0000M, UnitsInStock = 24 },
            new Product { ProductID = 14, ProductName = "Tofu", Category = "Produce", UnitPrice = 23.2500M, UnitsInStock = 35 },
            new Product { ProductID = 15, ProductName = "Genen Shouyu", Category = "Condiments", UnitPrice = 15.5000M, UnitsInStock = 39 },
            new Product { ProductID = 16, ProductName = "Pavlova", Category = "Confections", UnitPrice = 17.4500M, UnitsInStock = 29 },
            new Product { ProductID = 17, ProductName = "Alice Mutton", Category = "Meat/Poultry", UnitPrice = 39.0000M, UnitsInStock = 0 },
            new Product { ProductID = 18, ProductName = "Carnarvon Tigers", Category = "Seafood", UnitPrice = 62.5000M, UnitsInStock = 42 },
            new Product { ProductID = 19, ProductName = "Teatime Chocolate Biscuits", Category = "Confections", UnitPrice = 9.2000M, UnitsInStock = 25 },
            new Product { ProductID = 20, ProductName = "Sir Rodney's Marmalade", Category = "Confections", UnitPrice = 81.0000M, UnitsInStock = 40 },
            new Product { ProductID = 21, ProductName = "Sir Rodney's Scones", Category = "Confections", UnitPrice = 10.0000M, UnitsInStock = 3 },
            new Product { ProductID = 22, ProductName = "Gustaf's Knäckebröd", Category = "Grains/Cereals", UnitPrice = 21.0000M, UnitsInStock = 104 },
            new Product { ProductID = 23, ProductName = "Tunnbröd", Category = "Grains/Cereals", UnitPrice = 9.0000M, UnitsInStock = 61 },
            new Product { ProductID = 24, ProductName = "Guaraná Fantástica", Category = "Beverages", UnitPrice = 4.5000M, UnitsInStock = 20 },
            new Product { ProductID = 25, ProductName = "NuNuCa Nuß-Nougat-Creme", Category = "Confections", UnitPrice = 14.0000M, UnitsInStock = 76 },
            new Product { ProductID = 26, ProductName = "Gumbär Gummibärchen", Category = "Confections", UnitPrice = 31.2300M, UnitsInStock = 15 },
            new Product { ProductID = 27, ProductName = "Schoggi Schokolade", Category = "Confections", UnitPrice = 43.9000M, UnitsInStock = 49 },
            new Product { ProductID = 28, ProductName = "Rössle Sauerkraut", Category = "Produce", UnitPrice = 45.6000M, UnitsInStock = 26 },
            new Product { ProductID = 29, ProductName = "Thüringer Rostbratwurst", Category = "Meat/Poultry", UnitPrice = 123.7900M, UnitsInStock = 0 },
            new Product { ProductID = 30, ProductName = "Nord-Ost Matjeshering", Category = "Seafood", UnitPrice = 25.8900M, UnitsInStock = 10 },
            new Product { ProductID = 31, ProductName = "Gorgonzola Telino", Category = "Dairy Products", UnitPrice = 12.5000M, UnitsInStock = 0 },
            new Product { ProductID = 32, ProductName = "Mascarpone Fabioli", Category = "Dairy Products", UnitPrice = 32.0000M, UnitsInStock = 9 },
            new Product { ProductID = 33, ProductName = "Geitost", Category = "Dairy Products", UnitPrice = 2.5000M, UnitsInStock = 112 },
            new Product { ProductID = 34, ProductName = "Sasquatch Ale", Category = "Beverages", UnitPrice = 14.0000M, UnitsInStock = 111 },
            new Product { ProductID = 35, ProductName = "Steeleye Stout", Category = "Beverages", UnitPrice = 18.0000M, UnitsInStock = 20 },
            new Product { ProductID = 36, ProductName = "Inlagd Sill", Category = "Seafood", UnitPrice = 19.0000M, UnitsInStock = 112 },
            new Product { ProductID = 37, ProductName = "Gravad lax", Category = "Seafood", UnitPrice = 26.0000M, UnitsInStock = 11 },
            new Product { ProductID = 38, ProductName = "Côte de Blaye", Category = "Beverages", UnitPrice = 263.5000M, UnitsInStock = 17 },
            new Product { ProductID = 39, ProductName = "Chartreuse verte", Category = "Beverages", UnitPrice = 18.0000M, UnitsInStock = 69 },
            new Product { ProductID = 40, ProductName = "Boston Crab Meat", Category = "Seafood", UnitPrice = 18.4000M, UnitsInStock = 123 },
            new Product { ProductID = 41, ProductName = "Jack's New England Clam Chowder", Category = "Seafood", UnitPrice = 9.6500M, UnitsInStock = 85 },
            new Product { ProductID = 42, ProductName = "Singaporean Hokkien Fried Mee", Category = "Grains/Cereals", UnitPrice = 14.0000M, UnitsInStock = 26 },
            new Product { ProductID = 43, ProductName = "Ipoh Coffee", Category = "Beverages", UnitPrice = 46.0000M, UnitsInStock = 17 },
            new Product { ProductID = 44, ProductName = "Gula Malacca", Category = "Condiments", UnitPrice = 19.4500M, UnitsInStock = 27 },
            new Product { ProductID = 45, ProductName = "Rogede sild", Category = "Seafood", UnitPrice = 9.5000M, UnitsInStock = 5 },
            new Product { ProductID = 46, ProductName = "Spegesild", Category = "Seafood", UnitPrice = 12.0000M, UnitsInStock = 95 },
            new Product { ProductID = 47, ProductName = "Zaanse koeken", Category = "Confections", UnitPrice = 9.5000M, UnitsInStock = 36 },
            new Product { ProductID = 48, ProductName = "Chocolade", Category = "Confections", UnitPrice = 12.7500M, UnitsInStock = 15 },
            new Product { ProductID = 49, ProductName = "Maxilaku", Category = "Confections", UnitPrice = 20.0000M, UnitsInStock = 10 },
            new Product { ProductID = 50, ProductName = "Valkoinen suklaa", Category = "Confections", UnitPrice = 16.2500M, UnitsInStock = 65 },
            new Product { ProductID = 51, ProductName = "Manjimup Dried Apples", Category = "Produce", UnitPrice = 53.0000M, UnitsInStock = 20 },
            new Product { ProductID = 52, ProductName = "Filo Mix", Category = "Grains/Cereals", UnitPrice = 7.0000M, UnitsInStock = 38 },
            new Product { ProductID = 53, ProductName = "Perth Pasties", Category = "Meat/Poultry", UnitPrice = 32.8000M, UnitsInStock = 0 },
            new Product { ProductID = 54, ProductName = "Tourtière", Category = "Meat/Poultry", UnitPrice = 7.4500M, UnitsInStock = 21 },
            new Product { ProductID = 55, ProductName = "Pâté chinois", Category = "Meat/Poultry", UnitPrice = 24.0000M, UnitsInStock = 115 },
            new Product { ProductID = 56, ProductName = "Gnocchi di nonna Alice", Category = "Grains/Cereals", UnitPrice = 38.0000M, UnitsInStock = 21 },
            new Product { ProductID = 57, ProductName = "Ravioli Angelo", Category = "Grains/Cereals", UnitPrice = 19.5000M, UnitsInStock = 36 },
            new Product { ProductID = 58, ProductName = "Escargots de Bourgogne", Category = "Seafood", UnitPrice = 13.2500M, UnitsInStock = 62 },
            new Product { ProductID = 59, ProductName = "Raclette Courdavault", Category = "Dairy Products", UnitPrice = 55.0000M, UnitsInStock = 79 },
            new Product { ProductID = 60, ProductName = "Camembert Pierrot", Category = "Dairy Products", UnitPrice = 34.0000M, UnitsInStock = 19 },
            new Product { ProductID = 61, ProductName = "Sirop d'érable", Category = "Condiments", UnitPrice = 28.5000M, UnitsInStock = 113 },
            new Product { ProductID = 62, ProductName = "Tarte au sucre", Category = "Confections", UnitPrice = 49.3000M, UnitsInStock = 17 },
            new Product { ProductID = 63, ProductName = "Vegie-spread", Category = "Condiments", UnitPrice = 43.9000M, UnitsInStock = 24 },
            new Product { ProductID = 64, ProductName = "Wimmers gute Semmelknödel", Category = "Grains/Cereals", UnitPrice = 33.2500M, UnitsInStock = 22 },
            new Product { ProductID = 65, ProductName = "Louisiana Fiery Hot Pepper Sauce", Category = "Condiments", UnitPrice = 21.0500M, UnitsInStock = 76 },
            new Product { ProductID = 66, ProductName = "Louisiana Hot Spiced Okra", Category = "Condiments", UnitPrice = 17.0000M, UnitsInStock = 4 },
            new Product { ProductID = 67, ProductName = "Laughing Lumberjack Lager", Category = "Beverages", UnitPrice = 14.0000M, UnitsInStock = 52 },
            new Product { ProductID = 68, ProductName = "Scottish Longbreads", Category = "Confections", UnitPrice = 12.5000M, UnitsInStock = 6 },
            new Product { ProductID = 69, ProductName = "Gudbrandsdalsost", Category = "Dairy Products", UnitPrice = 36.0000M, UnitsInStock = 26 },
            new Product { ProductID = 70, ProductName = "Outback Lager", Category = "Beverages", UnitPrice = 15.0000M, UnitsInStock = 15 },
            new Product { ProductID = 71, ProductName = "Flotemysost", Category = "Dairy Products", UnitPrice = 21.5000M, UnitsInStock = 26 },
            new Product { ProductID = 72, ProductName = "Mozzarella di Giovanni", Category = "Dairy Products", UnitPrice = 34.8000M, UnitsInStock = 14 },
            new Product { ProductID = 73, ProductName = "Röd Kaviar", Category = "Seafood", UnitPrice = 15.0000M, UnitsInStock = 101 },
            new Product { ProductID = 74, ProductName = "Longlife Tofu", Category = "Produce", UnitPrice = 10.0000M, UnitsInStock = 4 },
            new Product { ProductID = 75, ProductName = "Rhönbräu Klosterbier", Category = "Beverages", UnitPrice = 7.7500M, UnitsInStock = 125 },
            new Product { ProductID = 76, ProductName = "Lakkalikööri", Category = "Beverages", UnitPrice = 18.0000M, UnitsInStock = 57 },
            new Product { ProductID = 77, ProductName = "Original Frankfurter grüne Soße", Category = "Condiments", UnitPrice = 13.0000M, UnitsInStock = 32 }
        };


    // Customer/order data read into memory from XML file using XLinq:
    string customerListPath = Path.GetFullPath(Path.Combine(dataPath, "customers.xml"));
    
    customerList = new List<Customer>();

    var doc = new XmlDocument();
    doc.Load(customerListPath);
    foreach (XmlElement e in doc.DocumentElement.SelectNodes("customer"))
    {
        var orders = new List<Order>();

        foreach (XmlElement o in e.SelectNodes("orders/order"))
        {
            orders.Add(new Order {
                OrderID = XmlConvert.ToInt32(o["id"].InnerText), 
                OrderDate = XmlConvert.ToDateTime(o["orderdate"].InnerText),
                Total = XmlConvert.ToDecimal(o["total"].InnerText),
            });
        }

        customerList.Add(new Customer {
            CustomerID = e["id"] == null ? null : e["id"].InnerText,
            CompanyName = e["name"] == null ? null : e["name"].InnerText,
            Address = e["address"] == null ? null : e["address"].InnerText,
            City = e["city"] == null ? null : e["city"].InnerText,
            Region = e["region"] == null ? null : e["region"].InnerText,
            PostalCode = e["postalcode"] == null ? null : e["postalcode"].InnerText,
            Country = e["country"] == null ? null : e["country"].InnerText,
            Phone = e["phone"] == null ? null : e["phone"].InnerText,
            Fax = e["fax"] == null ? null : e["fax"].InnerText,
            Orders = orders.ToArray(),
        });
    }
    /*
    customerList = (
        from e in XDocument.Load(customerListPath).
                  Root.Elements("customer")
        select new Customer {
            CustomerID = (string)e.Element("id"),
            CompanyName = (string)e.Element("name"),
            Address = (string)e.Element("address"),
            City = (string)e.Element("city"),
            Region = (string)e.Element("region"),
            PostalCode = (string)e.Element("postalcode"),
            Country = (string)e.Element("country"),
            Phone = (string)e.Element("phone"),
            Fax = (string)e.Element("fax"),
            Orders = (
                from o in e.Elements("orders").Elements("order")
                select new Order {
                    OrderID = (int)o.Element("id"),
                    OrderDate = (DateTime)o.Element("orderdate"),
                    Total = (decimal)o.Element("total") } )
                .ToArray() } )
        .ToList();
    */
}

public List<Product> GetProductList() {
    if (productList == null)
        createLists();
    
    return productList;
}

public List<Customer> GetCustomerList() {
    if (customerList == null)
        createLists();
    
    return customerList;
}

```

### Output ###

```
CustomerID=ALFKI        CompanyName=Alfreds Futterkiste         Address=Obere Str. 57   City=Berlin     Region=null     PostalCode=12209        Country=Germany         Phone=030-0074321       Fax=030-0076545         Orders=...
  Orders: OrderID=10643   OrderDate=8/25/1997     Total=814.50
  Orders: OrderID=10692   OrderDate=10/3/1997     Total=878.00
  Orders: OrderID=10702   OrderDate=10/13/1997    Total=330.00
  Orders: OrderID=10835   OrderDate=1/15/1998     Total=845.80
  Orders: OrderID=10952   OrderDate=3/16/1998     Total=471.20
  Orders: OrderID=11011   OrderDate=4/9/1998      Total=933.50
CustomerID=ANATR        CompanyName=Ana Trujillo Emparedados y helados  Address=Avda. de la Constitución 2222   City=México D.F.        Region=null     PostalCode=05021        Country=Mexico  Phone=(5) 555-4729      Fax=(5) 555-3745        Orders=...
  Orders: OrderID=10308   OrderDate=9/18/1996     Total=88.80
  Orders: OrderID=10625   OrderDate=8/8/1997      Total=479.75
  Orders: OrderID=10759   OrderDate=11/28/1997    Total=320.00
  Orders: OrderID=10926   OrderDate=3/4/1998      Total=514.40
CustomerID=ANTON        CompanyName=Antonio Moreno Taquería     Address=Mataderos  2312         City=México D.F.        Region=null     PostalCode=05023        Country=Mexico  Phone=(5) 555-3932      Fax=null        Orders=...
  Orders: OrderID=10365   OrderDate=11/27/1996    Total=403.20
  Orders: OrderID=10507   OrderDate=4/15/1997     Total=749.06
  Orders: OrderID=10535   OrderDate=5/13/1997     Total=1940.85
  Orders: OrderID=10573   OrderDate=6/19/1997     Total=2082.00
  Orders: OrderID=10677   OrderDate=9/22/1997     Total=813.36
  Orders: OrderID=10682   OrderDate=9/25/1997     Total=375.50
  Orders: OrderID=10856   OrderDate=1/28/1998     Total=660.00
CustomerID=AROUT        CompanyName=Around the Horn     Address=120 Hanover Sq.         City=London     Region=null     PostalCode=WA1 1DP      Country=UK      Phone=(171) 555-7788    Fax=(171) 555-6750      Orders=...
  Orders: OrderID=10355   OrderDate=11/15/1996    Total=480.00
  Orders: OrderID=10383   OrderDate=12/16/1996    Total=899.00
  Orders: OrderID=10453   OrderDate=2/21/1997     Total=407.70
  Orders: OrderID=10558   OrderDate=6/4/1997      Total=2142.90
  Orders: OrderID=10707   OrderDate=10/16/1997    Total=1641.00
  Orders: OrderID=10741   OrderDate=11/14/1997    Total=228.00
  Orders: OrderID=10743   OrderDate=11/17/1997    Total=319.20
  Orders: OrderID=10768   OrderDate=12/8/1997     Total=1477.00
  Orders: OrderID=10793   OrderDate=12/24/1997    Total=191.10
  Orders: OrderID=10864   OrderDate=2/2/1998      Total=282.00
  Orders: OrderID=10920   OrderDate=3/3/1998      Total=390.00
  Orders: OrderID=10953   OrderDate=3/16/1998     Total=4441.25
  Orders: OrderID=11016   OrderDate=4/10/1998     Total=491.50
CustomerID=BERGS        CompanyName=Berglunds snabbköp  Address=Berguvsvägen  8         City=Luleå      Region=null     PostalCode=S-958 22     Country=Sweden  Phone=0921-12 34 65     Fax=0921-12 34 67       Orders=...
  Orders: OrderID=10278   OrderDate=8/12/1996     Total=1488.80
  Orders: OrderID=10280   OrderDate=8/14/1996     Total=613.20
  Orders: OrderID=10384   OrderDate=12/16/1996    Total=2222.40
  Orders: OrderID=10444   OrderDate=2/12/1997     Total=1031.70
  Orders: OrderID=10445   OrderDate=2/13/1997     Total=174.90
  Orders: OrderID=10524   OrderDate=5/1/1997      Total=3192.65
  Orders: OrderID=10572   OrderDate=6/18/1997     Total=1501.08
  Orders: OrderID=10626   OrderDate=8/11/1997     Total=1503.60
  Orders: OrderID=10654   OrderDate=9/2/1997      Total=601.83
  Orders: OrderID=10672   OrderDate=9/17/1997     Total=3815.25
  Orders: OrderID=10689   OrderDate=10/1/1997     Total=472.50
  Orders: OrderID=10733   OrderDate=11/7/1997     Total=1459.00
  Orders: OrderID=10778   OrderDate=12/16/1997    Total=96.50
  Orders: OrderID=10837   OrderDate=1/16/1998     Total=1064.50
  Orders: OrderID=10857   OrderDate=1/28/1998     Total=2048.21
  Orders: OrderID=10866   OrderDate=2/3/1998      Total=1096.20
  Orders: OrderID=10875   OrderDate=2/6/1998      Total=709.55
  Orders: OrderID=10924   OrderDate=3/4/1998      Total=1835.70
CustomerID=BLAUS        CompanyName=Blauer See Delikatessen     Address=Forsterstr. 57  City=Mannheim   Region=null     PostalCode=68306        Country=Germany         Phone=0621-08460        Fax=0621-08924  Orders=...
  Orders: OrderID=10501   OrderDate=4/9/1997      Total=149.00
  Orders: OrderID=10509   OrderDate=4/17/1997     Total=136.80
  Orders: OrderID=10582   OrderDate=6/27/1997     Total=330.00
  Orders: OrderID=10614   OrderDate=7/29/1997     Total=464.00
  Orders: OrderID=10853   OrderDate=1/27/1998     Total=625.00
  Orders: OrderID=10956   OrderDate=3/17/1998     Total=677.00
  Orders: OrderID=11058   OrderDate=4/29/1998     Total=858.00
CustomerID=BLONP        CompanyName=Blondel père et fils        Address=24, place Kléber        City=Strasbourg         Region=null     PostalCode=67000        Country=France  Phone=88.60.15.31       Fax=88.60.15.32         Orders=...
  Orders: OrderID=10265   OrderDate=7/25/1996     Total=1176.00
  Orders: OrderID=10297   OrderDate=9/4/1996      Total=1420.00
  Orders: OrderID=10360   OrderDate=11/22/1996    Total=7390.20
  Orders: OrderID=10436   OrderDate=2/5/1997      Total=1994.52
  Orders: OrderID=10449   OrderDate=2/18/1997     Total=1838.20
  Orders: OrderID=10559   OrderDate=6/5/1997      Total=520.41
  Orders: OrderID=10566   OrderDate=6/12/1997     Total=1761.00
  Orders: OrderID=10584   OrderDate=6/30/1997     Total=593.75
  Orders: OrderID=10628   OrderDate=8/12/1997     Total=450.00
  Orders: OrderID=10679   OrderDate=9/23/1997     Total=660.00
  Orders: OrderID=10826   OrderDate=1/12/1998     Total=730.00
CustomerID=BOLID        CompanyName=Bólido Comidas preparadas   Address=C/ Araquil, 67  City=Madrid     Region=null     PostalCode=28023        Country=Spain   Phone=(91) 555 22 82    Fax=(91) 555 91 99      Orders=...
  Orders: OrderID=10326   OrderDate=10/10/1996    Total=982.00
  Orders: OrderID=10801   OrderDate=12/29/1997    Total=3026.85
  Orders: OrderID=10970   OrderDate=3/24/1998     Total=224.00
CustomerID=BONAP        CompanyName=Bon app'    Address=12, rue des Bouchers    City=Marseille  Region=null     PostalCode=13008        Country=France  Phone=91.24.45.40       Fax=91.24.45.41         Orders=...
  Orders: OrderID=10331   OrderDate=10/16/1996    Total=88.50
  Orders: OrderID=10340   OrderDate=10/29/1996    Total=2436.18
  Orders: OrderID=10362   OrderDate=11/25/1996    Total=1549.60
  Orders: OrderID=10470   OrderDate=3/11/1997     Total=1820.80
  Orders: OrderID=10511   OrderDate=4/18/1997     Total=2550.00
  Orders: OrderID=10525   OrderDate=5/2/1997      Total=818.40
  Orders: OrderID=10663   OrderDate=9/10/1997     Total=1930.40
  Orders: OrderID=10715   OrderDate=10/23/1997    Total=1296.00
  Orders: OrderID=10730   OrderDate=11/5/1997     Total=484.26
  Orders: OrderID=10732   OrderDate=11/6/1997     Total=360.00
  Orders: OrderID=10755   OrderDate=11/26/1997    Total=1948.50
  Orders: OrderID=10827   OrderDate=1/12/1998     Total=843.00
  Orders: OrderID=10871   OrderDate=2/5/1998      Total=1979.23
  Orders: OrderID=10876   OrderDate=2/9/1998      Total=917.00
  Orders: OrderID=10932   OrderDate=3/6/1998      Total=1788.63
  Orders: OrderID=10940   OrderDate=3/11/1998     Total=360.00
  Orders: OrderID=11076   OrderDate=5/6/1998      Total=792.75
CustomerID=BOTTM        CompanyName=Bottom-Dollar Markets       Address=23 Tsawassen Blvd.      City=Tsawassen  Region=BC       PostalCode=T2F 8M4      Country=Canada  Phone=(604) 555-4729    Fax=(604) 555-3745      Orders=...
  Orders: OrderID=10389   OrderDate=12/20/1996    Total=1832.80
  Orders: OrderID=10410   OrderDate=1/10/1997     Total=802.00
  Orders: OrderID=10411   OrderDate=1/10/1997     Total=966.80
  Orders: OrderID=10431   OrderDate=1/30/1997     Total=1892.25
  Orders: OrderID=10492   OrderDate=4/1/1997      Total=851.20
  Orders: OrderID=10742   OrderDate=11/14/1997    Total=3118.00
  Orders: OrderID=10918   OrderDate=3/2/1998      Total=1447.50
  Orders: OrderID=10944   OrderDate=3/12/1998     Total=1025.32
  Orders: OrderID=10949   OrderDate=3/13/1998     Total=4422.00
  Orders: OrderID=10975   OrderDate=3/25/1998     Total=717.50
  Orders: OrderID=10982   OrderDate=3/27/1998     Total=1014.00
  Orders: OrderID=11027   OrderDate=4/16/1998     Total=877.72
  Orders: OrderID=11045   OrderDate=4/23/1998     Total=1309.50
  Orders: OrderID=11048   OrderDate=4/24/1998     Total=525.00
CustomerID=BSBEV        CompanyName=B's Beverages       Address=Fauntleroy Circus       City=London     Region=null     PostalCode=EC2 5NT      Country=UK      Phone=(171) 555-1212    Fax=null        Orders=...
  Orders: OrderID=10289   OrderDate=8/26/1996     Total=479.40
  Orders: OrderID=10471   OrderDate=3/11/1997     Total=1328.00
  Orders: OrderID=10484   OrderDate=3/24/1997     Total=386.20
  Orders: OrderID=10538   OrderDate=5/15/1997     Total=139.80
  Orders: OrderID=10539   OrderDate=5/16/1997     Total=355.50
  Orders: OrderID=10578   OrderDate=6/24/1997     Total=477.00
  Orders: OrderID=10599   OrderDate=7/15/1997     Total=493.00
  Orders: OrderID=10943   OrderDate=3/11/1998     Total=711.00
  Orders: OrderID=10947   OrderDate=3/13/1998     Total=220.00
  Orders: OrderID=11023   OrderDate=4/14/1998     Total=1500.00
CustomerID=CACTU        CompanyName=Cactus Comidas para llevar  Address=Cerrito 333     City=Buenos Aires       Region=null     PostalCode=1010         Country=Argentina       Phone=(1) 135-5555      Fax=(1) 135-4892        Orders=...
  Orders: OrderID=10521   OrderDate=4/29/1997     Total=225.50
  Orders: OrderID=10782   OrderDate=12/17/1997    Total=12.50
  Orders: OrderID=10819   OrderDate=1/7/1998      Total=477.00
  Orders: OrderID=10881   OrderDate=2/11/1998     Total=150.00
  Orders: OrderID=10937   OrderDate=3/10/1998     Total=644.80
  Orders: OrderID=11054   OrderDate=4/28/1998     Total=305.00
CustomerID=CENTC        CompanyName=Centro comercial Moctezuma  Address=Sierras de Granada 9993         City=México D.F.        Region=null     PostalCode=05022        Country=Mexico  Phone=(5) 555-3392      Fax=(5) 555-7293        Orders=...
  Orders: OrderID=10259   OrderDate=7/18/1996     Total=100.80
CustomerID=CHOPS        CompanyName=Chop-suey Chinese   Address=Hauptstr. 29    City=Bern       Region=null     PostalCode=3012         Country=Switzerland     Phone=0452-076545       Fax=null        Orders=...
  Orders: OrderID=10254   OrderDate=7/11/1996     Total=556.62
  Orders: OrderID=10370   OrderDate=12/3/1996     Total=1117.60
  Orders: OrderID=10519   OrderDate=4/28/1997     Total=2314.20
  Orders: OrderID=10731   OrderDate=11/6/1997     Total=1890.50
  Orders: OrderID=10746   OrderDate=11/19/1997    Total=2311.70
  Orders: OrderID=10966   OrderDate=3/20/1998     Total=1098.46
  Orders: OrderID=11029   OrderDate=4/16/1998     Total=1286.80
  Orders: OrderID=11041   OrderDate=4/22/1998     Total=1773.00
CustomerID=COMMI        CompanyName=Comércio Mineiro    Address=Av. dos Lusíadas, 23    City=São Paulo  Region=SP       PostalCode=05432-043    Country=Brazil  Phone=(11) 555-7647     Fax=null        Orders=...
  Orders: OrderID=10290   OrderDate=8/27/1996     Total=2169.00
  Orders: OrderID=10466   OrderDate=3/6/1997      Total=216.00
  Orders: OrderID=10494   OrderDate=4/2/1997      Total=912.00
  Orders: OrderID=10969   OrderDate=3/23/1998     Total=108.00
  Orders: OrderID=11042   OrderDate=4/22/1998     Total=405.75
CustomerID=CONSH        CompanyName=Consolidated Holdings       Address=Berkeley Gardens, 12 Brewery    City=London     Region=null     PostalCode=WX1 6LT      Country=UK      Phone=(171) 555-2282    Fax=(171) 555-9199      Orders=...
  Orders: OrderID=10435   OrderDate=2/4/1997      Total=631.60
  Orders: OrderID=10462   OrderDate=3/3/1997      Total=156.00
  Orders: OrderID=10848   OrderDate=1/23/1998     Total=931.50
CustomerID=DRACD        CompanyName=Drachenblut Delikatessen    Address=Walserweg 21    City=Aachen     Region=null     PostalCode=52066        Country=Germany         Phone=0241-039123       Fax=0241-059428         Orders=...
  Orders: OrderID=10363   OrderDate=11/26/1996    Total=447.20
  Orders: OrderID=10391   OrderDate=12/23/1996    Total=86.40
  Orders: OrderID=10797   OrderDate=12/25/1997    Total=420.00
  Orders: OrderID=10825   OrderDate=1/9/1998      Total=1030.76
  Orders: OrderID=11036   OrderDate=4/20/1998     Total=1692.00
  Orders: OrderID=11067   OrderDate=5/4/1998      Total=86.85
CustomerID=DUMON        CompanyName=Du monde entier     Address=67, rue des Cinquante Otages    City=Nantes     Region=null     PostalCode=44000        Country=France  Phone=40.67.88.88       Fax=40.67.89.89         Orders=...
  Orders: OrderID=10311   OrderDate=9/20/1996     Total=268.80
  Orders: OrderID=10609   OrderDate=7/24/1997     Total=424.00
  Orders: OrderID=10683   OrderDate=9/26/1997     Total=63.00
  Orders: OrderID=10890   OrderDate=2/16/1998     Total=860.10
CustomerID=EASTC        CompanyName=Eastern Connection  Address=35 King George  City=London     Region=null     PostalCode=WX3 6FW      Country=UK      Phone=(171) 555-0297    Fax=(171) 555-3373      Orders=...
  Orders: OrderID=10364   OrderDate=11/26/1996    Total=950.00
  Orders: OrderID=10400   OrderDate=1/1/1997      Total=3063.00
  Orders: OrderID=10532   OrderDate=5/9/1997      Total=796.35
  Orders: OrderID=10726   OrderDate=11/3/1997     Total=655.00
  Orders: OrderID=10987   OrderDate=3/31/1998     Total=2772.00
  Orders: OrderID=11024   OrderDate=4/15/1998     Total=1966.81
  Orders: OrderID=11047   OrderDate=4/24/1998     Total=817.88
  Orders: OrderID=11056   OrderDate=4/28/1998     Total=3740.00
CustomerID=ERNSH        CompanyName=Ernst Handel        Address=Kirchgasse 6    City=Graz       Region=null     PostalCode=8010         Country=Austria         Phone=7675-3425         Fax=7675-3426   Orders=...
  Orders: OrderID=10258   OrderDate=7/17/1996     Total=1614.88
  Orders: OrderID=10263   OrderDate=7/23/1996     Total=1873.80
  Orders: OrderID=10351   OrderDate=11/11/1996    Total=5398.72
  Orders: OrderID=10368   OrderDate=11/29/1996    Total=1689.78
  Orders: OrderID=10382   OrderDate=12/13/1996    Total=2900.00
  Orders: OrderID=10390   OrderDate=12/23/1996    Total=2090.88
  Orders: OrderID=10402   OrderDate=1/2/1997      Total=2713.50
  Orders: OrderID=10403   OrderDate=1/3/1997      Total=855.02
  Orders: OrderID=10430   OrderDate=1/30/1997     Total=4899.20
  Orders: OrderID=10442   OrderDate=2/11/1997     Total=1792.00
  Orders: OrderID=10514   OrderDate=4/22/1997     Total=8623.45
  Orders: OrderID=10571   OrderDate=6/17/1997     Total=550.59
  Orders: OrderID=10595   OrderDate=7/10/1997     Total=4725.00
  Orders: OrderID=10633   OrderDate=8/15/1997     Total=5510.59
  Orders: OrderID=10667   OrderDate=9/12/1997     Total=1536.80
  Orders: OrderID=10698   OrderDate=10/9/1997     Total=3436.44
  Orders: OrderID=10764   OrderDate=12/3/1997     Total=2286.00
  Orders: OrderID=10771   OrderDate=12/10/1997    Total=344.00
  Orders: OrderID=10773   OrderDate=12/11/1997    Total=2030.40
  Orders: OrderID=10776   OrderDate=12/15/1997    Total=6635.28
  Orders: OrderID=10795   OrderDate=12/24/1997    Total=2158.00
  Orders: OrderID=10836   OrderDate=1/16/1998     Total=4705.50
  Orders: OrderID=10854   OrderDate=1/27/1998     Total=2966.50
  Orders: OrderID=10895   OrderDate=2/18/1998     Total=6379.40
  Orders: OrderID=10968   OrderDate=3/23/1998     Total=1408.00
  Orders: OrderID=10979   OrderDate=3/26/1998     Total=4813.50
  Orders: OrderID=10990   OrderDate=4/1/1998      Total=4288.85
  Orders: OrderID=11008   OrderDate=4/8/1998      Total=4680.90
  Orders: OrderID=11017   OrderDate=4/13/1998     Total=6750.00
  Orders: OrderID=11072   OrderDate=5/5/1998      Total=5218.00
CustomerID=FAMIA        CompanyName=Familia Arquibaldo  Address=Rua Orós, 92    City=São Paulo  Region=SP       PostalCode=05442-030    Country=Brazil  Phone=(11) 555-9857     Fax=null        Orders=...
  Orders: OrderID=10347   OrderDate=11/6/1996     Total=814.42
  Orders: OrderID=10386   OrderDate=12/18/1996    Total=166.00
  Orders: OrderID=10414   OrderDate=1/14/1997     Total=224.83
  Orders: OrderID=10512   OrderDate=4/21/1997     Total=525.30
  Orders: OrderID=10581   OrderDate=6/26/1997     Total=310.00
  Orders: OrderID=10650   OrderDate=8/29/1997     Total=1779.20
  Orders: OrderID=10725   OrderDate=10/31/1997    Total=287.80
CustomerID=FISSA        CompanyName=FISSA Fabrica Inter. Salchichas S.A.        Address=C/ Moralzarzal, 86      City=Madrid     Region=null     PostalCode=28034        Country=Spain   Phone=(91) 555 94 44    Fax=(91) 555 55 93      Orders=...
CustomerID=FOLIG        CompanyName=Folies gourmandes   Address=184, chaussée de Tournai        City=Lille      Region=null     PostalCode=59000        Country=France  Phone=20.16.10.16       Fax=20.16.10.17         Orders=...
  Orders: OrderID=10408   OrderDate=1/8/1997      Total=1622.40
  Orders: OrderID=10480   OrderDate=3/20/1997     Total=756.00
  Orders: OrderID=10634   OrderDate=8/15/1997     Total=4985.50
  Orders: OrderID=10763   OrderDate=12/3/1997     Total=616.00
  Orders: OrderID=10789   OrderDate=12/22/1997    Total=3687.00
CustomerID=FOLKO        CompanyName=Folk och fä HB      Address=Åkergatan 24    City=Bräcke     Region=null     PostalCode=S-844 67     Country=Sweden  Phone=0695-34 67 21     Fax=null        Orders=...
  Orders: OrderID=10264   OrderDate=7/24/1996     Total=695.62
  Orders: OrderID=10327   OrderDate=10/11/1996    Total=1810.00
  Orders: OrderID=10378   OrderDate=12/10/1996    Total=103.20
  Orders: OrderID=10434   OrderDate=2/3/1997      Total=321.12
  Orders: OrderID=10460   OrderDate=2/28/1997     Total=176.10
  Orders: OrderID=10533   OrderDate=5/12/1997     Total=2222.20
  Orders: OrderID=10561   OrderDate=6/6/1997      Total=2844.50
  Orders: OrderID=10703   OrderDate=10/14/1997    Total=2545.00
  Orders: OrderID=10762   OrderDate=12/2/1997     Total=4337.00
  Orders: OrderID=10774   OrderDate=12/11/1997    Total=868.75
  Orders: OrderID=10824   OrderDate=1/9/1998      Total=250.80
  Orders: OrderID=10880   OrderDate=2/10/1998     Total=1500.00
  Orders: OrderID=10902   OrderDate=2/23/1998     Total=863.43
  Orders: OrderID=10955   OrderDate=3/17/1998     Total=74.40
  Orders: OrderID=10977   OrderDate=3/26/1998     Total=2233.00
  Orders: OrderID=10980   OrderDate=3/27/1998     Total=248.00
  Orders: OrderID=10993   OrderDate=4/1/1998      Total=4895.44
  Orders: OrderID=11001   OrderDate=4/6/1998      Total=2769.00
  Orders: OrderID=11050   OrderDate=4/27/1998     Total=810.00
CustomerID=FRANK        CompanyName=Frankenversand      Address=Berliner Platz 43       City=München    Region=null     PostalCode=80805        Country=Germany         Phone=089-0877310       Fax=089-0877451         Orders=...
  Orders: OrderID=10267   OrderDate=7/29/1996     Total=3536.60
  Orders: OrderID=10337   OrderDate=10/24/1996    Total=2467.00
  Orders: OrderID=10342   OrderDate=10/30/1996    Total=1840.64
  Orders: OrderID=10396   OrderDate=12/27/1996    Total=1903.80
  Orders: OrderID=10488   OrderDate=3/27/1997     Total=1512.00
  Orders: OrderID=10560   OrderDate=6/6/1997      Total=1072.42
  Orders: OrderID=10623   OrderDate=8/7/1997      Total=1336.95
  Orders: OrderID=10653   OrderDate=9/2/1997      Total=1083.15
  Orders: OrderID=10670   OrderDate=9/16/1997     Total=2301.75
  Orders: OrderID=10675   OrderDate=9/19/1997     Total=1423.00
  Orders: OrderID=10717   OrderDate=10/24/1997    Total=1270.75
  Orders: OrderID=10791   OrderDate=12/23/1997    Total=1829.76
  Orders: OrderID=10859   OrderDate=1/29/1998     Total=1078.69
  Orders: OrderID=10929   OrderDate=3/5/1998      Total=1174.75
  Orders: OrderID=11012   OrderDate=4/9/1998      Total=2825.30
CustomerID=FRANR        CompanyName=France restauration         Address=54, rue Royale  City=Nantes     Region=null     PostalCode=44000        Country=France  Phone=40.32.21.21       Fax=40.32.21.20         Orders=...
  Orders: OrderID=10671   OrderDate=9/17/1997     Total=920.10
  Orders: OrderID=10860   OrderDate=1/29/1998     Total=519.00
  Orders: OrderID=10971   OrderDate=3/24/1998     Total=1733.06
CustomerID=FRANS        CompanyName=Franchi S.p.A.      Address=Via Monte Bianco 34     City=Torino     Region=null     PostalCode=10100        Country=Italy   Phone=011-4988260       Fax=011-4988261         Orders=...
  Orders: OrderID=10422   OrderDate=1/22/1997     Total=49.80
  Orders: OrderID=10710   OrderDate=10/20/1997    Total=93.50
  Orders: OrderID=10753   OrderDate=11/25/1997    Total=88.00
  Orders: OrderID=10807   OrderDate=12/31/1997    Total=18.40
  Orders: OrderID=11026   OrderDate=4/15/1998     Total=1030.00
  Orders: OrderID=11060   OrderDate=4/30/1998     Total=266.00
CustomerID=FURIB        CompanyName=Furia Bacalhau e Frutos do Mar      Address=Jardim das rosas n. 32  City=Lisboa     Region=null     PostalCode=1675         Country=Portugal        Phone=(1) 354-2534      Fax=(1) 354-2535        Orders=...
  Orders: OrderID=10328   OrderDate=10/14/1996    Total=1168.00
  Orders: OrderID=10352   OrderDate=11/12/1996    Total=136.30
  Orders: OrderID=10464   OrderDate=3/4/1997      Total=1609.28
  Orders: OrderID=10491   OrderDate=3/31/1997     Total=259.50
  Orders: OrderID=10551   OrderDate=5/28/1997     Total=1677.30
  Orders: OrderID=10604   OrderDate=7/18/1997     Total=230.85
  Orders: OrderID=10664   OrderDate=9/10/1997     Total=1288.39
  Orders: OrderID=10963   OrderDate=3/19/1998     Total=57.80
CustomerID=GALED        CompanyName=Galería del gastrónomo      Address=Rambla de Cataluña, 23  City=Barcelona  Region=null     PostalCode=08022        Country=Spain   Phone=(93) 203 4560     Fax=(93) 203 4561       Orders=...
  Orders: OrderID=10366   OrderDate=11/28/1996    Total=136.00
  Orders: OrderID=10426   OrderDate=1/27/1997     Total=338.20
  Orders: OrderID=10568   OrderDate=6/13/1997     Total=155.00
  Orders: OrderID=10887   OrderDate=2/13/1998     Total=70.00
  Orders: OrderID=10928   OrderDate=3/5/1998      Total=137.50
CustomerID=GODOS        CompanyName=Godos Cocina Típica         Address=C/ Romero, 33   City=Sevilla    Region=null     PostalCode=41101        Country=Spain   Phone=(95) 555 82 82    Fax=null        Orders=...
  Orders: OrderID=10303   OrderDate=9/11/1996     Total=1117.80
  Orders: OrderID=10550   OrderDate=5/28/1997     Total=683.30
  Orders: OrderID=10629   OrderDate=8/12/1997     Total=2775.05
  Orders: OrderID=10872   OrderDate=2/5/1998      Total=2058.46
  Orders: OrderID=10874   OrderDate=2/6/1998      Total=310.00
  Orders: OrderID=10888   OrderDate=2/16/1998     Total=605.00
  Orders: OrderID=10911   OrderDate=2/26/1998     Total=858.00
  Orders: OrderID=10948   OrderDate=3/13/1998     Total=2362.25
  Orders: OrderID=11009   OrderDate=4/8/1998      Total=616.50
  Orders: OrderID=11037   OrderDate=4/21/1998     Total=60.00
CustomerID=GOURL        CompanyName=Gourmet Lanchonetes         Address=Av. Brasil, 442         City=Campinas   Region=SP       PostalCode=04876-786    Country=Brazil  Phone=(11) 555-9482     Fax=null        Orders=...
  Orders: OrderID=10423   OrderDate=1/23/1997     Total=1020.00
  Orders: OrderID=10652   OrderDate=9/1/1997      Total=318.84
  Orders: OrderID=10685   OrderDate=9/29/1997     Total=801.10
  Orders: OrderID=10709   OrderDate=10/17/1997    Total=3424.00
  Orders: OrderID=10734   OrderDate=11/7/1997     Total=1498.35
  Orders: OrderID=10777   OrderDate=12/15/1997    Total=224.00
  Orders: OrderID=10790   OrderDate=12/22/1997    Total=722.50
  Orders: OrderID=10959   OrderDate=3/18/1998     Total=131.75
  Orders: OrderID=11049   OrderDate=4/24/1998     Total=273.60
CustomerID=GREAL        CompanyName=Great Lakes Food Market     Address=2732 Baker Blvd.        City=Eugene     Region=OR       PostalCode=97403        Country=USA     Phone=(503) 555-7555    Fax=null        Orders=...
  Orders: OrderID=10528   OrderDate=5/6/1997      Total=392.20
  Orders: OrderID=10589   OrderDate=7/4/1997      Total=72.00
  Orders: OrderID=10616   OrderDate=7/31/1997     Total=4807.00
  Orders: OrderID=10617   OrderDate=7/31/1997     Total=1402.50
  Orders: OrderID=10656   OrderDate=9/4/1997      Total=604.22
  Orders: OrderID=10681   OrderDate=9/25/1997     Total=1287.40
  Orders: OrderID=10816   OrderDate=1/6/1998      Total=8446.45
  Orders: OrderID=10936   OrderDate=3/9/1998      Total=456.00
  Orders: OrderID=11006   OrderDate=4/7/1998      Total=329.68
  Orders: OrderID=11040   OrderDate=4/22/1998     Total=200.00
  Orders: OrderID=11061   OrderDate=4/30/1998     Total=510.00
CustomerID=GROSR        CompanyName=GROSELLA-Restaurante        Address=5ª Ave. Los Palos Grandes       City=Caracas    Region=DF       PostalCode=1081         Country=Venezuela       Phone=(2) 283-2951      Fax=(2) 283-3397        Orders=...
  Orders: OrderID=10268   OrderDate=7/30/1996     Total=1101.20
  Orders: OrderID=10785   OrderDate=12/18/1997    Total=387.50
CustomerID=HANAR        CompanyName=Hanari Carnes       Address=Rua do Paço, 67         City=Rio de Janeiro     Region=RJ       PostalCode=05454-876    Country=Brazil  Phone=(21) 555-0091     Fax=(21) 555-8765       Orders=...
  Orders: OrderID=10250   OrderDate=7/8/1996      Total=1552.60
  Orders: OrderID=10253   OrderDate=7/10/1996     Total=1444.80
  Orders: OrderID=10541   OrderDate=5/19/1997     Total=1946.52
  Orders: OrderID=10645   OrderDate=8/26/1997     Total=1535.00
  Orders: OrderID=10690   OrderDate=10/2/1997     Total=862.50
  Orders: OrderID=10770   OrderDate=12/9/1997     Total=236.25
  Orders: OrderID=10783   OrderDate=12/18/1997    Total=1442.50
  Orders: OrderID=10886   OrderDate=2/13/1998     Total=3127.50
  Orders: OrderID=10903   OrderDate=2/24/1998     Total=932.05
  Orders: OrderID=10922   OrderDate=3/3/1998      Total=742.50
  Orders: OrderID=10925   OrderDate=3/4/1998      Total=475.15
  Orders: OrderID=10981   OrderDate=3/27/1998     Total=15810.00
  Orders: OrderID=11022   OrderDate=4/14/1998     Total=1402.00
  Orders: OrderID=11052   OrderDate=4/27/1998     Total=1332.00
CustomerID=HILAA        CompanyName=HILARIÓN-Abastos    Address=Carrera 22 con Ave. Carlos Soublette #8-35      City=San Cristóbal      Region=Táchira  PostalCode=5022         Country=Venezuela       Phone=(5) 555-1340      Fax=(5) 555-1948        Orders=...
  Orders: OrderID=10257   OrderDate=7/16/1996     Total=1119.90
  Orders: OrderID=10395   OrderDate=12/26/1996    Total=2122.92
  Orders: OrderID=10476   OrderDate=3/17/1997     Total=180.48
  Orders: OrderID=10486   OrderDate=3/26/1997     Total=1272.00
  Orders: OrderID=10490   OrderDate=3/31/1997     Total=3163.20
  Orders: OrderID=10498   OrderDate=4/7/1997      Total=575.00
  Orders: OrderID=10552   OrderDate=5/29/1997     Total=880.50
  Orders: OrderID=10601   OrderDate=7/16/1997     Total=2285.00
  Orders: OrderID=10613   OrderDate=7/29/1997     Total=353.20
  Orders: OrderID=10641   OrderDate=8/22/1997     Total=2054.00
  Orders: OrderID=10705   OrderDate=10/15/1997    Total=378.00
  Orders: OrderID=10796   OrderDate=12/25/1997    Total=2341.36
  Orders: OrderID=10863   OrderDate=2/2/1998      Total=441.15
  Orders: OrderID=10901   OrderDate=2/23/1998     Total=934.50
  Orders: OrderID=10957   OrderDate=3/18/1998     Total=1762.70
  Orders: OrderID=10960   OrderDate=3/19/1998     Total=265.35
  Orders: OrderID=10976   OrderDate=3/25/1998     Total=912.00
  Orders: OrderID=11055   OrderDate=4/28/1998     Total=1727.50
CustomerID=HUNGC        CompanyName=Hungry Coyote Import Store  Address=City Center Plaza, 516 Main St.         City=Elgin      Region=OR       PostalCode=97827        Country=USA     Phone=(503) 555-6874    Fax=(503) 555-2376      Orders=...
  Orders: OrderID=10375   OrderDate=12/6/1996     Total=338.00
  Orders: OrderID=10394   OrderDate=12/25/1996    Total=442.00
  Orders: OrderID=10415   OrderDate=1/15/1997     Total=102.40
  Orders: OrderID=10600   OrderDate=7/16/1997     Total=479.80
  Orders: OrderID=10660   OrderDate=9/8/1997      Total=1701.00
CustomerID=HUNGO        CompanyName=Hungry Owl All-Night Grocers        Address=8 Johnstown Road        City=Cork       Region=Co. Cork         PostalCode=null         Country=Ireland         Phone=2967 542  Fax=2967 3333   Orders=...
  Orders: OrderID=10298   OrderDate=9/5/1996      Total=2645.00
  Orders: OrderID=10309   OrderDate=9/19/1996     Total=1762.00
  Orders: OrderID=10335   OrderDate=10/22/1996    Total=2036.16
  Orders: OrderID=10373   OrderDate=12/5/1996     Total=1366.40
  Orders: OrderID=10380   OrderDate=12/12/1996    Total=1313.82
  Orders: OrderID=10429   OrderDate=1/29/1997     Total=1441.38
  Orders: OrderID=10503   OrderDate=4/11/1997     Total=2048.50
  Orders: OrderID=10516   OrderDate=4/24/1997     Total=2381.05
  Orders: OrderID=10567   OrderDate=6/12/1997     Total=2519.00
  Orders: OrderID=10646   OrderDate=8/27/1997     Total=1446.00
  Orders: OrderID=10661   OrderDate=9/9/1997      Total=562.60
  Orders: OrderID=10687   OrderDate=9/30/1997     Total=4960.90
  Orders: OrderID=10701   OrderDate=10/13/1997    Total=2864.50
  Orders: OrderID=10712   OrderDate=10/21/1997    Total=1233.48
  Orders: OrderID=10736   OrderDate=11/11/1997    Total=997.00
  Orders: OrderID=10897   OrderDate=2/19/1998     Total=10835.24
  Orders: OrderID=10912   OrderDate=2/26/1998     Total=6200.55
  Orders: OrderID=10985   OrderDate=3/30/1998     Total=2023.38
  Orders: OrderID=11063   OrderDate=4/30/1998     Total=1342.95
CustomerID=ISLAT        CompanyName=Island Trading      Address=Garden House, Crowther Way      City=Cowes      Region=Isle of Wight    PostalCode=PO31 7PJ     Country=UK      Phone=(198) 555-8888    Fax=null        Orders=...
  Orders: OrderID=10315   OrderDate=9/26/1996     Total=516.80
  Orders: OrderID=10318   OrderDate=10/1/1996     Total=240.40
  Orders: OrderID=10321   OrderDate=10/3/1996     Total=144.00
  Orders: OrderID=10473   OrderDate=3/13/1997     Total=230.40
  Orders: OrderID=10621   OrderDate=8/5/1997      Total=758.50
  Orders: OrderID=10674   OrderDate=9/18/1997     Total=45.00
  Orders: OrderID=10749   OrderDate=11/20/1997    Total=1080.00
  Orders: OrderID=10798   OrderDate=12/26/1997    Total=446.60
  Orders: OrderID=10829   OrderDate=1/13/1998     Total=1764.00
  Orders: OrderID=10933   OrderDate=3/6/1998      Total=920.60
CustomerID=KOENE        CompanyName=Königlich Essen     Address=Maubelstr. 90   City=Brandenburg        Region=null     PostalCode=14776        Country=Germany         Phone=0555-09876        Fax=null        Orders=...
  Orders: OrderID=10323   OrderDate=10/7/1996     Total=164.40
  Orders: OrderID=10325   OrderDate=10/9/1996     Total=1497.00
  Orders: OrderID=10456   OrderDate=2/25/1997     Total=557.60
  Orders: OrderID=10457   OrderDate=2/25/1997     Total=1584.00
  Orders: OrderID=10468   OrderDate=3/7/1997      Total=717.60
  Orders: OrderID=10506   OrderDate=4/15/1997     Total=415.80
  Orders: OrderID=10542   OrderDate=5/20/1997     Total=469.11
  Orders: OrderID=10630   OrderDate=8/13/1997     Total=903.60
  Orders: OrderID=10718   OrderDate=10/27/1997    Total=3463.00
  Orders: OrderID=10799   OrderDate=12/26/1997    Total=1553.50
  Orders: OrderID=10817   OrderDate=1/6/1998      Total=10952.84
  Orders: OrderID=10849   OrderDate=1/23/1998     Total=967.82
  Orders: OrderID=10893   OrderDate=2/18/1998     Total=5502.11
  Orders: OrderID=11028   OrderDate=4/16/1998     Total=2160.00
CustomerID=LACOR        CompanyName=La corne d'abondance        Address=67, avenue de l'Europe  City=Versailles         Region=null     PostalCode=78000        Country=France  Phone=30.59.84.10       Fax=30.59.85.11         Orders=...
  Orders: OrderID=10858   OrderDate=1/29/1998     Total=649.00
  Orders: OrderID=10927   OrderDate=3/5/1998      Total=800.00
  Orders: OrderID=10972   OrderDate=3/24/1998     Total=251.50
  Orders: OrderID=10973   OrderDate=3/24/1998     Total=291.55
CustomerID=LAMAI        CompanyName=La maison d'Asie    Address=1 rue Alsace-Lorraine   City=Toulouse   Region=null     PostalCode=31000        Country=France  Phone=61.77.61.10       Fax=61.77.61.11         Orders=...
  Orders: OrderID=10350   OrderDate=11/11/1996    Total=642.06
  Orders: OrderID=10358   OrderDate=11/20/1996    Total=429.40
  Orders: OrderID=10371   OrderDate=12/3/1996     Total=72.96
  Orders: OrderID=10413   OrderDate=1/14/1997     Total=2123.20
  Orders: OrderID=10425   OrderDate=1/24/1997     Total=360.00
  Orders: OrderID=10454   OrderDate=2/21/1997     Total=331.20
  Orders: OrderID=10493   OrderDate=4/2/1997      Total=608.40
  Orders: OrderID=10500   OrderDate=4/9/1997      Total=523.26
  Orders: OrderID=10610   OrderDate=7/25/1997     Total=299.25
  Orders: OrderID=10631   OrderDate=8/14/1997     Total=55.80
  Orders: OrderID=10787   OrderDate=12/19/1997    Total=2622.76
  Orders: OrderID=10832   OrderDate=1/14/1998     Total=475.11
  Orders: OrderID=10923   OrderDate=3/3/1998      Total=748.80
  Orders: OrderID=11051   OrderDate=4/27/1998     Total=36.00
CustomerID=LAUGB        CompanyName=Laughing Bacchus Wine Cellars       Address=1900 Oak St.    City=Vancouver  Region=BC       PostalCode=V3F 2K1      Country=Canada  Phone=(604) 555-3392    Fax=(604) 555-7293      Orders=...
  Orders: OrderID=10495   OrderDate=4/3/1997      Total=278.00
  Orders: OrderID=10620   OrderDate=8/5/1997      Total=57.50
  Orders: OrderID=10810   OrderDate=1/1/1998      Total=187.00
CustomerID=LAZYK        CompanyName=Lazy K Kountry Store        Address=12 Orchestra Terrace    City=Walla Walla        Region=WA       PostalCode=99362        Country=USA     Phone=(509) 555-7969    Fax=(509) 555-6221      Orders=...
  Orders: OrderID=10482   OrderDate=3/21/1997     Total=147.00
  Orders: OrderID=10545   OrderDate=5/22/1997     Total=210.00
CustomerID=LEHMS        CompanyName=Lehmanns Marktstand         Address=Magazinweg 7    City=Frankfurt a.M.     Region=null     PostalCode=60528        Country=Germany         Phone=069-0245984       Fax=069-0245874         Orders=...
  Orders: OrderID=10279   OrderDate=8/13/1996     Total=351.00
  Orders: OrderID=10284   OrderDate=8/19/1996     Total=1170.38
  Orders: OrderID=10343   OrderDate=10/31/1996    Total=1584.00
  Orders: OrderID=10497   OrderDate=4/4/1997      Total=1380.60
  Orders: OrderID=10522   OrderDate=4/30/1997     Total=2318.24
  Orders: OrderID=10534   OrderDate=5/12/1997     Total=465.70
  Orders: OrderID=10536   OrderDate=5/14/1997     Total=1645.00
  Orders: OrderID=10557   OrderDate=6/3/1997      Total=1152.50
  Orders: OrderID=10592   OrderDate=7/8/1997      Total=516.47
  Orders: OrderID=10593   OrderDate=7/9/1997      Total=1994.40
  Orders: OrderID=10772   OrderDate=12/10/1997    Total=3603.22
  Orders: OrderID=10862   OrderDate=1/30/1998     Total=581.00
  Orders: OrderID=10891   OrderDate=2/17/1998     Total=368.93
  Orders: OrderID=10934   OrderDate=3/9/1998      Total=500.00
  Orders: OrderID=11070   OrderDate=5/5/1998      Total=1629.98
CustomerID=LETSS        CompanyName=Let's Stop N Shop   Address=87 Polk St. Suite 5     City=San Francisco      Region=CA       PostalCode=94117        Country=USA     Phone=(415) 555-5938    Fax=null        Orders=...
  Orders: OrderID=10579   OrderDate=6/25/1997     Total=317.75
  Orders: OrderID=10719   OrderDate=10/27/1997    Total=844.25
  Orders: OrderID=10735   OrderDate=11/10/1997    Total=536.40
  Orders: OrderID=10884   OrderDate=2/12/1998     Total=1378.07
CustomerID=LILAS        CompanyName=LILA-Supermercado   Address=Carrera 52 con Ave. Bolívar #65-98 Llano Largo  City=Barquisimeto       Region=Lara     PostalCode=3508         Country=Venezuela       Phone=(9) 331-6954      Fax=(9) 331-7256        Orders=...
  Orders: OrderID=10283   OrderDate=8/16/1996     Total=1414.80
  Orders: OrderID=10296   OrderDate=9/3/1996      Total=1050.60
  Orders: OrderID=10330   OrderDate=10/16/1996    Total=1649.00
  Orders: OrderID=10357   OrderDate=11/19/1996    Total=1167.68
  Orders: OrderID=10381   OrderDate=12/12/1996    Total=112.00
  Orders: OrderID=10461   OrderDate=2/28/1997     Total=1538.70
  Orders: OrderID=10499   OrderDate=4/8/1997      Total=1412.00
  Orders: OrderID=10543   OrderDate=5/21/1997     Total=1504.50
  Orders: OrderID=10780   OrderDate=12/16/1997    Total=720.00
  Orders: OrderID=10823   OrderDate=1/9/1998      Total=2826.00
  Orders: OrderID=10899   OrderDate=2/20/1998     Total=122.40
  Orders: OrderID=10997   OrderDate=4/3/1998      Total=1885.00
  Orders: OrderID=11065   OrderDate=5/1/1998      Total=189.42
  Orders: OrderID=11071   OrderDate=5/5/1998      Total=484.50
CustomerID=LINOD        CompanyName=LINO-Delicateses    Address=Ave. 5 de Mayo Porlamar         City=I. de Margarita    Region=Nueva Esparta    PostalCode=4980         Country=Venezuela       Phone=(8) 34-56-12      Fax=(8) 34-93-93        Orders=...
  Orders: OrderID=10405   OrderDate=1/6/1997      Total=400.00
  Orders: OrderID=10485   OrderDate=3/25/1997     Total=1584.00
  Orders: OrderID=10638   OrderDate=8/20/1997     Total=2720.05
  Orders: OrderID=10697   OrderDate=10/8/1997     Total=805.42
  Orders: OrderID=10729   OrderDate=11/4/1997     Total=1850.00
  Orders: OrderID=10811   OrderDate=1/2/1998      Total=852.00
  Orders: OrderID=10838   OrderDate=1/19/1998     Total=1938.38
  Orders: OrderID=10840   OrderDate=1/19/1998     Total=211.20
  Orders: OrderID=10919   OrderDate=3/2/1998      Total=1122.80
  Orders: OrderID=10954   OrderDate=3/17/1998     Total=1659.54
  Orders: OrderID=11014   OrderDate=4/10/1998     Total=243.18
  Orders: OrderID=11039   OrderDate=4/21/1998     Total=3090.00
CustomerID=LONEP        CompanyName=Lonesome Pine Restaurant    Address=89 Chiaroscuro Rd.      City=Portland   Region=OR       PostalCode=97219        Country=USA     Phone=(503) 555-9573    Fax=(503) 555-9646      Orders=...
  Orders: OrderID=10307   OrderDate=9/17/1996     Total=424.00
  Orders: OrderID=10317   OrderDate=9/30/1996     Total=288.00
  Orders: OrderID=10544   OrderDate=5/21/1997     Total=417.20
  Orders: OrderID=10662   OrderDate=9/9/1997      Total=125.00
  Orders: OrderID=10665   OrderDate=9/11/1997     Total=1295.00
  Orders: OrderID=10867   OrderDate=2/3/1998      Total=98.40
  Orders: OrderID=10883   OrderDate=2/12/1998     Total=36.00
  Orders: OrderID=11018   OrderDate=4/13/1998     Total=1575.00
CustomerID=MAGAA        CompanyName=Magazzini Alimentari Riuniti        Address=Via Ludovico il Moro 22         City=Bergamo    Region=null     PostalCode=24100        Country=Italy   Phone=035-640230        Fax=035-640231  Orders=...
  Orders: OrderID=10275   OrderDate=8/7/1996      Total=291.84
  Orders: OrderID=10300   OrderDate=9/9/1996      Total=608.00
  Orders: OrderID=10404   OrderDate=1/3/1997      Total=1591.25
  Orders: OrderID=10467   OrderDate=3/6/1997      Total=235.20
  Orders: OrderID=10635   OrderDate=8/18/1997     Total=1326.22
  Orders: OrderID=10754   OrderDate=11/25/1997    Total=55.20
  Orders: OrderID=10784   OrderDate=12/18/1997    Total=1488.00
  Orders: OrderID=10818   OrderDate=1/7/1998      Total=833.00
  Orders: OrderID=10939   OrderDate=3/10/1998     Total=637.50
  Orders: OrderID=10950   OrderDate=3/16/1998     Total=110.00
CustomerID=MAISD        CompanyName=Maison Dewey        Address=Rue Joseph-Bens 532     City=Bruxelles  Region=null     PostalCode=B-1180       Country=Belgium         Phone=(02) 201 24 67    Fax=(02) 201 24 68      Orders=...
  Orders: OrderID=10529   OrderDate=5/7/1997      Total=946.00
  Orders: OrderID=10649   OrderDate=8/28/1997     Total=1434.00
  Orders: OrderID=10760   OrderDate=12/1/1997     Total=2917.00
  Orders: OrderID=10892   OrderDate=2/17/1998     Total=2090.00
  Orders: OrderID=10896   OrderDate=2/19/1998     Total=750.50
  Orders: OrderID=10978   OrderDate=3/26/1998     Total=1303.20
  Orders: OrderID=11004   OrderDate=4/7/1998      Total=295.38
CustomerID=MEREP        CompanyName=Mère Paillarde      Address=43 rue St. Laurent      City=Montréal   Region=Québec   PostalCode=H1J 1C3      Country=Canada  Phone=(514) 555-8054    Fax=(514) 555-8055      Orders=...
  Orders: OrderID=10332   OrderDate=10/17/1996    Total=1786.88
  Orders: OrderID=10339   OrderDate=10/28/1996    Total=3354.00
  Orders: OrderID=10376   OrderDate=12/9/1996     Total=399.00
  Orders: OrderID=10424   OrderDate=1/23/1997     Total=9194.56
  Orders: OrderID=10439   OrderDate=2/7/1997      Total=1078.00
  Orders: OrderID=10505   OrderDate=4/14/1997     Total=147.90
  Orders: OrderID=10565   OrderDate=6/11/1997     Total=639.90
  Orders: OrderID=10570   OrderDate=6/17/1997     Total=2465.25
  Orders: OrderID=10590   OrderDate=7/7/1997      Total=1101.00
  Orders: OrderID=10605   OrderDate=7/21/1997     Total=4109.70
  Orders: OrderID=10618   OrderDate=8/1/1997      Total=2697.50
  Orders: OrderID=10619   OrderDate=8/4/1997      Total=1260.00
  Orders: OrderID=10724   OrderDate=10/30/1997    Total=638.50
CustomerID=MORGK        CompanyName=Morgenstern Gesundkost      Address=Heerstr. 22     City=Leipzig    Region=null     PostalCode=04179        Country=Germany         Phone=0342-023176       Fax=null        Orders=...
  Orders: OrderID=10277   OrderDate=8/9/1996      Total=1200.80
  Orders: OrderID=10575   OrderDate=6/20/1997     Total=2147.40
  Orders: OrderID=10699   OrderDate=10/9/1997     Total=114.00
  Orders: OrderID=10779   OrderDate=12/16/1997    Total=1335.00
  Orders: OrderID=10945   OrderDate=3/12/1998     Total=245.00
CustomerID=NORTS        CompanyName=North/South         Address=South House, 300 Queensbridge   City=London     Region=null     PostalCode=SW7 1RZ      Country=UK      Phone=(171) 555-7733    Fax=(171) 555-2530      Orders=...
  Orders: OrderID=10517   OrderDate=4/24/1997     Total=352.00
  Orders: OrderID=10752   OrderDate=11/24/1997    Total=252.00
  Orders: OrderID=11057   OrderDate=4/29/1998     Total=45.00
CustomerID=OCEAN        CompanyName=Océano Atlántico Ltda.      Address=Ing. Gustavo Moncada 8585, Piso 20-A    City=Buenos Aires       Region=null     PostalCode=1010         Country=Argentina       Phone=(1) 135-5333      Fax=(1) 135-5535        Orders=...
  Orders: OrderID=10409   OrderDate=1/9/1997      Total=319.20
  Orders: OrderID=10531   OrderDate=5/8/1997      Total=110.00
  Orders: OrderID=10898   OrderDate=2/20/1998     Total=30.00
  Orders: OrderID=10958   OrderDate=3/18/1998     Total=781.00
  Orders: OrderID=10986   OrderDate=3/30/1998     Total=2220.00
CustomerID=OLDWO        CompanyName=Old World Delicatessen      Address=2743 Bering St.         City=Anchorage  Region=AK       PostalCode=99508        Country=USA     Phone=(907) 555-7584    Fax=(907) 555-2880      Orders=...
  Orders: OrderID=10260   OrderDate=7/19/1996     Total=1504.65
  Orders: OrderID=10305   OrderDate=9/13/1996     Total=3741.30
  Orders: OrderID=10338   OrderDate=10/25/1996    Total=934.50
  Orders: OrderID=10441   OrderDate=2/10/1997     Total=1755.00
  Orders: OrderID=10594   OrderDate=7/9/1997      Total=565.50
  Orders: OrderID=10680   OrderDate=9/24/1997     Total=1261.88
  Orders: OrderID=10706   OrderDate=10/16/1997    Total=1893.00
  Orders: OrderID=10855   OrderDate=1/27/1998     Total=2227.89
  Orders: OrderID=10965   OrderDate=3/20/1998     Total=848.00
  Orders: OrderID=11034   OrderDate=4/20/1998     Total=539.40
CustomerID=OTTIK        CompanyName=Ottilies Käseladen  Address=Mehrheimerstr. 369      City=Köln       Region=null     PostalCode=50739        Country=Germany         Phone=0221-0644327      Fax=0221-0765721        Orders=...
  Orders: OrderID=10407   OrderDate=1/7/1997      Total=1194.00
  Orders: OrderID=10508   OrderDate=4/16/1997     Total=240.00
  Orders: OrderID=10554   OrderDate=5/30/1997     Total=1728.52
  Orders: OrderID=10580   OrderDate=6/26/1997     Total=1013.74
  Orders: OrderID=10684   OrderDate=9/26/1997     Total=1768.00
  Orders: OrderID=10766   OrderDate=12/5/1997     Total=2310.00
  Orders: OrderID=10833   OrderDate=1/15/1998     Total=906.93
  Orders: OrderID=10999   OrderDate=4/3/1998      Total=1197.95
  Orders: OrderID=11020   OrderDate=4/14/1998     Total=632.40
CustomerID=PARIS        CompanyName=Paris spécialités   Address=265, boulevard Charonne         City=Paris      Region=null     PostalCode=75012        Country=France  Phone=(1) 42.34.22.66   Fax=(1) 42.34.22.77     Orders=...
CustomerID=PERIC        CompanyName=Pericles Comidas clásicas   Address=Calle Dr. Jorge Cash 321        City=México D.F.        Region=null     PostalCode=05033        Country=Mexico  Phone=(5) 552-3745      Fax=(5) 545-3745        Orders=...
  Orders: OrderID=10322   OrderDate=10/4/1996     Total=112.00
  Orders: OrderID=10354   OrderDate=11/14/1996    Total=568.80
  Orders: OrderID=10474   OrderDate=3/13/1997     Total=1249.10
  Orders: OrderID=10502   OrderDate=4/10/1997     Total=816.30
  Orders: OrderID=10995   OrderDate=4/2/1998      Total=1196.00
  Orders: OrderID=11073   OrderDate=5/5/1998      Total=300.00
CustomerID=PICCO        CompanyName=Piccolo und mehr    Address=Geislweg 14     City=Salzburg   Region=null     PostalCode=5020         Country=Austria         Phone=6562-9722         Fax=6562-9723   Orders=...
  Orders: OrderID=10353   OrderDate=11/13/1996    Total=8593.28
  Orders: OrderID=10392   OrderDate=12/24/1996    Total=1440.00
  Orders: OrderID=10427   OrderDate=1/27/1997     Total=651.00
  Orders: OrderID=10489   OrderDate=3/28/1997     Total=439.20
  Orders: OrderID=10530   OrderDate=5/8/1997      Total=4180.00
  Orders: OrderID=10597   OrderDate=7/11/1997     Total=718.08
  Orders: OrderID=10686   OrderDate=9/30/1997     Total=1404.45
  Orders: OrderID=10747   OrderDate=11/19/1997    Total=1912.85
  Orders: OrderID=10844   OrderDate=1/21/1998     Total=735.00
  Orders: OrderID=11053   OrderDate=4/27/1998     Total=3055.00
CustomerID=PRINI        CompanyName=Princesa Isabel Vinhos      Address=Estrada da saúde n. 58  City=Lisboa     Region=null     PostalCode=1756         Country=Portugal        Phone=(1) 356-5634      Fax=null        Orders=...
  Orders: OrderID=10336   OrderDate=10/23/1996    Total=285.12
  Orders: OrderID=10397   OrderDate=12/27/1996    Total=716.72
  Orders: OrderID=10433   OrderDate=2/3/1997      Total=851.20
  Orders: OrderID=10477   OrderDate=3/17/1997     Total=558.00
  Orders: OrderID=10808   OrderDate=1/1/1998      Total=1411.00
  Orders: OrderID=11007   OrderDate=4/8/1998      Total=2633.90
CustomerID=QUEDE        CompanyName=Que Delícia         Address=Rua da Panificadora, 12         City=Rio de Janeiro     Region=RJ       PostalCode=02389-673    Country=Brazil  Phone=(21) 555-4252     Fax=(21) 555-4545       Orders=...
  Orders: OrderID=10261   OrderDate=7/19/1996     Total=448.00
  Orders: OrderID=10291   OrderDate=8/27/1996     Total=497.52
  Orders: OrderID=10379   OrderDate=12/11/1996    Total=863.28
  Orders: OrderID=10421   OrderDate=1/21/1997     Total=1194.27
  Orders: OrderID=10587   OrderDate=7/2/1997      Total=807.38
  Orders: OrderID=10647   OrderDate=8/27/1997     Total=636.00
  Orders: OrderID=10720   OrderDate=10/28/1997    Total=550.00
  Orders: OrderID=10794   OrderDate=12/24/1997    Total=314.76
  Orders: OrderID=10989   OrderDate=3/31/1998     Total=1353.60
CustomerID=QUEEN        CompanyName=Queen Cozinha       Address=Alameda dos Canàrios, 891       City=São Paulo  Region=SP       PostalCode=05487-020    Country=Brazil  Phone=(11) 555-1189     Fax=null        Orders=...
  Orders: OrderID=10372   OrderDate=12/4/1996     Total=9210.90
  Orders: OrderID=10406   OrderDate=1/7/1997      Total=1830.78
  Orders: OrderID=10487   OrderDate=3/26/1997     Total=889.70
  Orders: OrderID=10637   OrderDate=8/19/1997     Total=2761.94
  Orders: OrderID=10659   OrderDate=9/5/1997      Total=1227.02
  Orders: OrderID=10704   OrderDate=10/14/1997    Total=595.50
  Orders: OrderID=10728   OrderDate=11/4/1997     Total=1296.75
  Orders: OrderID=10786   OrderDate=12/19/1997    Total=1531.08
  Orders: OrderID=10868   OrderDate=2/4/1998      Total=1920.60
  Orders: OrderID=10913   OrderDate=2/26/1998     Total=768.75
  Orders: OrderID=10914   OrderDate=2/27/1998     Total=537.50
  Orders: OrderID=10961   OrderDate=3/19/1998     Total=1119.90
  Orders: OrderID=11068   OrderDate=5/4/1998      Total=2027.08
CustomerID=QUICK        CompanyName=QUICK-Stop  Address=Taucherstraße 10        City=Cunewalde  Region=null     PostalCode=01307        Country=Germany         Phone=0372-035188       Fax=null        Orders=...
  Orders: OrderID=10273   OrderDate=8/5/1996      Total=2037.28
  Orders: OrderID=10285   OrderDate=8/20/1996     Total=1743.36
  Orders: OrderID=10286   OrderDate=8/21/1996     Total=3016.00
  Orders: OrderID=10313   OrderDate=9/24/1996     Total=182.40
  Orders: OrderID=10345   OrderDate=11/4/1996     Total=2924.80
  Orders: OrderID=10361   OrderDate=11/22/1996    Total=2046.24
  Orders: OrderID=10418   OrderDate=1/17/1997     Total=1814.80
  Orders: OrderID=10451   OrderDate=2/19/1997     Total=3849.66
  Orders: OrderID=10515   OrderDate=4/23/1997     Total=9921.30
  Orders: OrderID=10527   OrderDate=5/5/1997      Total=1503.00
  Orders: OrderID=10540   OrderDate=5/19/1997     Total=10191.70
  Orders: OrderID=10549   OrderDate=5/27/1997     Total=3554.28
  Orders: OrderID=10588   OrderDate=7/3/1997      Total=3120.00
  Orders: OrderID=10658   OrderDate=9/5/1997      Total=4464.60
  Orders: OrderID=10691   OrderDate=10/3/1997     Total=10164.80
  Orders: OrderID=10694   OrderDate=10/6/1997     Total=4825.00
  Orders: OrderID=10721   OrderDate=10/29/1997    Total=923.88
  Orders: OrderID=10745   OrderDate=11/18/1997    Total=4529.80
  Orders: OrderID=10765   OrderDate=12/4/1997     Total=1515.60
  Orders: OrderID=10788   OrderDate=12/22/1997    Total=731.50
  Orders: OrderID=10845   OrderDate=1/21/1998     Total=3812.70
  Orders: OrderID=10865   OrderDate=2/2/1998      Total=16387.50
  Orders: OrderID=10878   OrderDate=2/10/1998     Total=1539.00
  Orders: OrderID=10938   OrderDate=3/10/1998     Total=2731.88
  Orders: OrderID=10962   OrderDate=3/19/1998     Total=3584.00
  Orders: OrderID=10991   OrderDate=4/1/1998      Total=2296.00
  Orders: OrderID=10996   OrderDate=4/2/1998      Total=560.00
  Orders: OrderID=11021   OrderDate=4/14/1998     Total=6306.24
CustomerID=RANCH        CompanyName=Rancho grande       Address=Av. del Libertador 900  City=Buenos Aires       Region=null     PostalCode=1010         Country=Argentina       Phone=(1) 123-5555      Fax=(1) 123-5556        Orders=...
  Orders: OrderID=10448   OrderDate=2/17/1997     Total=443.40
  Orders: OrderID=10716   OrderDate=10/24/1997    Total=706.00
  Orders: OrderID=10828   OrderDate=1/13/1998     Total=932.00
  Orders: OrderID=10916   OrderDate=2/27/1998     Total=686.70
  Orders: OrderID=11019   OrderDate=4/13/1998     Total=76.00
CustomerID=RATTC        CompanyName=Rattlesnake Canyon Grocery  Address=2817 Milton Dr.         City=Albuquerque        Region=NM       PostalCode=87110        Country=USA     Phone=(505) 555-5939    Fax=(505) 555-3620      Orders=...
  Orders: OrderID=10262   OrderDate=7/22/1996     Total=584.00
  Orders: OrderID=10272   OrderDate=8/2/1996      Total=1456.00
  Orders: OrderID=10294   OrderDate=8/30/1996     Total=1887.60
  Orders: OrderID=10314   OrderDate=9/25/1996     Total=2094.30
  Orders: OrderID=10316   OrderDate=9/27/1996     Total=2835.00
  Orders: OrderID=10346   OrderDate=11/5/1996     Total=1618.88
  Orders: OrderID=10401   OrderDate=1/1/1997      Total=3868.60
  Orders: OrderID=10479   OrderDate=3/19/1997     Total=10495.60
  Orders: OrderID=10564   OrderDate=6/10/1997     Total=1234.05
  Orders: OrderID=10569   OrderDate=6/16/1997     Total=890.00
  Orders: OrderID=10598   OrderDate=7/14/1997     Total=2388.50
  Orders: OrderID=10761   OrderDate=12/2/1997     Total=507.00
  Orders: OrderID=10820   OrderDate=1/7/1998      Total=1140.00
  Orders: OrderID=10852   OrderDate=1/26/1998     Total=2984.00
  Orders: OrderID=10889   OrderDate=2/16/1998     Total=11380.00
  Orders: OrderID=10988   OrderDate=3/31/1998     Total=3574.80
  Orders: OrderID=11000   OrderDate=4/6/1998      Total=903.75
  Orders: OrderID=11077   OrderDate=5/6/1998      Total=1255.72
CustomerID=REGGC        CompanyName=Reggiani Caseifici  Address=Strada Provinciale 124  City=Reggio Emilia      Region=null     PostalCode=42100        Country=Italy   Phone=0522-556721       Fax=0522-556722         Orders=...
  Orders: OrderID=10288   OrderDate=8/23/1996     Total=80.10
  Orders: OrderID=10428   OrderDate=1/28/1997     Total=192.00
  Orders: OrderID=10443   OrderDate=2/12/1997     Total=517.44
  Orders: OrderID=10562   OrderDate=6/9/1997      Total=488.70
  Orders: OrderID=10586   OrderDate=7/2/1997      Total=23.80
  Orders: OrderID=10655   OrderDate=9/3/1997      Total=154.40
  Orders: OrderID=10727   OrderDate=11/3/1997     Total=1624.50
  Orders: OrderID=10812   OrderDate=1/2/1998      Total=1692.80
  Orders: OrderID=10908   OrderDate=2/26/1998     Total=663.10
  Orders: OrderID=10942   OrderDate=3/11/1998     Total=560.00
  Orders: OrderID=11010   OrderDate=4/9/1998      Total=645.00
  Orders: OrderID=11062   OrderDate=4/30/1998     Total=406.40
CustomerID=RICAR        CompanyName=Ricardo Adocicados  Address=Av. Copacabana, 267     City=Rio de Janeiro     Region=RJ       PostalCode=02389-890    Country=Brazil  Phone=(21) 555-3412     Fax=null        Orders=...
  Orders: OrderID=10287   OrderDate=8/22/1996     Total=819.00
  Orders: OrderID=10299   OrderDate=9/6/1996      Total=349.50
  Orders: OrderID=10447   OrderDate=2/14/1997     Total=914.40
  Orders: OrderID=10481   OrderDate=3/20/1997     Total=1472.00
  Orders: OrderID=10563   OrderDate=6/10/1997     Total=965.00
  Orders: OrderID=10622   OrderDate=8/6/1997      Total=560.00
  Orders: OrderID=10648   OrderDate=8/28/1997     Total=372.38
  Orders: OrderID=10813   OrderDate=1/5/1998      Total=602.40
  Orders: OrderID=10851   OrderDate=1/26/1998     Total=2603.00
  Orders: OrderID=10877   OrderDate=2/9/1998      Total=1955.12
  Orders: OrderID=11059   OrderDate=4/29/1998     Total=1838.00
CustomerID=RICSU        CompanyName=Richter Supermarkt  Address=Grenzacherweg 237       City=Genève     Region=null     PostalCode=1203         Country=Switzerland     Phone=0897-034214       Fax=null        Orders=...
  Orders: OrderID=10255   OrderDate=7/12/1996     Total=2490.50
  Orders: OrderID=10419   OrderDate=1/20/1997     Total=2097.60
  Orders: OrderID=10537   OrderDate=5/14/1997     Total=1823.80
  Orders: OrderID=10666   OrderDate=9/12/1997     Total=4666.94
  Orders: OrderID=10751   OrderDate=11/24/1997    Total=1631.48
  Orders: OrderID=10758   OrderDate=11/28/1997    Total=1644.60
  Orders: OrderID=10931   OrderDate=3/6/1998      Total=799.20
  Orders: OrderID=10951   OrderDate=3/16/1998     Total=458.76
  Orders: OrderID=11033   OrderDate=4/17/1998     Total=3232.80
  Orders: OrderID=11075   OrderDate=5/6/1998      Total=498.10
CustomerID=ROMEY        CompanyName=Romero y tomillo    Address=Gran Vía, 1     City=Madrid     Region=null     PostalCode=28001        Country=Spain   Phone=(91) 745 6200     Fax=(91) 745 6210       Orders=...
  Orders: OrderID=10281   OrderDate=8/14/1996     Total=86.50
  Orders: OrderID=10282   OrderDate=8/15/1996     Total=155.40
  Orders: OrderID=10306   OrderDate=9/16/1996     Total=498.50
  Orders: OrderID=10917   OrderDate=3/2/1998      Total=365.89
  Orders: OrderID=11013   OrderDate=4/9/1998      Total=361.00
CustomerID=SANTG        CompanyName=Santé Gourmet       Address=Erling Skakkes gate 78  City=Stavern    Region=null     PostalCode=4110         Country=Norway  Phone=07-98 92 35       Fax=07-98 92 47         Orders=...
  Orders: OrderID=10387   OrderDate=12/18/1996    Total=1058.40
  Orders: OrderID=10520   OrderDate=4/29/1997     Total=200.00
  Orders: OrderID=10639   OrderDate=8/20/1997     Total=500.00
  Orders: OrderID=10831   OrderDate=1/14/1998     Total=2684.40
  Orders: OrderID=10909   OrderDate=2/26/1998     Total=670.00
  Orders: OrderID=11015   OrderDate=4/10/1998     Total=622.35
CustomerID=SAVEA        CompanyName=Save-a-lot Markets  Address=187 Suffolk Ln.         City=Boise      Region=ID       PostalCode=83720        Country=USA     Phone=(208) 555-8097    Fax=null        Orders=...
  Orders: OrderID=10324   OrderDate=10/8/1996     Total=5275.72
  Orders: OrderID=10393   OrderDate=12/25/1996    Total=2556.95
  Orders: OrderID=10398   OrderDate=12/30/1996    Total=2505.60
  Orders: OrderID=10440   OrderDate=2/10/1997     Total=4924.14
  Orders: OrderID=10452   OrderDate=2/20/1997     Total=2018.50
  Orders: OrderID=10510   OrderDate=4/18/1997     Total=4707.54
  Orders: OrderID=10555   OrderDate=6/2/1997      Total=2944.40
  Orders: OrderID=10603   OrderDate=7/18/1997     Total=1483.00
  Orders: OrderID=10607   OrderDate=7/22/1997     Total=6475.40
  Orders: OrderID=10612   OrderDate=7/28/1997     Total=6375.00
  Orders: OrderID=10627   OrderDate=8/11/1997     Total=1185.75
  Orders: OrderID=10657   OrderDate=9/4/1997      Total=4371.60
  Orders: OrderID=10678   OrderDate=9/23/1997     Total=5256.50
  Orders: OrderID=10700   OrderDate=10/10/1997    Total=1638.40
  Orders: OrderID=10711   OrderDate=10/21/1997    Total=4451.70
  Orders: OrderID=10713   OrderDate=10/22/1997    Total=2827.90
  Orders: OrderID=10714   OrderDate=10/22/1997    Total=2205.75
  Orders: OrderID=10722   OrderDate=10/29/1997    Total=1570.00
  Orders: OrderID=10748   OrderDate=11/20/1997    Total=2196.00
  Orders: OrderID=10757   OrderDate=11/27/1997    Total=3082.00
  Orders: OrderID=10815   OrderDate=1/5/1998      Total=40.00
  Orders: OrderID=10847   OrderDate=1/22/1998     Total=4931.92
  Orders: OrderID=10882   OrderDate=2/11/1998     Total=892.64
  Orders: OrderID=10894   OrderDate=2/18/1998     Total=2753.10
  Orders: OrderID=10941   OrderDate=3/11/1998     Total=4011.75
  Orders: OrderID=10983   OrderDate=3/27/1998     Total=720.90
  Orders: OrderID=10984   OrderDate=3/30/1998     Total=1809.75
  Orders: OrderID=11002   OrderDate=4/6/1998      Total=1811.10
  Orders: OrderID=11030   OrderDate=4/17/1998     Total=12615.05
  Orders: OrderID=11031   OrderDate=4/17/1998     Total=2393.50
  Orders: OrderID=11064   OrderDate=5/1/1998      Total=4330.40
CustomerID=SEVES        CompanyName=Seven Seas Imports  Address=90 Wadhurst Rd.         City=London     Region=null     PostalCode=OX15 4NB     Country=UK      Phone=(171) 555-1717    Fax=(171) 555-5646      Orders=...
  Orders: OrderID=10359   OrderDate=11/21/1996    Total=3471.68
  Orders: OrderID=10377   OrderDate=12/9/1996     Total=863.60
  Orders: OrderID=10388   OrderDate=12/19/1996    Total=1228.80
  Orders: OrderID=10472   OrderDate=3/12/1997     Total=1036.80
  Orders: OrderID=10523   OrderDate=5/1/1997      Total=2444.31
  Orders: OrderID=10547   OrderDate=5/23/1997     Total=1792.80
  Orders: OrderID=10800   OrderDate=12/26/1997    Total=1468.94
  Orders: OrderID=10804   OrderDate=12/30/1997    Total=2278.40
  Orders: OrderID=10869   OrderDate=2/4/1998      Total=1630.00
CustomerID=SIMOB        CompanyName=Simons bistro       Address=Vinbæltet 34    City=København  Region=null     PostalCode=1734         Country=Denmark         Phone=31 12 34 56       Fax=31 13 35 57         Orders=...
  Orders: OrderID=10341   OrderDate=10/29/1996    Total=352.60
  Orders: OrderID=10417   OrderDate=1/16/1997     Total=11188.40
  Orders: OrderID=10556   OrderDate=6/3/1997      Total=835.20
  Orders: OrderID=10642   OrderDate=8/22/1997     Total=696.00
  Orders: OrderID=10669   OrderDate=9/15/1997     Total=570.00
  Orders: OrderID=10802   OrderDate=12/29/1997    Total=2942.81
  Orders: OrderID=11074   OrderDate=5/6/1998      Total=232.08
CustomerID=SPECD        CompanyName=Spécialités du monde        Address=25, rue Lauriston       City=Paris      Region=null     PostalCode=75016        Country=France  Phone=(1) 47.55.60.10   Fax=(1) 47.55.60.20     Orders=...
  Orders: OrderID=10738   OrderDate=11/12/1997    Total=52.35
  Orders: OrderID=10907   OrderDate=2/25/1998     Total=108.50
  Orders: OrderID=10964   OrderDate=3/20/1998     Total=2052.50
  Orders: OrderID=11043   OrderDate=4/22/1998     Total=210.00
CustomerID=SPLIR        CompanyName=Split Rail Beer & Ale       Address=P.O. Box 555    City=Lander     Region=WY       PostalCode=82520        Country=USA     Phone=(307) 555-4680    Fax=(307) 555-6525      Orders=...
  Orders: OrderID=10271   OrderDate=8/1/1996      Total=48.00
  Orders: OrderID=10329   OrderDate=10/15/1996    Total=4578.43
  Orders: OrderID=10349   OrderDate=11/8/1996     Total=141.60
  Orders: OrderID=10369   OrderDate=12/2/1996     Total=2390.40
  Orders: OrderID=10385   OrderDate=12/17/1996    Total=691.20
  Orders: OrderID=10432   OrderDate=1/31/1997     Total=485.00
  Orders: OrderID=10756   OrderDate=11/27/1997    Total=1990.00
  Orders: OrderID=10821   OrderDate=1/8/1998      Total=678.00
  Orders: OrderID=10974   OrderDate=3/25/1998     Total=439.00
CustomerID=SUPRD        CompanyName=Suprêmes délices    Address=Boulevard Tirou, 255    City=Charleroi  Region=null     PostalCode=B-6000       Country=Belgium         Phone=(071) 23 67 22 20         Fax=(071) 23 67 22 21   Orders=...
  Orders: OrderID=10252   OrderDate=7/9/1996      Total=3597.90
  Orders: OrderID=10302   OrderDate=9/10/1996     Total=2708.80
  Orders: OrderID=10458   OrderDate=2/26/1997     Total=3891.00
  Orders: OrderID=10463   OrderDate=3/4/1997      Total=713.30
  Orders: OrderID=10475   OrderDate=3/14/1997     Total=1505.18
  Orders: OrderID=10767   OrderDate=12/5/1997     Total=28.00
  Orders: OrderID=10841   OrderDate=1/20/1998     Total=4581.00
  Orders: OrderID=10846   OrderDate=1/22/1998     Total=1112.00
  Orders: OrderID=10885   OrderDate=2/12/1998     Total=1209.00
  Orders: OrderID=10930   OrderDate=3/6/1998      Total=2255.50
  Orders: OrderID=11035   OrderDate=4/20/1998     Total=1754.50
  Orders: OrderID=11038   OrderDate=4/21/1998     Total=732.60
CustomerID=THEBI        CompanyName=The Big Cheese      Address=89 Jefferson Way, Suite 2       City=Portland   Region=OR       PostalCode=97201        Country=USA     Phone=(503) 555-3612    Fax=null        Orders=...
  Orders: OrderID=10310   OrderDate=9/20/1996     Total=336.00
  Orders: OrderID=10708   OrderDate=10/17/1997    Total=180.40
  Orders: OrderID=10805   OrderDate=12/30/1997    Total=2775.00
  Orders: OrderID=10992   OrderDate=4/1/1998      Total=69.60
CustomerID=THECR        CompanyName=The Cracker Box     Address=55 Grizzly Peak Rd.     City=Butte      Region=MT       PostalCode=59801        Country=USA     Phone=(406) 555-5834    Fax=(406) 555-8083      Orders=...
  Orders: OrderID=10624   OrderDate=8/7/1997      Total=1393.24
  Orders: OrderID=10775   OrderDate=12/12/1997    Total=228.00
  Orders: OrderID=11003   OrderDate=4/6/1998      Total=326.00
CustomerID=TOMSP        CompanyName=Toms Spezialitäten  Address=Luisenstr. 48   City=Münster    Region=null     PostalCode=44087        Country=Germany         Phone=0251-031259       Fax=0251-035695         Orders=...
  Orders: OrderID=10438   OrderDate=2/6/1997      Total=454.00
  Orders: OrderID=10446   OrderDate=2/14/1997     Total=246.24
  Orders: OrderID=10548   OrderDate=5/26/1997     Total=240.10
  Orders: OrderID=10608   OrderDate=7/23/1997     Total=1064.00
  Orders: OrderID=10967   OrderDate=3/23/1998     Total=910.40
CustomerID=TORTU        CompanyName=Tortuga Restaurante         Address=Avda. Azteca 123        City=México D.F.        Region=null     PostalCode=05033        Country=Mexico  Phone=(5) 555-2933      Fax=null        Orders=...
  Orders: OrderID=10276   OrderDate=8/8/1996      Total=420.00
  Orders: OrderID=10293   OrderDate=8/29/1996     Total=848.70
  Orders: OrderID=10304   OrderDate=9/12/1996     Total=954.40
  Orders: OrderID=10319   OrderDate=10/2/1996     Total=1191.20
  Orders: OrderID=10518   OrderDate=4/25/1997     Total=4150.05
  Orders: OrderID=10576   OrderDate=6/23/1997     Total=838.45
  Orders: OrderID=10676   OrderDate=9/22/1997     Total=534.85
  Orders: OrderID=10842   OrderDate=1/20/1998     Total=975.00
  Orders: OrderID=10915   OrderDate=2/27/1998     Total=539.50
  Orders: OrderID=11069   OrderDate=5/4/1998      Total=360.00
CustomerID=TRADH        CompanyName=Tradição Hipermercados      Address=Av. Inês de Castro, 414         City=São Paulo  Region=SP       PostalCode=05634-030    Country=Brazil  Phone=(11) 555-2167     Fax=(11) 555-2168       Orders=...
  Orders: OrderID=10249   OrderDate=7/5/1996      Total=1863.40
  Orders: OrderID=10292   OrderDate=8/28/1996     Total=1296.00
  Orders: OrderID=10496   OrderDate=4/4/1997      Total=190.00
  Orders: OrderID=10606   OrderDate=7/22/1997     Total=1130.40
  Orders: OrderID=10830   OrderDate=1/13/1998     Total=1974.00
  Orders: OrderID=10834   OrderDate=1/15/1998     Total=1432.71
  Orders: OrderID=10839   OrderDate=1/19/1998     Total=827.55
CustomerID=TRAIH        CompanyName=Trail's Head Gourmet Provisioners   Address=722 DaVinci Blvd.       City=Kirkland   Region=WA       PostalCode=98034        Country=USA     Phone=(206) 555-8257    Fax=(206) 555-2174      Orders=...
  Orders: OrderID=10574   OrderDate=6/19/1997     Total=764.30
  Orders: OrderID=10577   OrderDate=6/23/1997     Total=569.00
  Orders: OrderID=10822   OrderDate=1/8/1998      Total=237.90
CustomerID=VAFFE        CompanyName=Vaffeljernet        Address=Smagsløget 45   City=Århus      Region=null     PostalCode=8200         Country=Denmark         Phone=86 21 32 43       Fax=86 22 33 44         Orders=...
  Orders: OrderID=10367   OrderDate=11/28/1996    Total=834.20
  Orders: OrderID=10399   OrderDate=12/31/1996    Total=1765.60
  Orders: OrderID=10465   OrderDate=3/5/1997      Total=2518.00
  Orders: OrderID=10591   OrderDate=7/7/1997      Total=812.50
  Orders: OrderID=10602   OrderDate=7/17/1997     Total=48.75
  Orders: OrderID=10688   OrderDate=10/1/1997     Total=3160.60
  Orders: OrderID=10744   OrderDate=11/17/1997    Total=736.00
  Orders: OrderID=10769   OrderDate=12/8/1997     Total=1684.28
  Orders: OrderID=10921   OrderDate=3/3/1998      Total=1936.00
  Orders: OrderID=10946   OrderDate=3/12/1998     Total=1407.50
  Orders: OrderID=10994   OrderDate=4/2/1998      Total=940.50
CustomerID=VICTE        CompanyName=Victuailles en stock        Address=2, rue du Commerce      City=Lyon       Region=null     PostalCode=69004        Country=France  Phone=78.32.54.86       Fax=78.32.54.87         Orders=...
  Orders: OrderID=10251   OrderDate=7/8/1996      Total=654.06
  Orders: OrderID=10334   OrderDate=10/21/1996    Total=144.80
  Orders: OrderID=10450   OrderDate=2/19/1997     Total=425.12
  Orders: OrderID=10459   OrderDate=2/27/1997     Total=1659.20
  Orders: OrderID=10478   OrderDate=3/18/1997     Total=471.20
  Orders: OrderID=10546   OrderDate=5/23/1997     Total=2812.00
  Orders: OrderID=10806   OrderDate=12/31/1997    Total=439.60
  Orders: OrderID=10814   OrderDate=1/5/1998      Total=1788.45
  Orders: OrderID=10843   OrderDate=1/21/1998     Total=159.00
  Orders: OrderID=10850   OrderDate=1/23/1998     Total=629.00
CustomerID=VINET        CompanyName=Vins et alcools Chevalier   Address=59 rue de l'Abbaye      City=Reims      Region=null     PostalCode=51100        Country=France  Phone=26.47.15.10       Fax=26.47.15.11         Orders=...
  Orders: OrderID=10274   OrderDate=8/6/1996      Total=538.60
  Orders: OrderID=10295   OrderDate=9/2/1996      Total=121.60
  Orders: OrderID=10737   OrderDate=11/11/1997    Total=139.80
  Orders: OrderID=10739   OrderDate=11/12/1997    Total=240.00
CustomerID=WANDK        CompanyName=Die Wandernde Kuh   Address=Adenauerallee 900       City=Stuttgart  Region=null     PostalCode=70563        Country=Germany         Phone=0711-020361       Fax=0711-035428         Orders=...
  Orders: OrderID=10301   OrderDate=9/9/1996      Total=755.00
  Orders: OrderID=10312   OrderDate=9/23/1996     Total=1614.80
  Orders: OrderID=10348   OrderDate=11/7/1996     Total=363.60
  Orders: OrderID=10356   OrderDate=11/18/1996    Total=1106.40
  Orders: OrderID=10513   OrderDate=4/22/1997     Total=1942.00
  Orders: OrderID=10632   OrderDate=8/14/1997     Total=589.00
  Orders: OrderID=10640   OrderDate=8/21/1997     Total=708.75
  Orders: OrderID=10651   OrderDate=9/1/1997      Total=397.80
  Orders: OrderID=10668   OrderDate=9/15/1997     Total=625.28
  Orders: OrderID=11046   OrderDate=4/23/1998     Total=1485.80
CustomerID=WARTH        CompanyName=Wartian Herkku      Address=Torikatu 38     City=Oulu       Region=null     PostalCode=90110        Country=Finland         Phone=981-443655        Fax=981-443655  Orders=...
  Orders: OrderID=10266   OrderDate=7/26/1996     Total=346.56
  Orders: OrderID=10270   OrderDate=8/1/1996      Total=1376.00
  Orders: OrderID=10320   OrderDate=10/3/1996     Total=516.00
  Orders: OrderID=10333   OrderDate=10/18/1996    Total=877.20
  Orders: OrderID=10412   OrderDate=1/13/1997     Total=334.80
  Orders: OrderID=10416   OrderDate=1/16/1997     Total=720.00
  Orders: OrderID=10437   OrderDate=2/5/1997      Total=393.00
  Orders: OrderID=10455   OrderDate=2/24/1997     Total=2684.00
  Orders: OrderID=10526   OrderDate=5/5/1997      Total=1151.40
  Orders: OrderID=10553   OrderDate=5/30/1997     Total=1546.30
  Orders: OrderID=10583   OrderDate=6/30/1997     Total=2237.50
  Orders: OrderID=10636   OrderDate=8/19/1997     Total=629.50
  Orders: OrderID=10750   OrderDate=11/21/1997    Total=1590.56
  Orders: OrderID=10781   OrderDate=12/17/1997    Total=975.88
  Orders: OrderID=11025   OrderDate=4/15/1998     Total=270.00
CustomerID=WELLI        CompanyName=Wellington Importadora      Address=Rua do Mercado, 12      City=Resende    Region=SP       PostalCode=08737-363    Country=Brazil  Phone=(14) 555-8122     Fax=null        Orders=...
  Orders: OrderID=10256   OrderDate=7/15/1996     Total=517.80
  Orders: OrderID=10420   OrderDate=1/21/1997     Total=1707.84
  Orders: OrderID=10585   OrderDate=7/1/1997      Total=142.50
  Orders: OrderID=10644   OrderDate=8/25/1997     Total=1371.80
  Orders: OrderID=10803   OrderDate=12/30/1997    Total=1193.01
  Orders: OrderID=10809   OrderDate=1/1/1998      Total=140.00
  Orders: OrderID=10900   OrderDate=2/20/1998     Total=33.75
  Orders: OrderID=10905   OrderDate=2/24/1998     Total=342.00
  Orders: OrderID=10935   OrderDate=3/9/1998      Total=619.50
CustomerID=WHITC        CompanyName=White Clover Markets        Address=305 - 14th Ave. S. Suite 3B     City=Seattle    Region=WA       PostalCode=98128        Country=USA     Phone=(206) 555-4112    Fax=(206) 555-4115      Orders=...
  Orders: OrderID=10269   OrderDate=7/31/1996     Total=642.20
  Orders: OrderID=10344   OrderDate=11/1/1996     Total=2296.00
  Orders: OrderID=10469   OrderDate=3/10/1997     Total=956.68
  Orders: OrderID=10483   OrderDate=3/24/1997     Total=668.80
  Orders: OrderID=10504   OrderDate=4/11/1997     Total=1388.50
  Orders: OrderID=10596   OrderDate=7/11/1997     Total=1180.88
  Orders: OrderID=10693   OrderDate=10/6/1997     Total=2071.20
  Orders: OrderID=10696   OrderDate=10/8/1997     Total=996.00
  Orders: OrderID=10723   OrderDate=10/30/1997    Total=468.45
  Orders: OrderID=10740   OrderDate=11/13/1997    Total=1416.00
  Orders: OrderID=10861   OrderDate=1/30/1998     Total=3523.40
  Orders: OrderID=10904   OrderDate=2/24/1998     Total=1924.25
  Orders: OrderID=11032   OrderDate=4/17/1998     Total=8902.50
  Orders: OrderID=11066   OrderDate=5/1/1998      Total=928.75
CustomerID=WILMK        CompanyName=Wilman Kala         Address=Keskuskatu 45   City=Helsinki   Region=null     PostalCode=21240        Country=Finland         Phone=90-224 8858       Fax=90-224 8858         Orders=...
  Orders: OrderID=10248   OrderDate=7/4/1996      Total=440.00
  Orders: OrderID=10615   OrderDate=7/30/1997     Total=120.00
  Orders: OrderID=10673   OrderDate=9/18/1997     Total=412.35
  Orders: OrderID=10695   OrderDate=10/7/1997     Total=642.00
  Orders: OrderID=10873   OrderDate=2/6/1998      Total=336.80
  Orders: OrderID=10879   OrderDate=2/10/1998     Total=611.30
  Orders: OrderID=10910   OrderDate=2/26/1998     Total=452.90
  Orders: OrderID=11005   OrderDate=4/7/1998      Total=586.00
CustomerID=WOLZA        CompanyName=Wolski  Zajazd      Address=ul. Filtrowa 68         City=Warszawa   Region=null     PostalCode=01-012       Country=Poland  Phone=(26) 642-7012     Fax=(26) 642-7012       Orders=...
  Orders: OrderID=10374   OrderDate=12/5/1996     Total=459.00
  Orders: OrderID=10611   OrderDate=7/25/1997     Total=808.00
  Orders: OrderID=10792   OrderDate=12/23/1997    Total=399.85
  Orders: OrderID=10870   OrderDate=2/4/1998      Total=160.00
  Orders: OrderID=10906   OrderDate=2/25/1998     Total=427.50
  Orders: OrderID=10998   OrderDate=4/3/1998      Total=686.00
  Orders: OrderID=11044   OrderDate=4/23/1998     Total=591.60

ProductID=1     ProductName=Chai        Category=Beverages      UnitPrice=18.0000       UnitsInStock=39
ProductID=2     ProductName=Chang       Category=Beverages      UnitPrice=19.0000       UnitsInStock=17
ProductID=3     ProductName=Aniseed Syrup       Category=Condiments     UnitPrice=10.0000       UnitsInStock=13
ProductID=4     ProductName=Chef Anton's Cajun Seasoning        Category=Condiments     UnitPrice=22.0000       UnitsInStock=53
ProductID=5     ProductName=Chef Anton's Gumbo Mix      Category=Condiments     UnitPrice=21.3500       UnitsInStock=0
ProductID=6     ProductName=Grandma's Boysenberry Spread        Category=Condiments     UnitPrice=25.0000       UnitsInStock=120
ProductID=7     ProductName=Uncle Bob's Organic Dried Pears     Category=Produce        UnitPrice=30.0000       UnitsInStock=15
ProductID=8     ProductName=Northwoods Cranberry Sauce  Category=Condiments     UnitPrice=40.0000       UnitsInStock=6
ProductID=9     ProductName=Mishi Kobe Niku     Category=Meat/Poultry   UnitPrice=97.0000       UnitsInStock=29
ProductID=10    ProductName=Ikura       Category=Seafood        UnitPrice=31.0000       UnitsInStock=31
ProductID=11    ProductName=Queso Cabrales      Category=Dairy Products         UnitPrice=21.0000       UnitsInStock=22
ProductID=12    ProductName=Queso Manchego La Pastora   Category=Dairy Products         UnitPrice=38.0000       UnitsInStock=86
ProductID=13    ProductName=Konbu       Category=Seafood        UnitPrice=6.0000        UnitsInStock=24
ProductID=14    ProductName=Tofu        Category=Produce        UnitPrice=23.2500       UnitsInStock=35
ProductID=15    ProductName=Genen Shouyu        Category=Condiments     UnitPrice=15.5000       UnitsInStock=39
ProductID=16    ProductName=Pavlova     Category=Confections    UnitPrice=17.4500       UnitsInStock=29
ProductID=17    ProductName=Alice Mutton        Category=Meat/Poultry   UnitPrice=39.0000       UnitsInStock=0
ProductID=18    ProductName=Carnarvon Tigers    Category=Seafood        UnitPrice=62.5000       UnitsInStock=42
ProductID=19    ProductName=Teatime Chocolate Biscuits  Category=Confections    UnitPrice=9.2000        UnitsInStock=25
ProductID=20    ProductName=Sir Rodney's Marmalade      Category=Confections    UnitPrice=81.0000       UnitsInStock=40
ProductID=21    ProductName=Sir Rodney's Scones         Category=Confections    UnitPrice=10.0000       UnitsInStock=3
ProductID=22    ProductName=Gustaf's Knäckebröd         Category=Grains/Cereals         UnitPrice=21.0000       UnitsInStock=104
ProductID=23    ProductName=Tunnbröd    Category=Grains/Cereals         UnitPrice=9.0000        UnitsInStock=61
ProductID=24    ProductName=Guaraná Fantástica  Category=Beverages      UnitPrice=4.5000        UnitsInStock=20
ProductID=25    ProductName=NuNuCa Nuß-Nougat-Creme     Category=Confections    UnitPrice=14.0000       UnitsInStock=76
ProductID=26    ProductName=Gumbär Gummibärchen         Category=Confections    UnitPrice=31.2300       UnitsInStock=15
ProductID=27    ProductName=Schoggi Schokolade  Category=Confections    UnitPrice=43.9000       UnitsInStock=49
ProductID=28    ProductName=Rössle Sauerkraut   Category=Produce        UnitPrice=45.6000       UnitsInStock=26
ProductID=29    ProductName=Thüringer Rostbratwurst     Category=Meat/Poultry   UnitPrice=123.7900      UnitsInStock=0
ProductID=30    ProductName=Nord-Ost Matjeshering       Category=Seafood        UnitPrice=25.8900       UnitsInStock=10
ProductID=31    ProductName=Gorgonzola Telino   Category=Dairy Products         UnitPrice=12.5000       UnitsInStock=0
ProductID=32    ProductName=Mascarpone Fabioli  Category=Dairy Products         UnitPrice=32.0000       UnitsInStock=9
ProductID=33    ProductName=Geitost     Category=Dairy Products         UnitPrice=2.5000        UnitsInStock=112
ProductID=34    ProductName=Sasquatch Ale       Category=Beverages      UnitPrice=14.0000       UnitsInStock=111
ProductID=35    ProductName=Steeleye Stout      Category=Beverages      UnitPrice=18.0000       UnitsInStock=20
ProductID=36    ProductName=Inlagd Sill         Category=Seafood        UnitPrice=19.0000       UnitsInStock=112
ProductID=37    ProductName=Gravad lax  Category=Seafood        UnitPrice=26.0000       UnitsInStock=11
ProductID=38    ProductName=Côte de Blaye       Category=Beverages      UnitPrice=263.5000      UnitsInStock=17
ProductID=39    ProductName=Chartreuse verte    Category=Beverages      UnitPrice=18.0000       UnitsInStock=69
ProductID=40    ProductName=Boston Crab Meat    Category=Seafood        UnitPrice=18.4000       UnitsInStock=123
ProductID=41    ProductName=Jack's New England Clam Chowder     Category=Seafood        UnitPrice=9.6500        UnitsInStock=85
ProductID=42    ProductName=Singaporean Hokkien Fried Mee       Category=Grains/Cereals         UnitPrice=14.0000       UnitsInStock=26
ProductID=43    ProductName=Ipoh Coffee         Category=Beverages      UnitPrice=46.0000       UnitsInStock=17
ProductID=44    ProductName=Gula Malacca        Category=Condiments     UnitPrice=19.4500       UnitsInStock=27
ProductID=45    ProductName=Rogede sild         Category=Seafood        UnitPrice=9.5000        UnitsInStock=5
ProductID=46    ProductName=Spegesild   Category=Seafood        UnitPrice=12.0000       UnitsInStock=95
ProductID=47    ProductName=Zaanse koeken       Category=Confections    UnitPrice=9.5000        UnitsInStock=36
ProductID=48    ProductName=Chocolade   Category=Confections    UnitPrice=12.7500       UnitsInStock=15
ProductID=49    ProductName=Maxilaku    Category=Confections    UnitPrice=20.0000       UnitsInStock=10
ProductID=50    ProductName=Valkoinen suklaa    Category=Confections    UnitPrice=16.2500       UnitsInStock=65
ProductID=51    ProductName=Manjimup Dried Apples       Category=Produce        UnitPrice=53.0000       UnitsInStock=20
ProductID=52    ProductName=Filo Mix    Category=Grains/Cereals         UnitPrice=7.0000        UnitsInStock=38
ProductID=53    ProductName=Perth Pasties       Category=Meat/Poultry   UnitPrice=32.8000       UnitsInStock=0
ProductID=54    ProductName=Tourtière   Category=Meat/Poultry   UnitPrice=7.4500        UnitsInStock=21
ProductID=55    ProductName=Pâté chinois        Category=Meat/Poultry   UnitPrice=24.0000       UnitsInStock=115
ProductID=56    ProductName=Gnocchi di nonna Alice      Category=Grains/Cereals         UnitPrice=38.0000       UnitsInStock=21
ProductID=57    ProductName=Ravioli Angelo      Category=Grains/Cereals         UnitPrice=19.5000       UnitsInStock=36
ProductID=58    ProductName=Escargots de Bourgogne      Category=Seafood        UnitPrice=13.2500       UnitsInStock=62
ProductID=59    ProductName=Raclette Courdavault        Category=Dairy Products         UnitPrice=55.0000       UnitsInStock=79
ProductID=60    ProductName=Camembert Pierrot   Category=Dairy Products         UnitPrice=34.0000       UnitsInStock=19
ProductID=61    ProductName=Sirop d'érable      Category=Condiments     UnitPrice=28.5000       UnitsInStock=113
ProductID=62    ProductName=Tarte au sucre      Category=Confections    UnitPrice=49.3000       UnitsInStock=17
ProductID=63    ProductName=Vegie-spread        Category=Condiments     UnitPrice=43.9000       UnitsInStock=24
ProductID=64    ProductName=Wimmers gute Semmelknödel   Category=Grains/Cereals         UnitPrice=33.2500       UnitsInStock=22
ProductID=65    ProductName=Louisiana Fiery Hot Pepper Sauce    Category=Condiments     UnitPrice=21.0500       UnitsInStock=76
ProductID=66    ProductName=Louisiana Hot Spiced Okra   Category=Condiments     UnitPrice=17.0000       UnitsInStock=4
ProductID=67    ProductName=Laughing Lumberjack Lager   Category=Beverages      UnitPrice=14.0000       UnitsInStock=52
ProductID=68    ProductName=Scottish Longbreads         Category=Confections    UnitPrice=12.5000       UnitsInStock=6
ProductID=69    ProductName=Gudbrandsdalsost    Category=Dairy Products         UnitPrice=36.0000       UnitsInStock=26
ProductID=70    ProductName=Outback Lager       Category=Beverages      UnitPrice=15.0000       UnitsInStock=15
ProductID=71    ProductName=Flotemysost         Category=Dairy Products         UnitPrice=21.5000       UnitsInStock=26
ProductID=72    ProductName=Mozzarella di Giovanni      Category=Dairy Products         UnitPrice=34.8000       UnitsInStock=14
ProductID=73    ProductName=Röd Kaviar  Category=Seafood        UnitPrice=15.0000       UnitsInStock=101
ProductID=74    ProductName=Longlife Tofu       Category=Produce        UnitPrice=10.0000       UnitsInStock=4
ProductID=75    ProductName=Rhönbräu Klosterbier        Category=Beverages      UnitPrice=7.7500        UnitsInStock=125
ProductID=76    ProductName=Lakkalikööri        Category=Beverages      UnitPrice=18.0000       UnitsInStock=57
ProductID=77    ProductName=Original Frankfurter grüne Soße     Category=Condiments     UnitPrice=13.0000       UnitsInStock=32
```
