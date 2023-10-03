COPY customers(
	CustomerID,
	FirstName,
	LastName,
	CustomerEmail,
	CustomerPhone,
	CustomerAddress,
	CustomerCity,
	CustomerState,
	CustomerZip
)
FROM 'C:\Users\Arnanda\Documents\Data Science\Bank Muamalat\Customers.csv'
DELIMITER ';'
CSV HEADER;

COPY orders(
	OrderID,
	Date,
	CustomerID,
	ProdNumber,
	Quantity
)
FROM 'C:\Users\Arnanda\Documents\Data Science\Bank Muamalat\Orders.csv'
DELIMITER ';'
CSV HEADER;

COPY products(
	ProdNumber,
	ProdName,
	Category,
	Price
)
FROM 'C:\Users\Arnanda\Documents\Data Science\Bank Muamalat\Products.csv'
DELIMITER ';'
CSV HEADER;

COPY product_category(
	CategoryID,
	CategoryName,
	CategoryAbbreviation
)
FROM 'C:\Users\Arnanda\Documents\Data Science\Bank Muamalat\ProductCategory.csv'
DELIMITER ';'
CSV HEADER;
