USE Praktika2

GO
CREATE TABLE categories (
    id   INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE suppliers (
    id        INT PRIMARY KEY IDENTITY(1,1),
    name      VARCHAR(100) NOT NULL,
    phone     VARCHAR(20),
    email     VARCHAR(100)
);

CREATE TABLE warehouses (
    id       INT PRIMARY KEY IDENTITY(1,1),
    name     VARCHAR(100) NOT NULL,
    address  VARCHAR(200) NOT NULL
);

CREATE TABLE products (
    id           INT PRIMARY KEY IDENTITY(1,1),
    name         VARCHAR(100) NOT NULL,
    price        DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    quantity     INT NOT NULL DEFAULT 0,
    category_id  INT NOT NULL FOREIGN KEY REFERENCES categories(id),
    warehouse_id INT NOT NULL FOREIGN KEY REFERENCES warehouses(id)
);

CREATE TABLE supplier_products (
    id          INT PRIMARY KEY IDENTITY(1,1),
    supplier_id INT NOT NULL FOREIGN KEY REFERENCES suppliers(id),
    product_id  INT NOT NULL FOREIGN KEY REFERENCES products(id),
    supply_price DECIMAL(10,2) NOT NULL, 
    supply_date  DATE NOT NULL,
    CONSTRAINT UQ_supplier_product UNIQUE (supplier_id, product_id)
);