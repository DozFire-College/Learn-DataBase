CREATE TABLE orders(
	id int,
	number int,
	total_price money -- DEFAULT 0
)

ALTER TABLE orders 
ADD CONSTRAINT DF_total_price DEFAULT 0-- index DEFAULT 0
GO
ALTER TABLE orders
ADD CONSTRAINT chkRowCount
CHECK (Len(total_price) >=3);