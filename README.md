# database-was-created-using-SQL



# Create a database based on the following domain description.

### The organization has several warehouses. There is a list of goods that are purchased and stored in warehouses. Products are divided into categories (mandatory parameter) and brands (optional parameter). There is a list of contractors. Goods can come from counterparties to warehouses, can be moved from warehouse to warehouse, and can be issued from a warehouse to counterparties. Each counterparty can either deliver goods to the warehouses or take them from the warehouses of the organization. It is necessary to keep only quantitative accounting, it is not necessary to keep monetary accounting.

 
#### Directions:
**The database must explicitly specify all the necessary relationships between tables.
The names of tables and fields should be clear and reflect the essence of the data stored in them.
In the name of your database, specify your group and name.
You can create a database in any way - through the MySQL Workbench interface, scripts or in DB Designer or a similar tool.
It is not necessary to draw a scheme - you draw it for yourself so as not to get confused when creating tables in the database.**




TABLE brands: PK (id) is filled in automatically and the brand name is a mandatory field (brand (enter varchar up to 45 characters));

TABLE categories: PK(id) is filled in automatically and the name of the category is a mandatory field (category(enter varchar up to 45 characters));

TABLE stocks:  PK(id) is filled in automatically and the name of the warehouse is a mandatory field(stock(enter varchar up to 45 characters));

TABLE suppliers: PK(id)-filled in automatically and the name of the counterparty is a required field(supplier(enter varchar up to 45 characters));

TABLE products:  PK (id) is filled in automatically,
FK(category_id)-id of the category that is associated with the CATEGORIES table (enter an integer up to 11 digits)
FK(brand_id)-brand id, an optional field that is associated with the BRANDS table (enter an integer up to 11 digits)
and the name of the product is required(product(enter varchar up to 45 characters));

TABLE actions:  PK (id) is filled in automatically,
action_date (enter date with time), required field,
FK(product_id)-id of the product that is associated with the PRODUCTS table (enter an integer up to 11 digits), default is 0,
FK(stock_id)-id of the stock that is associated with the STOCKS table (enter an integer up to 11 digits), default 0,
indicates that the product has arrived from the warehouse,

FK(supplier_id)-id of the counterparty associated with the SUPPLIERS table (enter an integer up to 11 digits),
shows that the product came from the counterparty, by default 0,
qty-product quantity (enter decimal(10,3)),

FK(where_stock_id)-id of the stock that is associated with the STOCKS table (enter an integer up to 11 digits),
shows which warehouse the product was transferred to, default 0,

FK(where_supplier_id)-id of the counterparty associated with the SUPPLIERS table (enter an integer up to 11 digits),
shows which of the counterparties released the goods, by default 0.


### Tasks:

1. :white_check_mark: How many and what products were delivered to the specified warehouse during the specified date period? For each item, indicate the total number of deliveries of this product to the specified warehouse (the warehouse is determined by the code). Present the result in the form of a table with two fields - product name, quantity. Each name must appear in the results table no more than once. Sort results by product name.

2. :white_check_mark: How many and what goods were taken (written off) from the specified warehouse for the specified date period? For each item, indicate the total amount of write-off of this product from the specified warehouse (the warehouse is determined by the code). Present the result in the form of a table with two fields - product name, quantity. Each name must appear in the results table no more than once. Sort results by product name.

3. :white_check_mark:  What quantity of goods and what categories were delivered to the specified warehouse for the specified date period. The warehouse is determined by the code. The result is presented in the form of a table with two fields - category, quantity. Each category must appear in the results table no more than once. Sort results by category name.

4. :white_check_mark: How many and what brands of goods were delivered to the specified warehouse during the specified date period? The warehouse is determined by the code. Products without a brand should be displayed on a separate line. Present the result in the form of a table with two fields - brand, quantity. Each brand must appear in the results table no more than once. Sort results by brand name.

5. :white_check_mark: How many and what goods did the specified counterparty deliver to all warehouses for the specified date period? The counterparty is determined by the code. Present the result in the form of a table with two fields - product name, quantity. Each name must appear in the results table no more than once. Sort results by product name.

6. :white_check_mark:  How many and what goods did the specified counterparty deliver to the selected warehouse for the specified date period? The counterparty is determined by the code. Present the result in the form of a table with two fields - product name, quantity. Each name must appear in the results table no more than once. Sort results by product name.

7. :white_check_mark: How many and what goods were issued to the specified counterparty from the selected warehouse for the specified date period? Present the result in the form of a table with two fields - product name, quantity. Each name must appear in the results table no more than once. Sort results by product name.

---------------------------------------------------------------------------------

# Создайте базу данных на основании следующего описания предметной области.

### У организации есть несколько складов. Есть список товаров, которые закупаются и хранятся на складах. Товары подразделяются на категории (обязательный параметр) и бренды (необязательный параметр). Есть список контрагентов. Товары могут поступать от контрагентов на склады, могут перемещаться со склада на склад, и могут выдаваться со склада контрагентам. Каждый контрагент может как поставлять товары на склады, так и брать их со складов организации. Нужно вести только количественный учет, денежный учет вести не нужно.

 
#### Указания:
**В базе должны быть явно указаны все необходимые связи между таблицами. 
Названия таблиц и полей должны быть понятными и отражать суть хранящихся в них данных.
В названии вашей базы данных укажите вашу группу и имя.
Создавать базу можно любым способом - через интерфейс MySQL Workbench, скриптами или в DB Designer или аналогичном инструменте.
Схему рисовать не обязательно - рисуете её для себя, чтобы не путаться при создании таблиц в базе.**



ТАБЛИЦА brands: в ней PK(id)-заполняется автоматически и название бренда- обязательное поле(brand(вводим varchar до 45 символов));

ТАБЛИЦА categories: в ней PK(id)-заполняется автоматически и название категории обязательное поле(category(вводим varchar до 45 символов));

ТАБЛИЦА stocks: в ней PK(id)-заполняется автоматически и название склада обязательное поле(stock(вводим varchar до 45 символов));

ТАБЛИЦА suppliers: в ней PK(id)-заполняется автоматически и название контрагента обязательное поле(supplier(вводим varchar до 45 символов));

ТАБЛИЦА products: в ней PK(id)-заполняется автоматически,
FK(category_id)-id категории,которая связан  с таблицей CATEGORIES(вводим integer до 11 цифр)
FK(brand_id)-id бренда,необязательное поле,который связан  с таблицей BRANDS(вводим integer до 11 цифр)
и название продукта обязательное(product(вводим varchar до 45 символов));

ТАБЛИЦА actions: в ней PK(id)-заполняется автоматически,
action_date(вводим дату с временем),обязательное поле,
FK(product_id)-id продукта,который связан  с таблицей PRODUCTS(вводим integer до 11 цифр),по умолчанию 0,
FK(stock_id)-id склада,который связан  с таблицей STOCKS(вводим integer до 11 цифр),по умолчанию 0,
	     показывает что продукт поступил со склада,

FK(supplier_id)-id контрагента,который связан  с таблицей SUPPLIERS(вводим integer до 11 цифр),
	     показывает что продукт поступил от контрагента,по умолчанию 0,
qty-количество продукта(вводим decimal(10,3)),

FK(where_stock_id)-id склада,который связан  с таблицей STOCKS(вводим integer до 11 цифр),
	     показывает на какой склад продукт перевели,по умолчанию 0,

FK(where_supplier_id)-id контрагента,который связан  с таблицей SUPPLIERS(вводим integer до 11 цифр),
	     показывает кому из контрагентов отпустили товар,по умолчанию 0.


### Задания:


1. :white_check_mark: Сколько и каких товаров доставлено на указанный склад за указанный период дат? По каждому наименованию указывать общее количество поставок этого товара на указанный склад (склад определяется по коду). Результат представить в виде таблицы с двумя полями – наименование товара, количество. Каждое наименование должно быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию товара.

2. :white_check_mark: Сколько и каких товаров забрали (списали) с указанного склада за указанный период дат? По каждому наименованию указывать общее количество списания этого товара с указанного склада (склад определяется по коду). Результат представить в виде таблицы с двумя полями – наименование товара, количество. Каждое наименование должно быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию товара.

3. :white_check_mark: Какое количество товаров и каких категорий доставлено на указанный склад за указанный период дат. Склад определяется по коду. Результат представить в виде таблицы с двумя полями – категория, количество. Каждая категория должна быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию категории.

4. :white_check_mark: Какое количество и каких брендов товаров доставлено на указанный склад за указанный период дат? Склад определяется по коду. Товары без бренда выводить отдельной строкой. Результат представить в виде таблицы с двумя полями – бренд, количество. Каждый бренд должен быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию бренда.

5. :white_check_mark: Сколько и каких товаров поставил на все склады указанный контрагент за указанный период дат? Контрагент определяется по коду. Результат представить в виде таблицы с двумя полями – наименование товара, количество. Каждое наименование должно быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию товара.

6. :white_check_mark: Сколько и каких товаров поставил указанный контрагент на выбранный склад за указанный период дат? Контрагент определяется по коду. Результат представить в виде таблицы с двумя полями – наименование товара, количество. Каждое наименование должно быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию товара.

7. :white_check_mark: Сколько и каких товаров выдано указанному контрагенту с выбранного склада за указанный период дат? Результат представить в виде таблицы с двумя полями – наименование товара, количество. Каждое наименование должно быть в таблице результатов не более одного раза. Результаты отсортировать по наименованию товара.



