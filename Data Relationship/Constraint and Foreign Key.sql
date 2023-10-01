--customers.CustomerID=orders.CustomerID--
ALTER TABLE orders
ADD CONSTRAINT orders_fk_customers
FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
ON DELETE CASCADE ON UPDATE CASCADE;

--products.ProdNumber=orders.ProdNumber--
ALTER TABLE orders
ADD CONSTRAINT orders_fk_products
FOREIGN KEY (ProdNumber) REFERENCES products(ProdNumber)
ON DELETE CASCADE ON UPDATE CASCADE;

--product_category.CategoryID=products.Category--
ALTER TABLE products
ADD CONSTRAINT products_fk_product_category
FOREIGN KEY (Category) REFERENCES product_category(CategoryID)
ON DELETE CASCADE ON UPDATE CASCADE;