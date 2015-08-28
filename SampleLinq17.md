## Projection Operators: SelectMany - from Assignment ##

This sample uses a compound from clause to select all orders where the order total is greater than 2000.00 and uses from assignment to avoid requesting the total twice.

### Code ###

```
public void Linq17() {
    List<Customer> customers = GetCustomerList();

    var orders =
        from c in customers
        from o in c.Orders
        where o.Total >= 2000.0M
        select new {c.CustomerID, o.OrderID, o.Total};

    ObjectDumper.Write(orders);
}

```

### Output ###

```
CustomerID=ANTON        OrderID=10573   Total=2082.00
CustomerID=AROUT        OrderID=10558   Total=2142.90
CustomerID=AROUT        OrderID=10953   Total=4441.25
CustomerID=BERGS        OrderID=10384   Total=2222.40
CustomerID=BERGS        OrderID=10524   Total=3192.65
CustomerID=BERGS        OrderID=10672   Total=3815.25
CustomerID=BERGS        OrderID=10857   Total=2048.21
CustomerID=BLONP        OrderID=10360   Total=7390.20
CustomerID=BOLID        OrderID=10801   Total=3026.85
CustomerID=BONAP        OrderID=10340   Total=2436.18
CustomerID=BONAP        OrderID=10511   Total=2550.00
CustomerID=BOTTM        OrderID=10742   Total=3118.00
CustomerID=BOTTM        OrderID=10949   Total=4422.00
CustomerID=CHOPS        OrderID=10519   Total=2314.20
CustomerID=CHOPS        OrderID=10746   Total=2311.70
CustomerID=COMMI        OrderID=10290   Total=2169.00
CustomerID=EASTC        OrderID=10400   Total=3063.00
CustomerID=EASTC        OrderID=10987   Total=2772.00
CustomerID=EASTC        OrderID=11056   Total=3740.00
CustomerID=ERNSH        OrderID=10351   Total=5398.72
CustomerID=ERNSH        OrderID=10382   Total=2900.00
CustomerID=ERNSH        OrderID=10390   Total=2090.88
CustomerID=ERNSH        OrderID=10402   Total=2713.50
CustomerID=ERNSH        OrderID=10430   Total=4899.20
CustomerID=ERNSH        OrderID=10514   Total=8623.45
CustomerID=ERNSH        OrderID=10595   Total=4725.00
CustomerID=ERNSH        OrderID=10633   Total=5510.59
CustomerID=ERNSH        OrderID=10698   Total=3436.44
CustomerID=ERNSH        OrderID=10764   Total=2286.00
CustomerID=ERNSH        OrderID=10773   Total=2030.40
CustomerID=ERNSH        OrderID=10776   Total=6635.28
CustomerID=ERNSH        OrderID=10795   Total=2158.00
CustomerID=ERNSH        OrderID=10836   Total=4705.50
CustomerID=ERNSH        OrderID=10854   Total=2966.50
CustomerID=ERNSH        OrderID=10895   Total=6379.40
CustomerID=ERNSH        OrderID=10979   Total=4813.50
CustomerID=ERNSH        OrderID=10990   Total=4288.85
CustomerID=ERNSH        OrderID=11008   Total=4680.90
CustomerID=ERNSH        OrderID=11017   Total=6750.00
CustomerID=ERNSH        OrderID=11072   Total=5218.00
CustomerID=FOLIG        OrderID=10634   Total=4985.50
CustomerID=FOLIG        OrderID=10789   Total=3687.00
CustomerID=FOLKO        OrderID=10533   Total=2222.20
CustomerID=FOLKO        OrderID=10561   Total=2844.50
CustomerID=FOLKO        OrderID=10703   Total=2545.00
CustomerID=FOLKO        OrderID=10762   Total=4337.00
CustomerID=FOLKO        OrderID=10977   Total=2233.00
CustomerID=FOLKO        OrderID=10993   Total=4895.44
CustomerID=FOLKO        OrderID=11001   Total=2769.00
CustomerID=FRANK        OrderID=10267   Total=3536.60
CustomerID=FRANK        OrderID=10337   Total=2467.00
CustomerID=FRANK        OrderID=10670   Total=2301.75
CustomerID=FRANK        OrderID=11012   Total=2825.30
CustomerID=GODOS        OrderID=10629   Total=2775.05
CustomerID=GODOS        OrderID=10872   Total=2058.46
CustomerID=GODOS        OrderID=10948   Total=2362.25
CustomerID=GOURL        OrderID=10709   Total=3424.00
CustomerID=GREAL        OrderID=10616   Total=4807.00
CustomerID=GREAL        OrderID=10816   Total=8446.45
CustomerID=HANAR        OrderID=10886   Total=3127.50
CustomerID=HANAR        OrderID=10981   Total=15810.00
CustomerID=HILAA        OrderID=10395   Total=2122.92
CustomerID=HILAA        OrderID=10490   Total=3163.20
CustomerID=HILAA        OrderID=10601   Total=2285.00
CustomerID=HILAA        OrderID=10641   Total=2054.00
CustomerID=HILAA        OrderID=10796   Total=2341.36
CustomerID=HUNGO        OrderID=10298   Total=2645.00
CustomerID=HUNGO        OrderID=10335   Total=2036.16
CustomerID=HUNGO        OrderID=10503   Total=2048.50
CustomerID=HUNGO        OrderID=10516   Total=2381.05
CustomerID=HUNGO        OrderID=10567   Total=2519.00
CustomerID=HUNGO        OrderID=10687   Total=4960.90
CustomerID=HUNGO        OrderID=10701   Total=2864.50
CustomerID=HUNGO        OrderID=10897   Total=10835.24
CustomerID=HUNGO        OrderID=10912   Total=6200.55
CustomerID=HUNGO        OrderID=10985   Total=2023.38
CustomerID=KOENE        OrderID=10718   Total=3463.00
CustomerID=KOENE        OrderID=10817   Total=10952.84
CustomerID=KOENE        OrderID=10893   Total=5502.11
CustomerID=KOENE        OrderID=11028   Total=2160.00
CustomerID=LAMAI        OrderID=10413   Total=2123.20
CustomerID=LAMAI        OrderID=10787   Total=2622.76
CustomerID=LEHMS        OrderID=10522   Total=2318.24
CustomerID=LEHMS        OrderID=10772   Total=3603.22
CustomerID=LILAS        OrderID=10823   Total=2826.00
CustomerID=LINOD        OrderID=10638   Total=2720.05
CustomerID=LINOD        OrderID=11039   Total=3090.00
CustomerID=MAISD        OrderID=10760   Total=2917.00
CustomerID=MAISD        OrderID=10892   Total=2090.00
CustomerID=MEREP        OrderID=10339   Total=3354.00
CustomerID=MEREP        OrderID=10424   Total=9194.56
CustomerID=MEREP        OrderID=10570   Total=2465.25
CustomerID=MEREP        OrderID=10605   Total=4109.70
CustomerID=MEREP        OrderID=10618   Total=2697.50
CustomerID=MORGK        OrderID=10575   Total=2147.40
CustomerID=OCEAN        OrderID=10986   Total=2220.00
CustomerID=OLDWO        OrderID=10305   Total=3741.30
CustomerID=OLDWO        OrderID=10855   Total=2227.89
CustomerID=OTTIK        OrderID=10766   Total=2310.00
CustomerID=PICCO        OrderID=10353   Total=8593.28
CustomerID=PICCO        OrderID=10530   Total=4180.00
CustomerID=PICCO        OrderID=11053   Total=3055.00
CustomerID=PRINI        OrderID=11007   Total=2633.90
CustomerID=QUEEN        OrderID=10372   Total=9210.90
CustomerID=QUEEN        OrderID=10637   Total=2761.94
CustomerID=QUEEN        OrderID=11068   Total=2027.08
CustomerID=QUICK        OrderID=10273   Total=2037.28
CustomerID=QUICK        OrderID=10286   Total=3016.00
CustomerID=QUICK        OrderID=10345   Total=2924.80
CustomerID=QUICK        OrderID=10361   Total=2046.24
CustomerID=QUICK        OrderID=10451   Total=3849.66
CustomerID=QUICK        OrderID=10515   Total=9921.30
CustomerID=QUICK        OrderID=10540   Total=10191.70
CustomerID=QUICK        OrderID=10549   Total=3554.28
CustomerID=QUICK        OrderID=10588   Total=3120.00
CustomerID=QUICK        OrderID=10658   Total=4464.60
CustomerID=QUICK        OrderID=10691   Total=10164.80
CustomerID=QUICK        OrderID=10694   Total=4825.00
CustomerID=QUICK        OrderID=10745   Total=4529.80
CustomerID=QUICK        OrderID=10845   Total=3812.70
CustomerID=QUICK        OrderID=10865   Total=16387.50
CustomerID=QUICK        OrderID=10938   Total=2731.88
CustomerID=QUICK        OrderID=10962   Total=3584.00
CustomerID=QUICK        OrderID=10991   Total=2296.00
CustomerID=QUICK        OrderID=11021   Total=6306.24
CustomerID=RATTC        OrderID=10314   Total=2094.30
CustomerID=RATTC        OrderID=10316   Total=2835.00
CustomerID=RATTC        OrderID=10401   Total=3868.60
CustomerID=RATTC        OrderID=10479   Total=10495.60
CustomerID=RATTC        OrderID=10598   Total=2388.50
CustomerID=RATTC        OrderID=10852   Total=2984.00
CustomerID=RATTC        OrderID=10889   Total=11380.00
CustomerID=RATTC        OrderID=10988   Total=3574.80
CustomerID=RICAR        OrderID=10851   Total=2603.00
CustomerID=RICSU        OrderID=10255   Total=2490.50
CustomerID=RICSU        OrderID=10419   Total=2097.60
CustomerID=RICSU        OrderID=10666   Total=4666.94
CustomerID=RICSU        OrderID=11033   Total=3232.80
CustomerID=SANTG        OrderID=10831   Total=2684.40
CustomerID=SAVEA        OrderID=10324   Total=5275.72
CustomerID=SAVEA        OrderID=10393   Total=2556.95
CustomerID=SAVEA        OrderID=10398   Total=2505.60
CustomerID=SAVEA        OrderID=10440   Total=4924.14
CustomerID=SAVEA        OrderID=10452   Total=2018.50
CustomerID=SAVEA        OrderID=10510   Total=4707.54
CustomerID=SAVEA        OrderID=10555   Total=2944.40
CustomerID=SAVEA        OrderID=10607   Total=6475.40
CustomerID=SAVEA        OrderID=10612   Total=6375.00
CustomerID=SAVEA        OrderID=10657   Total=4371.60
CustomerID=SAVEA        OrderID=10678   Total=5256.50
CustomerID=SAVEA        OrderID=10711   Total=4451.70
CustomerID=SAVEA        OrderID=10713   Total=2827.90
CustomerID=SAVEA        OrderID=10714   Total=2205.75
CustomerID=SAVEA        OrderID=10748   Total=2196.00
CustomerID=SAVEA        OrderID=10757   Total=3082.00
CustomerID=SAVEA        OrderID=10847   Total=4931.92
CustomerID=SAVEA        OrderID=10894   Total=2753.10
CustomerID=SAVEA        OrderID=10941   Total=4011.75
CustomerID=SAVEA        OrderID=11030   Total=12615.05
CustomerID=SAVEA        OrderID=11031   Total=2393.50
CustomerID=SAVEA        OrderID=11064   Total=4330.40
CustomerID=SEVES        OrderID=10359   Total=3471.68
CustomerID=SEVES        OrderID=10523   Total=2444.31
CustomerID=SEVES        OrderID=10804   Total=2278.40
CustomerID=SIMOB        OrderID=10417   Total=11188.40
CustomerID=SIMOB        OrderID=10802   Total=2942.81
CustomerID=SPECD        OrderID=10964   Total=2052.50
CustomerID=SPLIR        OrderID=10329   Total=4578.43
CustomerID=SPLIR        OrderID=10369   Total=2390.40
CustomerID=SUPRD        OrderID=10252   Total=3597.90
CustomerID=SUPRD        OrderID=10302   Total=2708.80
CustomerID=SUPRD        OrderID=10458   Total=3891.00
CustomerID=SUPRD        OrderID=10841   Total=4581.00
CustomerID=SUPRD        OrderID=10930   Total=2255.50
CustomerID=THEBI        OrderID=10805   Total=2775.00
CustomerID=TORTU        OrderID=10518   Total=4150.05
CustomerID=VAFFE        OrderID=10465   Total=2518.00
CustomerID=VAFFE        OrderID=10688   Total=3160.60
CustomerID=VICTE        OrderID=10546   Total=2812.00
CustomerID=WARTH        OrderID=10455   Total=2684.00
CustomerID=WARTH        OrderID=10583   Total=2237.50
CustomerID=WHITC        OrderID=10344   Total=2296.00
CustomerID=WHITC        OrderID=10693   Total=2071.20
CustomerID=WHITC        OrderID=10861   Total=3523.40
CustomerID=WHITC        OrderID=11032   Total=8902.50
```
