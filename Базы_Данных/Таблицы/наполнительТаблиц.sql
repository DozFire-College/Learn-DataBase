USE DB2
go

INSERT INTO users(first_name, email, age)
VALUES(N'Petr', 'pedr3o@google.com', 19),
	(N'Pablo', 'pedrffo@google.com', 193),
	(N'Rebro', 'pedrffsao@google.com', 119)

SELECT *
FROM users