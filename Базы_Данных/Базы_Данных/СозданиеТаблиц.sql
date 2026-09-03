USE DB1

CREATE TABLE users2(
	id int Primary key Identity(1, 1),
	first_name nvarchar(100) NOT NULL,
	email varchar(100) unique,
	age tinyint,
	balance real
	)