## Index ##

| **Sample** | **Category** | **Title** | **Description** |
|:-----------|:-------------|:----------|:----------------|
| SampleLinq93 | Aggregate Operators | Aggregate - Seed | This sample uses Aggregate to create a running account balance that subtracts each withdrawal from the initial balance of 100, as long as the balance never drops below 0. |
| SampleLinq92 | Aggregate Operators | Aggregate - Simple | This sample uses Aggregate to create a running product on the array that calculates the total product of all elements. |
| SampleLinq91 | Aggregate Operators | Average - Grouped | This sample uses Average to get the average price of each category's products. |
| SampleLinq90 | Aggregate Operators | Average - Projection | This sample uses Average to get the average length of the words in the array. |
| SampleLinq89 | Aggregate Operators | Average - Simple | This sample uses Average to get the average of all numbers in an array. |
| SampleLinq74 | Aggregate Operators | Count - Conditional | This sample uses Count to get the number of odd ints in the array. |
| SampleLinq77 | Aggregate Operators | Count - Grouped | This sample uses Count to return a list of categories and how many products each has. |
| SampleLinq76 | Aggregate Operators | Count - Nested | This sample uses Count to return a list of customers and how many orders each has. |
| SampleLinq73 | Aggregate Operators | Count - Simple | This sample uses Count to get the number of unique factors of 300. |
| SampleLinq88 | Aggregate Operators | Max - Elements | This sample uses Max to get the products with the most expensive price in each category. |
| SampleLinq87 | Aggregate Operators | Max - Grouped | This sample uses Max to get the most expensive price among each category's products. |
| SampleLinq86 | Aggregate Operators | Max - Projection | This sample uses Max to get the length of the longest word in an array. |
| SampleLinq85 | Aggregate Operators | Max - Simple | This sample uses Max to get the highest number in an array. |
| SampleLinq84 | Aggregate Operators | Min - Elements | This sample uses Min to get the products with the cheapest price in each category. |
| SampleLinq83 | Aggregate Operators | Min - Grouped | This sample uses Min to get the cheapest price among each category's products. |
| SampleLinq82 | Aggregate Operators | Min - Projection | This sample uses Min to get the length of the shortest word in an array. |
| SampleLinq81 | Aggregate Operators | Min - Simple | This sample uses Min to get the lowest number in an array. |
| SampleLinq80 | Aggregate Operators | Sum - Grouped | This sample uses Sum to get the total units in stock for each product category. |
| SampleLinq79 | Aggregate Operators | Sum - Projection | This sample uses Sum to get the total number of characters of all words in the array. |
| SampleLinq78 | Aggregate Operators | Sum - Simple | This sample uses Sum to get the total of the numbers in an array. |
| SampleLinq57 | Conversion Operators | OfType    | This sample uses OfType to return only the elements of the array that are of type double. |
| SampleLinq54 | Conversion Operators | ToArray   | This sample uses ToArray to immediately evaluate a sequence into an array. |
| SampleLinq56 | Conversion Operators | ToDictionary | This sample uses ToDictionary to immediately evaluate a sequence and a related key expression into a dictionary. |
| SampleLinq55 | Conversion Operators | ToList    | This sample uses ToList to immediately evaluate a sequence into a List

&lt;T&gt;

. |
| SampleLinq64 | Element Operators | ElementAt | This sample uses ElementAt to retrieve the second number greater than 5 from an array. |
| SampleLinq59 | Element Operators | First - Condition | This sample uses First to find the first element in the array that starts with 'o'. |
| SampleLinq58 | Element Operators | First - Simple | This sample uses First to return the first matching element as a Product, instead of as a sequence containing a Product. |
| SampleLinq62 | Element Operators | FirstOrDefault - Condition | This sample uses FirstOrDefault to return the first product whose ProductID is 789 as a single Product object, unless there is no match, in which case null is returned. |
| SampleLinq61 | Element Operators | FirstOrDefault - Simple | This sample uses FirstOrDefault to try to return the first element of the sequence, unless there are no elements, in which case the default value for that type is returned. |
| SampleLinq65 | Generation Operators | Range     | This sample uses Range to generate a sequence of numbers from 100 to 149 that is used to find which numbers in that range are odd and even. |
| SampleLinq66 | Generation Operators | Repeat    | This sample uses Repeat to generate a sequence that contains the number 7 ten times. |
| SampleLinq44 | Grouping Operators | GroupBy - Comparer | This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other. |
| SampleLinq45 | Grouping Operators | GroupBy - Comparer, Mapped | This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other, and then converts the results to uppercase. |
| SampleLinq43 | Grouping Operators | GroupBy - Nested | This sample uses group by to partition a list of each customer's orders, first by year, and then by month. |
| SampleLinq40 | Grouping Operators | GroupBy - Simple 1 | This sample uses group by to partition a list of numbers by their remainder when divided by 5. |
| SampleLinq41 | Grouping Operators | GroupBy - Simple 2 | This sample uses group by to partition a list of words by their first letter. |
| SampleLinq42 | Grouping Operators | GroupBy - Simple 3 | This sample uses group by to partition a list of products by category. |
| SampleLinq102 | Join Operators | Cross Join | This sample shows how to efficiently join elements of two sequences based on equality between key expressions over the two. |
| SampleLinq104 | Join Operators | Cross Join with Group Join | The group join operator is more general than join, as this slightly more verbose version of the cross join sample shows. |
| SampleLinq103 | Join Operators | Group Join | Using a group join you can get all the products that match a given category bundled as a sequence. |
| SampleLinq105 | Join Operators | Left Outer Join | A so-called outer join can be expressed with a group join. A left outer join is like a cross join, except that all the left hand side elements get included at least once, even if they don't match any right hand side elements. Note how Vegetables shows up in the output even though it has no matching products. |
| SampleLinq94 | Miscellaneous Operators | Concat - 1 | This sample uses Concat to create one sequence that contains each array's values, one after the other. |
| SampleLinq95 | Miscellaneous Operators | Concat - 2 | This sample uses Concat to create one sequence that contains the names of all customers and products, including any duplicates. |
| SampleLinq96 | Miscellaneous Operators | EqualAll - 1 | This sample uses EqualAll to see if two sequences match on all elements in the same order. |
| SampleLinq97 | Miscellaneous Operators | EqualAll - 2 | This sample uses EqualAll to see if two sequences match on all elements in the same order. |
| SampleLinq31 | Ordering Operators | OrderBy - Comparer | This sample uses an OrderBy clause with a custom comparer to do a case-insensitive sort of the words in an array. |
| SampleLinq28 | Ordering Operators | OrderBy - Simple 1 | This sample uses orderby to sort a list of words alphabetically. |
| SampleLinq29 | Ordering Operators | OrderBy - Simple 2 | This sample uses orderby to sort a list of words by length. |
| SampleLinq30 | Ordering Operators | OrderBy - Simple 3 | This sample uses orderby to sort a list of products by name. |
| SampleLinq34 | Ordering Operators | OrderByDescending - Comparer | This sample uses an OrderBy clause with a custom comparer to do a case-insensitive descending sort of the words in an array. |
| SampleLinq32 | Ordering Operators | OrderByDescending - Simple 1 | This sample uses orderby and descending to sort a list of doubles from highest to lowest. |
| SampleLinq33 | Ordering Operators | OrderByDescending - Simple 2 | This sample uses orderby to sort a list of products by units in stock from highest to lowest. |
| SampleLinq39 | Ordering Operators | Reverse   | This sample uses Reverse to create a list of all digits in the array whose second letter is 'i' that is reversed from the order in the original array. |
| SampleLinq36 | Ordering Operators | ThenBy - Comparer | This sample uses an OrderBy and a ThenBy clause with a custom comparer to sort first by word length and then by a case-insensitive sort of the words in an array. |
| SampleLinq35 | Ordering Operators | ThenBy - Simple | This sample uses a compound orderby to sort a list of digits, first by length of their name, and then alphabetically by the name itself. |
| SampleLinq38 | Ordering Operators | ThenByDescending - Comparer | This sample uses an OrderBy and a ThenBy clause with a custom comparer to sort first by word length and then by a case-insensitive descending sort of the words in an array. |
| SampleLinq37 | Ordering Operators | ThenByDescending - Simple | This sample uses a compound orderby to sort a list of products, first by category, and then by unit price, from highest to lowest. |
| SampleLinq23 | Partitioning Operators | Skip - Nested | This sample uses Take to get all but the first 2 orders from customers in Washington. |
| SampleLinq22 | Partitioning Operators | Skip - Simple | This sample uses Skip to get all but the first 4 elements of the array. |
| SampleLinq27 | Partitioning Operators | SkipWhile - Indexed | This sample uses SkipWhile to get the elements of the array starting from the first element less than its position. |
| SampleLinq26 | Partitioning Operators | SkipWhile - Simple | This sample uses SkipWhile to get the elements of the array starting from the first element divisible by 3. |
| SampleLinq21 | Partitioning Operators | Take - Nested | This sample uses Take to get the first 3 orders from customers in Washington. |
| SampleLinq20 | Partitioning Operators | Take - Simple | This sample uses Take to get only the first 3 elements of the array. |
| SampleLinq25 | Partitioning Operators | TakeWhile - Indexed | This sample uses TakeWhile to return elements starting from the beginning of the array until a number is hit that is less than its position in the array. |
| SampleLinq24 | Partitioning Operators | TakeWhile - Simple | This sample uses TakeWhile to return elements starting from the beginning of the array until a number is hit that is not less than 6. |
| SampleLinq9 | Projection Operators | Select - Anonymous Types 1 | This sample uses select to produce a sequence of the uppercase and lowercase versions of each word in the original array. |
| SampleLinq10 | Projection Operators | Select - Anonymous Types 2 | This sample uses select to produce a sequence containing text representations of digits and whether their length is even or odd. |
| SampleLinq11 | Projection Operators | Select - Anonymous Types 3 | This sample uses select to produce a sequence containing some properties of Products, including UnitPrice which is renamed to Price in the resulting type. |
| SampleLinq13 | Projection Operators | Select - Filtered | This sample combines select and where to make a simple query that returns the text form of each digit less than 5. |
| SampleLinq12 | Projection Operators | Select - Indexed | This sample uses an indexed Select clause to determine if the value of ints in an array match their position in the array. |
| SampleLinq6 | Projection Operators | Select - Simple 1 | This sample uses select to produce a sequence of ints one higher than those in an existing array of ints. |
| SampleLinq7 | Projection Operators | Select - Simple 2 | This sample uses select to return a sequence of just the names of a list of products. |
| SampleLinq8 | Projection Operators | Select - Transformation | This sample uses select to produce a sequence of strings representing the text version of a sequence of ints. |
| SampleLinq14 | Projection Operators | SelectMany - Compound from 1 | This sample uses a compound from clause to make a query that returns all pairs of numbers from both arrays such that the number from numbersA is less than the number from numbersB. |
| SampleLinq15 | Projection Operators | SelectMany - Compound from 2 | This sample uses a compound from clause to select all orders where the order total is less than 500.00. |
| SampleLinq16 | Projection Operators | SelectMany - Compound from 3 | This sample uses a compound from clause to select all orders where the order was made in 1998 or later. |
| SampleLinq17 | Projection Operators | SelectMany - from Assignment | This sample uses a compound from clause to select all orders where the order total is greater than 2000.00 and uses from assignment to avoid requesting the total twice. |
| SampleLinq19 | Projection Operators | SelectMany - Indexed | This sample uses an indexed SelectMany clause to select all orders, while referring to customers by the order in which they are returned from the query. |
| SampleLinq18 | Projection Operators | SelectMany - Multiple from | This sample uses multiple from clauses so that filtering on customers can be done before selecting their orders.  This makes the query more efficient by not selecting and then discarding orders for customers outside of Washington. |
| SampleLinq72 | Quantifiers  | All - Grouped | This sample uses All to return a grouped a list of products only for categories that have all of their products in stock. |
| SampleLinq70 | Quantifiers  | All - Simple | This sample uses All to determine whether an array contains only odd numbers. |
| SampleLinq69 | Quantifiers  | Any - Grouped | This sample uses Any to return a grouped a list of products only for categories that have at least one product that is out of stock. |
| SampleLinq67 | Quantifiers  | Any - Simple | This sample uses Any to determine if any of the words in the array contain the substring 'ei'. |
| SampleLinq99 | Query Execution | Deferred Execution | The following sample shows how query execution is deferred until the query is enumerated at a foreach statement. |
| SampleLinq100 | Query Execution | Immediate Execution | The following sample shows how queries can be executed immediately with operators such as ToList(). |
| SampleLinq101 | Query Execution | Query Reuse | The following sample shows how, because of deferred execution, queries can be used again after data changes and will then operate on the new data. |
| SampleLinq4 | Restriction Operators | Where - Drilldown | This sample uses where to find all customers in Washington and then uses the resulting sequence to drill down into their orders. |
| SampleLinq5 | Restriction Operators | Where - Indexed | This sample demonstrates an indexed Where clause that returns digits whose name is shorter than their value. |
| SampleLinq1 | Restriction Operators | Where - Simple 1 | This sample uses where to find all elements of an array less than 5. |
| SampleLinq2 | Restriction Operators | Where - Simple 2 | This sample uses where to find all products that are out of stock. |
| SampleLinq3 | Restriction Operators | Where - Simple 3 | This sample uses where to find all products that are in stock and cost more than 3.00 per unit. |
| SampleLinq106 | Sample Data  | CustomerList / ProductList | This method displays the sample data used by the queries above.  You can also see the method below that constructs the lists.  ProductList is built using a collection initializer and CustomerList uses XLinq to read its values into memory from an XML document. |
| SampleLinq46 | Set Operators | Distinct - 1 | This sample uses Distinct to remove duplicate elements in a sequence of factors of 300. |
| SampleLinq47 | Set Operators | Distinct - 2 | This sample uses Distinct to find the unique Category names. |
| SampleLinq52 | Set Operators | Except - 1 | This sample uses Except to create a sequence that contains the values from numbersAthat are not also in numbersB. |
| SampleLinq53 | Set Operators | Except - 2 | This sample uses Except to create one sequence that contains the first letters of product names that are not also first letters of customer names. |
| SampleLinq50 | Set Operators | Intersect - 1 | This sample uses Intersect to create one sequence that contains the common values shared by both arrays. |
| SampleLinq51 | Set Operators | Intersect - 2 | This sample uses Intersect to create one sequence that contains the common first letter from both product and customer names. |
| SampleLinq48 | Set Operators | Union - 1 | This sample uses Union to create one sequence that contains the unique values from both arrays. |
| SampleLinq49 | Set Operators | Union - 2 | This sample uses Union to create one sequence that contains the unique first letter from both product and customer names. |

## Aggregate Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq93 | Aggregate - Seed | This sample uses Aggregate to create a running account balance that subtracts each withdrawal from the initial balance of 100, as long as the balance never drops below 0. |
| SampleLinq92 | Aggregate - Simple | This sample uses Aggregate to create a running product on the array that calculates the total product of all elements. |
| SampleLinq91 | Average - Grouped | This sample uses Average to get the average price of each category's products. |
| SampleLinq90 | Average - Projection | This sample uses Average to get the average length of the words in the array. |
| SampleLinq89 | Average - Simple | This sample uses Average to get the average of all numbers in an array. |
| SampleLinq74 | Count - Conditional | This sample uses Count to get the number of odd ints in the array. |
| SampleLinq77 | Count - Grouped | This sample uses Count to return a list of categories and how many products each has. |
| SampleLinq76 | Count - Nested | This sample uses Count to return a list of customers and how many orders each has. |
| SampleLinq73 | Count - Simple | This sample uses Count to get the number of unique factors of 300. |
| SampleLinq88 | Max - Elements | This sample uses Max to get the products with the most expensive price in each category. |
| SampleLinq87 | Max - Grouped | This sample uses Max to get the most expensive price among each category's products. |
| SampleLinq86 | Max - Projection | This sample uses Max to get the length of the longest word in an array. |
| SampleLinq85 | Max - Simple | This sample uses Max to get the highest number in an array. |
| SampleLinq84 | Min - Elements | This sample uses Min to get the products with the cheapest price in each category. |
| SampleLinq83 | Min - Grouped | This sample uses Min to get the cheapest price among each category's products. |
| SampleLinq82 | Min - Projection | This sample uses Min to get the length of the shortest word in an array. |
| SampleLinq81 | Min - Simple | This sample uses Min to get the lowest number in an array. |
| SampleLinq80 | Sum - Grouped | This sample uses Sum to get the total units in stock for each product category. |
| SampleLinq79 | Sum - Projection | This sample uses Sum to get the total number of characters of all words in the array. |
| SampleLinq78 | Sum - Simple | This sample uses Sum to get the total of the numbers in an array. |

## Conversion Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq57 | OfType    | This sample uses OfType to return only the elements of the array that are of type double. |
| SampleLinq54 | ToArray   | This sample uses ToArray to immediately evaluate a sequence into an array. |
| SampleLinq56 | ToDictionary | This sample uses ToDictionary to immediately evaluate a sequence and a related key expression into a dictionary. |
| SampleLinq55 | ToList    | This sample uses ToList to immediately evaluate a sequence into a List

&lt;T&gt;

. |

## Element Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq64 | ElementAt | This sample uses ElementAt to retrieve the second number greater than 5 from an array. |
| SampleLinq59 | First - Condition | This sample uses First to find the first element in the array that starts with 'o'. |
| SampleLinq58 | First - Simple | This sample uses First to return the first matching element as a Product, instead of as a sequence containing a Product. |
| SampleLinq62 | FirstOrDefault - Condition | This sample uses FirstOrDefault to return the first product whose ProductID is 789 as a single Product object, unless there is no match, in which case null is returned. |
| SampleLinq61 | FirstOrDefault - Simple | This sample uses FirstOrDefault to try to return the first element of the sequence, unless there are no elements, in which case the default value for that type is returned. |

## Generation Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq65 | Range     | This sample uses Range to generate a sequence of numbers from 100 to 149 that is used to find which numbers in that range are odd and even. |
| SampleLinq66 | Repeat    | This sample uses Repeat to generate a sequence that contains the number 7 ten times. |

## Grouping Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq44 | GroupBy - Comparer | This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other. |
| SampleLinq45 | GroupBy - Comparer, Mapped | This sample uses GroupBy to partition trimmed elements of an array using a custom comparer that matches words that are anagrams of each other, and then converts the results to uppercase. |
| SampleLinq43 | GroupBy - Nested | This sample uses group by to partition a list of each customer's orders, first by year, and then by month. |
| SampleLinq40 | GroupBy - Simple 1 | This sample uses group by to partition a list of numbers by their remainder when divided by 5. |
| SampleLinq41 | GroupBy - Simple 2 | This sample uses group by to partition a list of words by their first letter. |
| SampleLinq42 | GroupBy - Simple 3 | This sample uses group by to partition a list of products by category. |

## Join Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq102 | Cross Join | This sample shows how to efficiently join elements of two sequences based on equality between key expressions over the two. |
| SampleLinq104 | Cross Join with Group Join | The group join operator is more general than join, as this slightly more verbose version of the cross join sample shows. |
| SampleLinq103 | Group Join | Using a group join you can get all the products that match a given category bundled as a sequence. |
| SampleLinq105 | Left Outer Join | A so-called outer join can be expressed with a group join. A left outer join is like a cross join, except that all the left hand side elements get included at least once, even if they don't match any right hand side elements. Note how Vegetables shows up in the output even though it has no matching products. |

## Miscellaneous Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq94 | Concat - 1 | This sample uses Concat to create one sequence that contains each array's values, one after the other. |
| SampleLinq95 | Concat - 2 | This sample uses Concat to create one sequence that contains the names of all customers and products, including any duplicates. |
| SampleLinq96 | EqualAll - 1 | This sample uses EqualAll to see if two sequences match on all elements in the same order. |
| SampleLinq97 | EqualAll - 2 | This sample uses EqualAll to see if two sequences match on all elements in the same order. |

## Ordering Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq31 | OrderBy - Comparer | This sample uses an OrderBy clause with a custom comparer to do a case-insensitive sort of the words in an array. |
| SampleLinq28 | OrderBy - Simple 1 | This sample uses orderby to sort a list of words alphabetically. |
| SampleLinq29 | OrderBy - Simple 2 | This sample uses orderby to sort a list of words by length. |
| SampleLinq30 | OrderBy - Simple 3 | This sample uses orderby to sort a list of products by name. |
| SampleLinq34 | OrderByDescending - Comparer | This sample uses an OrderBy clause with a custom comparer to do a case-insensitive descending sort of the words in an array. |
| SampleLinq32 | OrderByDescending - Simple 1 | This sample uses orderby and descending to sort a list of doubles from highest to lowest. |
| SampleLinq33 | OrderByDescending - Simple 2 | This sample uses orderby to sort a list of products by units in stock from highest to lowest. |
| SampleLinq39 | Reverse   | This sample uses Reverse to create a list of all digits in the array whose second letter is 'i' that is reversed from the order in the original array. |
| SampleLinq36 | ThenBy - Comparer | This sample uses an OrderBy and a ThenBy clause with a custom comparer to sort first by word length and then by a case-insensitive sort of the words in an array. |
| SampleLinq35 | ThenBy - Simple | This sample uses a compound orderby to sort a list of digits, first by length of their name, and then alphabetically by the name itself. |
| SampleLinq38 | ThenByDescending - Comparer | This sample uses an OrderBy and a ThenBy clause with a custom comparer to sort first by word length and then by a case-insensitive descending sort of the words in an array. |
| SampleLinq37 | ThenByDescending - Simple | This sample uses a compound orderby to sort a list of products, first by category, and then by unit price, from highest to lowest. |

## Partitioning Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq23 | Skip - Nested | This sample uses Take to get all but the first 2 orders from customers in Washington. |
| SampleLinq22 | Skip - Simple | This sample uses Skip to get all but the first 4 elements of the array. |
| SampleLinq27 | SkipWhile - Indexed | This sample uses SkipWhile to get the elements of the array starting from the first element less than its position. |
| SampleLinq26 | SkipWhile - Simple | This sample uses SkipWhile to get the elements of the array starting from the first element divisible by 3. |
| SampleLinq21 | Take - Nested | This sample uses Take to get the first 3 orders from customers in Washington. |
| SampleLinq20 | Take - Simple | This sample uses Take to get only the first 3 elements of the array. |
| SampleLinq25 | TakeWhile - Indexed | This sample uses TakeWhile to return elements starting from the beginning of the array until a number is hit that is less than its position in the array. |
| SampleLinq24 | TakeWhile - Simple | This sample uses TakeWhile to return elements starting from the beginning of the array until a number is hit that is not less than 6. |

## Projection Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq9 | Select - Anonymous Types 1 | This sample uses select to produce a sequence of the uppercase and lowercase versions of each word in the original array. |
| SampleLinq10 | Select - Anonymous Types 2 | This sample uses select to produce a sequence containing text representations of digits and whether their length is even or odd. |
| SampleLinq11 | Select - Anonymous Types 3 | This sample uses select to produce a sequence containing some properties of Products, including UnitPrice which is renamed to Price in the resulting type. |
| SampleLinq13 | Select - Filtered | This sample combines select and where to make a simple query that returns the text form of each digit less than 5. |
| SampleLinq12 | Select - Indexed | This sample uses an indexed Select clause to determine if the value of ints in an array match their position in the array. |
| SampleLinq6 | Select - Simple 1 | This sample uses select to produce a sequence of ints one higher than those in an existing array of ints. |
| SampleLinq7 | Select - Simple 2 | This sample uses select to return a sequence of just the names of a list of products. |
| SampleLinq8 | Select - Transformation | This sample uses select to produce a sequence of strings representing the text version of a sequence of ints. |
| SampleLinq14 | SelectMany - Compound from 1 | This sample uses a compound from clause to make a query that returns all pairs of numbers from both arrays such that the number from numbersA is less than the number from numbersB. |
| SampleLinq15 | SelectMany - Compound from 2 | This sample uses a compound from clause to select all orders where the order total is less than 500.00. |
| SampleLinq16 | SelectMany - Compound from 3 | This sample uses a compound from clause to select all orders where the order was made in 1998 or later. |
| SampleLinq17 | SelectMany - from Assignment | This sample uses a compound from clause to select all orders where the order total is greater than 2000.00 and uses from assignment to avoid requesting the total twice. |
| SampleLinq19 | SelectMany - Indexed | This sample uses an indexed SelectMany clause to select all orders, while referring to customers by the order in which they are returned from the query. |
| SampleLinq18 | SelectMany - Multiple from | This sample uses multiple from clauses so that filtering on customers can be done before selecting their orders.  This makes the query more efficient by not selecting and then discarding orders for customers outside of Washington. |

## Quantifiers ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq72 | All - Grouped | This sample uses All to return a grouped a list of products only for categories that have all of their products in stock. |
| SampleLinq70 | All - Simple | This sample uses All to determine whether an array contains only odd numbers. |
| SampleLinq69 | Any - Grouped | This sample uses Any to return a grouped a list of products only for categories that have at least one product that is out of stock. |
| SampleLinq67 | Any - Simple | This sample uses Any to determine if any of the words in the array contain the substring 'ei'. |

## Query Execution ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq99 | Deferred Execution | The following sample shows how query execution is deferred until the query is enumerated at a foreach statement. |
| SampleLinq100 | Immediate Execution | The following sample shows how queries can be executed immediately with operators such as ToList(). |
| SampleLinq101 | Query Reuse | The following sample shows how, because of deferred execution, queries can be used again after data changes and will then operate on the new data. |

## Restriction Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq4 | Where - Drilldown | This sample uses where to find all customers in Washington and then uses the resulting sequence to drill down into their orders. |
| SampleLinq5 | Where - Indexed | This sample demonstrates an indexed Where clause that returns digits whose name is shorter than their value. |
| SampleLinq1 | Where - Simple 1 | This sample uses where to find all elements of an array less than 5. |
| SampleLinq2 | Where - Simple 2 | This sample uses where to find all products that are out of stock. |
| SampleLinq3 | Where - Simple 3 | This sample uses where to find all products that are in stock and cost more than 3.00 per unit. |

## Sample Data ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq106 | CustomerList / ProductList | This method displays the sample data used by the queries above.  You can also see the method below that constructs the lists.  ProductList is built using a collection initializer and CustomerList uses XLinq to read its values into memory from an XML document. |

## Set Operators ##

| **Sample** | **Title** | **Description** |
|:-----------|:----------|:----------------|
| SampleLinq46 | Distinct - 1 | This sample uses Distinct to remove duplicate elements in a sequence of factors of 300. |
| SampleLinq47 | Distinct - 2 | This sample uses Distinct to find the unique Category names. |
| SampleLinq52 | Except - 1 | This sample uses Except to create a sequence that contains the values from numbersAthat are not also in numbersB. |
| SampleLinq53 | Except - 2 | This sample uses Except to create one sequence that contains the first letters of product names that are not also first letters of customer names. |
| SampleLinq50 | Intersect - 1 | This sample uses Intersect to create one sequence that contains the common values shared by both arrays. |
| SampleLinq51 | Intersect - 2 | This sample uses Intersect to create one sequence that contains the common first letter from both product and customer names. |
| SampleLinq48 | Union - 1 | This sample uses Union to create one sequence that contains the unique values from both arrays. |
| SampleLinq49 | Union - 2 | This sample uses Union to create one sequence that contains the unique first letter from both product and customer names. |
