# SQL SELECT 语句

SELECT 语法用于从数据库中选择数据。

返回的数据存储在结果表中，称为结果集。

SQL SELECT 语法：

```sql
SELECT column1, column2
FROM table_name;
```

与

```sql
SELECT * FROM table_name;
```



## 示例数据库演示

下面是罗斯文示例数据库中“Customers”表的一个选择：

| CustomerID | CustomerName                       | ContactName        | Address                       | City        | PostalCode | Country |
| :--------- | :--------------------------------- | :----------------- | :---------------------------- | :---------- | :--------- | :------ |
| 1          | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57                 | Berlin      | 12209      | Germany |
| 2          | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
| 3          | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312                | México D.F. | 05023      | Mexico  |
| 4          | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.               | London      | WA1 1DP    | UK      |
| 5          | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8                | Luleå       | S-958 22   | Sweden  |


### SELECT  检索一列

下面的 SQL 语句从 "Customers" 表中选取 "City" 列：

```sql
SELECT City FROM Customers; 
```

查询结果：

```sql
Country 
Germany
Mexico 
Mexico 
UK
Sweden
```

### SELECT  检索多列

下面的 SQL 语句从 "Customers" 表中选取 "CustomerName" 和 "City" 列：

```sql
SELECT CustomerName, City FROM Customers;
```

 **注意：**这两个列名在查询中用逗号分隔。每当您选择多个列时，它们必须用逗号分隔，但最后一列名称之后不能添加逗号。

### SELECT  检索所有列

下面的 SQL 语句从 "Customers" 表中选取所有列：

```sql
SELECT * FROM Customers;
```

