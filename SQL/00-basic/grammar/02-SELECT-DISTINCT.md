# SQL SELECT DISTINCT 语法

SELECT DISTINCT语法用于仅返回不同的值。

在一张表内，一列通常包含许多重复的值; 有时只想列出不同的值。

SQL SELECT DISTINCT语法：

```sql
SELECT DISTINCT column1, column2, ... 
FROM table_name;
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



### SELECT DISTINCT 实例

以下SQL语句仅从"Customers" 表中的 "Country" 列中选择DISTINCT值：

```sql
SELECT DISTINCT Country FROM Customers;
```

查询结果：

```sql
Country
Germany
Mexico
UK
Sweden
```

