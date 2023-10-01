CREATE TABLE customers(
	CustomerID integer NOT NULL,
	FirstName varchar(50) NULL,
	LastName varchar(50) NULL,
	CustomerEmail varchar(128) NULL,
	CustomerPhone varchar(50) NULL,
	CustomerAddress varchar(50) NULL,
	CustomerCity varchar(50) NULL,
	CustomerState varchar(50) NULL,
	CustomerZip int NULL,
	CONSTRAINT customers_pk PRIMARY KEY (CustomerID)
);

CREATE TABLE orders(
	OrderID int NOT NULL,
	Date date NULL,
	CustomerID int NULL,
	ProdNumber varchar(50) NULL,
	Quantity int NULL,
	CONSTRAINT orders_pk PRIMARY KEY (OrderID)
);

CREATE TABLE products(
	ProdNumber varchar(50) NOT NULL,
	ProdName varchar(50) NULL,
	Category int NULL,
	Price decimal NULL,
	CONSTRAINT products_pk PRIMARY KEY (ProdNumber)
);

CREATE TABLE product_category(
	CategoryID int NOT NULL,
	CategoryName varchar(50) NULL,
	CategoryAbbreviation varchar(50) NULL,
	CONSTRAINT category_pk PRIMARY KEY (CategoryID)
);