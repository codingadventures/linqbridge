# Operators Implementation Status #

![http://chart.apis.google.com/chart?chs=225x125&cht=gom&chd=t:100#foo.png](http://chart.apis.google.com/chart?chs=225x125&cht=gom&chd=t:100#foo.png)

All of the following standard query operators are implemented and supported:

## Restriction operators ##
  * [Where](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.where.aspx)
## Projection operators ##
  * [Select](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.select.aspx)
  * [SelectMany](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.selectmany.aspx)
## Partitioning operators ##
  * [Take](http://msdn.microsoft.com/en-us/library/bb503062.aspx)
  * [Skip](http://msdn.microsoft.com/en-us/library/bb358985.aspx)
  * [TakeWhile](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.takewhile.aspx)
  * [SkipWhile](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.skipwhile.aspx)
## Join operators ##
  * [Join](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.join.aspx)
  * [GroupJoin](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.groupjoin.aspx)
## Concatenation operator ##
  * [Concat](http://msdn.microsoft.com/en-us/library/bb302894.aspx)
## Ordering operators ##
  * [OrderBy](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.orderby.aspx)/[ThenBy](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.thenby.aspx)
  * [Reverse](http://msdn.microsoft.com/en-us/library/bb358497.aspx)
## Grouping operators ##
  * [GroupBy](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.groupby.aspx)
## Set operators ##
  * [Distinct](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.distinct.aspx)
  * [Union](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.union.aspx)
  * [Intersect](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.intersect.aspx)
  * [Except](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.except.aspx)
## Conversion operators ##
  * [ToArray](http://msdn.microsoft.com/en-us/library/bb298736.aspx)
  * [ToList](http://msdn.microsoft.com/en-us/library/bb342261.aspx)
  * [ToDictionary](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.todictionary.aspx)
  * [ToLookup](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.tolookup.aspx)
  * [OfType](http://msdn.microsoft.com/en-us/library/bb360913.aspx)
  * [Cast](http://msdn.microsoft.com/en-us/library/bb341406.aspx)
## Equality operator ##
  * [SequenceEqual](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.sequenceequal.aspx)
## Element operators ##
  * [First](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.first.aspx)
  * [FirstOrDefault](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.firstordefault.aspx)
  * [Last](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.last.aspx)
  * [LastOrDefault](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.lastordefault.aspx)
  * [Single](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.single.aspx)
  * [SingleOrDefault](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.singleordefault.aspx)
  * [ElementAt](http://msdn.microsoft.com/en-us/library/bb299233.aspx)
  * [ElementAtOrDefault](http://msdn.microsoft.com/en-us/library/bb494386.aspx)
  * [DefaultIfEmpty](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.defaultifempty.aspx)
## Generation operators ##
  * [Range](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.range.aspx)
  * [Repeat](http://msdn.microsoft.com/en-us/library/bb348899.aspx)
  * [Empty](http://msdn.microsoft.com/en-us/library/bb341042.aspx)
## Quantifiers ##
  * [Any](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.any.aspx)
  * [All](http://msdn.microsoft.com/en-us/library/bb548541.aspx)
  * [Contains](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.contains.aspx)
## Aggregate operators ##
  * [Count](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.count.aspx)
  * [LongCount](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.longcount.aspx)
  * [Sum](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.sum.aspx)
  * [Min](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.min.aspx)
  * [Max](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.max.aspx)
  * [Average](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.average.aspx)
  * [Aggregate](http://msdn.microsoft.com/en-us/library/system.linq.enumerable.aggregate.aspx)
## Other ##
  * [AsEnumerable](http://msdn.microsoft.com/en-us/library/bb335435.aspx)