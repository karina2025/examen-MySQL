SELECT * FROM pizzeria.clientes;
SELECT * FROM pizzeria
ORDER BY nombre ASC
LIMIT 3;

-- combos mas bajos
SELECT * FROM combos
WHERE nombre LIKE '5%';

-- Consultar postres 
SELECT c.clientes, C.nombre AS 'clientes'
FROM  pizzeria c
JOIN clientes C ON c.id_cliente = C.id
WHERE C.nombre = 'carmen';

SELECT c. cleintes, c. nombres AS 'clientes'
FROM pizzeria c
JOIN cleintes c ON c. id_cliente = c.id
where c.nombre = 'carmen';

SELECT * FROM libros WHERE id_autor = (SELECT id FROM clientes WHERE nombre = "pedido");