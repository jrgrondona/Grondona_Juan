-- 1 Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM ventas.pedidos ORDER BY fecha DESC
-- 2 Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM ventas.pedidos ORDER BY cantidad DESC LIMIT 2
-- 3 Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT distinct id_cliente, fecha FROM ventas.pedidos 
-- 4 Devuelve un listado de todos los pedidos que se realizaron durante el año 2022, cuya cantidad total sea superior a $500.
SELECT * FROM ventas.pedidos WHERE cantidad>500 AND fecha>'2022-00-00'
-- 5 Devuelve un listado con el nombre y apellido de los vendedores que tienen una comisión entre 0.05 y 0.11.
SELECT * FROM ventas.vendedores WHERE comisión BETWEEN 0.05 AND 0.11
-- 6 Devuelve el valor de la comisión de mayor valor que existe en la tabla vendedores.
SELECT nombre, apellido, MAX(comisión) MAYOR_VALOR FROM ventas.vendedores;
-- 7 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo cuitcuil no es NULL. El listado deberá estar ordenado alfabéticamente por apellido y nombre.
SELECT id,nombre, apellido, cuitcuil FROM ventas.clientes WHERE cuitcuil IS NOT NULL ORDER BY nombre
-- 8 Devuelve un listado de los nombres de los clientes que empiezan por “A” y terminan por “n” y también los nombres que empiezan por “P”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre ASC
-- 9 Devuelve un listado de los nombres de los clientes que no empiezan por “A”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC
-- 10 Devuelve un listado con los nombres de los vendedores que terminan por “el” o “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT * FROM ventas.vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o' ORDER BY nombre ASC
-- 11 Devuelve un listado con el identificador, nombre y apellido de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos. 
SELECT c.nombre, c.apellido, p.id, p.fecha, p.cantidad FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC 
-- 12 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC
-- 13 Devuelve un listado que muestre todos los pedidos en los que ha participado un vendedor. El resultado debe mostrar todos los datos de los pedidos y de los vendedores. El listado debe mostrar los datos de los vendedores ordenados alfabéticamente.
SELECT DISTINCT v.nombre, v.apellido, p.fecha, p.cantidad, p.id_vendedor FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id_vendedor ORDER BY v.nombre
-- 14 Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los vendedores asociados a cada pedido.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p, ventas.vendedores v WHERE c.id=p.id_cliente AND p.id=v.id ORDER BY c.nombre
-- 15 Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2022, cuyo monto esté entre $300 y $1000.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad BETWEEN 300 AND 1000 AND fecha>='2022-00-00'
-- 1 Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM ventas.pedidos ORDER BY fecha DESC
-- 2 Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM ventas.pedidos ORDER BY cantidad DESC LIMIT 2
-- 3 Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT distinct id_cliente, fecha FROM ventas.pedidos 
-- 4 Devuelve un listado de todos los pedidos que se realizaron durante el año 2022, cuya cantidad total sea superior a $500.
SELECT * FROM ventas.pedidos WHERE cantidad>500 AND fecha>'2022-00-00'
-- 5 Devuelve un listado con el nombre y apellido de los vendedores que tienen una comisión entre 0.05 y 0.11.
SELECT * FROM ventas.vendedores WHERE comisión BETWEEN 0.05 AND 0.11
-- 6 Devuelve el valor de la comisión de mayor valor que existe en la tabla vendedores.
SELECT nombre, apellido, MAX(comisión) MAYOR_VALOR FROM ventas.vendedores;
-- 7 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo cuitcuil no es NULL. El listado deberá estar ordenado alfabéticamente por apellido y nombre.
SELECT id,nombre, apellido, cuitcuil FROM ventas.clientes WHERE cuitcuil IS NOT NULL ORDER BY nombre
-- 8 Devuelve un listado de los nombres de los clientes que empiezan por “A” y terminan por “n” y también los nombres que empiezan por “P”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre ASC
-- 9 Devuelve un listado de los nombres de los clientes que no empiezan por “A”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC
-- 10 Devuelve un listado con los nombres de los vendedores que terminan por “el” o “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT * FROM ventas.vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o' ORDER BY nombre ASC
-- 11 Devuelve un listado con el identificador, nombre y apellido de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos. 
SELECT c.nombre, c.apellido, p.id, p.fecha, p.cantidad FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC 
-- 12 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC
-- 13 Devuelve un listado que muestre todos los pedidos en los que ha participado un vendedor. El resultado debe mostrar todos los datos de los pedidos y de los vendedores. El listado debe mostrar los datos de los vendedores ordenados alfabéticamente.
SELECT DISTINCT v.nombre, v.apellido, p.fecha, p.cantidad, p.id_vendedor FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id_vendedor ORDER BY v.nombre
-- 14 Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los vendedores asociados a cada pedido.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p, ventas.vendedores v WHERE c.id=p.id_cliente AND p.id=v.id ORDER BY c.nombre
-- 15 Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2022, cuyo monto esté entre $300 y $1000.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad BETWEEN 300 AND 1000 AND fecha>='2022-00-00'
-- 1 Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM ventas.pedidos ORDER BY fecha DESC
-- 2 Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM ventas.pedidos ORDER BY cantidad DESC LIMIT 2
-- 3 Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT distinct id_cliente, fecha FROM ventas.pedidos 
-- 4 Devuelve un listado de todos los pedidos que se realizaron durante el año 2022, cuya cantidad total sea superior a $500.
SELECT * FROM ventas.pedidos WHERE cantidad>500 AND fecha>'2022-00-00'
-- 5 Devuelve un listado con el nombre y apellido de los vendedores que tienen una comisión entre 0.05 y 0.11.
SELECT * FROM ventas.vendedores WHERE comisión BETWEEN 0.05 AND 0.11
-- 6 Devuelve el valor de la comisión de mayor valor que existe en la tabla vendedores.
SELECT nombre, apellido, MAX(comisión) MAYOR_VALOR FROM ventas.vendedores;
-- 7 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo cuitcuil no es NULL. El listado deberá estar ordenado alfabéticamente por apellido y nombre.
SELECT id,nombre, apellido, cuitcuil FROM ventas.clientes WHERE cuitcuil IS NOT NULL ORDER BY nombre
-- 8 Devuelve un listado de los nombres de los clientes que empiezan por “A” y terminan por “n” y también los nombres que empiezan por “P”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre ASC
-- 9 Devuelve un listado de los nombres de los clientes que no empiezan por “A”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC
-- 10 Devuelve un listado con los nombres de los vendedores que terminan por “el” o “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT * FROM ventas.vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o' ORDER BY nombre ASC
-- 11 Devuelve un listado con el identificador, nombre y apellido de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos. 
SELECT c.nombre, c.apellido, p.id, p.fecha, p.cantidad FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC 
-- 12 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC
-- 13 Devuelve un listado que muestre todos los pedidos en los que ha participado un vendedor. El resultado debe mostrar todos los datos de los pedidos y de los vendedores. El listado debe mostrar los datos de los vendedores ordenados alfabéticamente.
SELECT DISTINCT v.nombre, v.apellido, p.fecha, p.cantidad, p.id_vendedor FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id_vendedor ORDER BY v.nombre
-- 14 Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los vendedores asociados a cada pedido.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p, ventas.vendedores v WHERE c.id=p.id_cliente AND p.id=v.id ORDER BY c.nombre
-- 15 Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2022, cuyo monto esté entre $300 y $1000.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad BETWEEN 300 AND 1000 AND fecha>='2022-00-00'
-- 1 Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM ventas.pedidos ORDER BY fecha DESC
-- 2 Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM ventas.pedidos ORDER BY cantidad DESC LIMIT 2
-- 3 Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT distinct id_cliente, fecha FROM ventas.pedidos 
-- 4 Devuelve un listado de todos los pedidos que se realizaron durante el año 2022, cuya cantidad total sea superior a $500.
SELECT * FROM ventas.pedidos WHERE cantidad>500 AND fecha>'2022-00-00'
-- 5 Devuelve un listado con el nombre y apellido de los vendedores que tienen una comisión entre 0.05 y 0.11.
SELECT * FROM ventas.vendedores WHERE comisión BETWEEN 0.05 AND 0.11
-- 6 Devuelve el valor de la comisión de mayor valor que existe en la tabla vendedores.
SELECT nombre, apellido, MAX(comisión) MAYOR_VALOR FROM ventas.vendedores;
-- 7 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo cuitcuil no es NULL. El listado deberá estar ordenado alfabéticamente por apellido y nombre.
SELECT id,nombre, apellido, cuitcuil FROM ventas.clientes WHERE cuitcuil IS NOT NULL ORDER BY nombre
-- 8 Devuelve un listado de los nombres de los clientes que empiezan por “A” y terminan por “n” y también los nombres que empiezan por “P”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre ASC
-- 9 Devuelve un listado de los nombres de los clientes que no empiezan por “A”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC
-- 10 Devuelve un listado con los nombres de los vendedores que terminan por “el” o “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT * FROM ventas.vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o' ORDER BY nombre ASC
-- 11 Devuelve un listado con el identificador, nombre y apellido de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos. 
SELECT c.nombre, c.apellido, p.id, p.fecha, p.cantidad FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC 
-- 12 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC
-- 13 Devuelve un listado que muestre todos los pedidos en los que ha participado un vendedor. El resultado debe mostrar todos los datos de los pedidos y de los vendedores. El listado debe mostrar los datos de los vendedores ordenados alfabéticamente.
SELECT DISTINCT v.nombre, v.apellido, p.fecha, p.cantidad, p.id_vendedor FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id_vendedor ORDER BY v.nombre
-- 14 Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los vendedores asociados a cada pedido.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p, ventas.vendedores v WHERE c.id=p.id_cliente AND p.id=v.id ORDER BY c.nombre
-- 15 Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2022, cuyo monto esté entre $300 y $1000.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad BETWEEN 300 AND 1000 AND fecha>='2022-00-00'
-- 1 Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM ventas.pedidos ORDER BY fecha DESC
-- 2 Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM ventas.pedidos ORDER BY cantidad DESC LIMIT 2
-- 3 Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT distinct id_cliente, fecha FROM ventas.pedidos 
-- 4 Devuelve un listado de todos los pedidos que se realizaron durante el año 2022, cuya cantidad total sea superior a $500.
SELECT * FROM ventas.pedidos WHERE cantidad>500 AND fecha>'2022-00-00'
-- 5 Devuelve un listado con el nombre y apellido de los vendedores que tienen una comisión entre 0.05 y 0.11.
SELECT * FROM ventas.vendedores WHERE comisión BETWEEN 0.05 AND 0.11
-- 6 Devuelve el valor de la comisión de mayor valor que existe en la tabla vendedores.
SELECT nombre, apellido, MAX(comisión) MAYOR_VALOR FROM ventas.vendedores;
-- 7 Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo cuitcuil no es NULL. El listado deberá estar ordenado alfabéticamente por apellido y nombre.
SELECT id,nombre, apellido, cuitcuil FROM ventas.clientes WHERE cuitcuil IS NOT NULL ORDER BY nombre
-- 8 Devuelve un listado de los nombres de los clientes que empiezan por “A” y terminan por “n” y también los nombres que empiezan por “P”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre LIKE 'A%' AND nombre LIKE '%n' OR nombre LIKE 'P%' ORDER BY nombre ASC
-- 9 Devuelve un listado de los nombres de los clientes que no empiezan por “A”. El listado deberá estar ordenado alfabéticamente.
SELECT * FROM ventas.clientes WHERE nombre NOT LIKE 'A%' ORDER BY nombre ASC
-- 10 Devuelve un listado con los nombres de los vendedores que terminan por “el” o “o”. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT * FROM ventas.vendedores WHERE nombre LIKE '%el' OR nombre LIKE '%o' ORDER BY nombre ASC
-- 11 Devuelve un listado con el identificador, nombre y apellido de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos. 
SELECT c.nombre, c.apellido, p.id, p.fecha, p.cantidad FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC 
-- 12 Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM ventas.clientes c , ventas.pedidos p WHERE c.id=p.id ORDER BY nombre ASC
-- 13 Devuelve un listado que muestre todos los pedidos en los que ha participado un vendedor. El resultado debe mostrar todos los datos de los pedidos y de los vendedores. El listado debe mostrar los datos de los vendedores ordenados alfabéticamente.
SELECT DISTINCT v.nombre, v.apellido, p.fecha, p.cantidad, p.id_vendedor FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id_vendedor ORDER BY v.nombre
-- 14 Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los vendedores asociados a cada pedido.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p, ventas.vendedores v WHERE c.id=p.id_cliente AND p.id=v.id ORDER BY c.nombre
-- 15 Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2022, cuyo monto esté entre $300 y $1000.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad BETWEEN 300 AND 1000 AND fecha>='2022-00-00'
-- 16 Devuelve el nombre y apellido de todos los vendedores que han participado en algún pedido realizado por María Santana.
SELECT * FROM ventas.clientes c  INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND c.nombre='María'
-- 17 Devuelve el nombre de todos los clientes que han realizado algún pedido con el vendedor Daniel Sáez
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND id_vendedor=1
-- 18 Devuelve un listado con todos los clientes junto con los datos de los pedidos que han realizado. Este listado también debe incluir los clientes que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el apellido y nombre de los clientes.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente ORDER BY c.nombre
-- 19 Devuelve un listado con todos los vendedores junto con los datos de los pedidos que han realizado. Este listado también debe incluir los vendedores que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el apellido y nombre de los vendedores.
SELECT * FROM ventas.vendedores v INNER JOIN ventas.pedidos p WHERE v.id=p.id ORDER BY v.nombre
-- 20 Devuelve un listado que solamente muestre los clientes que no han realizado ningún pedido.
SELECT * FROM ventas.clientes c WHERE c.id NOT IN (SELECT p.id_cliente FROM ventas.pedidos p);
-- 21 Devuelve un listado que solamente muestre los vendedores que no han realizado ningún pedido.
SELECT * FROM ventas.vendedores v WHERE v.id NOT IN (SELECT p.id_vendedor FROM ventas.pedidos P);
-- 22 Devuelve un listado con los clientes que no han realizado ningún pedido y de los vendedores que no han participado en ningún pedido. Ordene el listado alfabéticamente por el apellido y el nombre. En el listado deberá diferenciar de algún modo los clientes y los vendedores.
SELECT vendedores.nombre, vendedores.apellido, '' AS cliente_id, vendedores.id AS vendedor_id FROM ventas.pedidos RIGHT JOIN ventas.vendedores ON ventas.pedidos.id_vendedor=ventas.vendedores.id WHERE ventas.pedidos.id_vendedor IS NULL
UNION
SELECT clientes.nombre, clientes.apellido, clientes.id AS cliente_id,'' FROM ventas.pedidos RIGHT JOIN ventas.clientes ON ventas.pedidos.id_cliente=ventas.clientes.id WHERE ventas.pedidos.id_cliente IS NULL
-- 23 Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
SELECT SUM(cantidad) SUMA_TOTAL FROM ventas.pedidos;
-- 24 Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
SELECT AVG(cantidad) PROMEDIO FROM ventas.pedidos;
-- 25 Calcula el número total de vendedores distintos que aparecen en la tabla pedido.
SELECT COUNT(id) CANTIDAD_VENDEDORES FROM ventas.vendedores;
-- 26 Calcula el número total de clientes que aparecen en la tabla cliente.
SELECT COUNT(id) CANTIDAD_CLIENTES FROM ventas.clientes;
-- 27 Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
SELECT MAX(cantidad) MAYOR_VALOR FROM ventas.pedidos;
-- 28 Calcula cuál es la menor cantidad que aparece en la tabla pedido.
SELECT MIN(cantidad) MENOR_VALOR FROM ventas.pedidos;
-- 29 Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
SELECT MAX(clientes.categoría) MAXIMO_CATEGORIA, clientes.ciudad FROM ventas.clientes GROUP BY ciudad
-- 30 Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha re lizado un pedido. Muestra el identificador del cliente, nombre, apellido, la fecha y el valor de la cantidad.
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente GROUP BY p.fecha ORDER BY p.cantidad AND MAX(p.cantidad);
-- 31 Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de $2000 .
SELECT * FROM ventas.clientes c INNER JOIN ventas.pedidos p WHERE c.id=p.id_cliente AND p.cantidad>2000 GROUP BY p.fecha ORDER BY p.cantidad AND MAX(p.cantidad)
-- 32 Calcula el máximo valor de los pedidos realizados para cada uno de los vendedores durante la fecha 2021-08-17. Muestra el identificador del vendedor, nombre, apellido y total.
SELECT * FROM ventas.pedidos p INNER JOIN ventas.vendedores v WHERE v.id=p.id_vendedor AND p.fecha='2021-08-17' GROUP BY v.id ORDER BY p.cantidad DESC 
-- 33 Devuelve un listado con el identificador de cliente, nombre y apellido y el número total de pedidos que ha realizado cada uno de los clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0
SELECT COUNT(*)AS CANTIDAD, clientes.nombre, clientes.apellido, clientes.id AS cliente_id, MAX(pedidos.cantidad) AS CANTIDAD FROM ventas.pedidos RIGHT JOIN ventas.clientes ON ventas.pedidos.id_cliente=ventas.clientes.id WHERE ventas.pedidos.id_cliente IS NULL OR ventas.pedidos.id_cliente=ventas.clientes.id GROUP BY clientes.id 
-- 34 Devuelve un listado con el identificador de cliente, nombre, apellido y el número total de pedidos que ha realizado cada uno de clientes durante el año 2020.
SELECT c.id, c.nombre, c.apellido, COUNT(*) AS TOTAL_PEDIDO FROM ventas.pedidos p INNER JOIN ventas.clientes c WHERE c.id=p.id_cliente AND p.fecha BETWEEN '20200000' AND '20210000' GROUP BY c.id
-- 35 Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.
SELECT YEAR(p.fecha) AS AÑO, c.nombre, c.apellido, MAX(p.cantidad) AS PEDIDO_MAXIMO FROM ventas.pedidos p INNER JOIN ventas.clientes c WHERE c.id=p.id_cliente AND p.fecha GROUP BY c.id 
-- 36 Devuelve el número total de pedidos que se han realizado cada año.
SELECT YEAR(p.fecha) AS AÑO, c.nombre, c.apellido, COUNT(p.id) AS TOTAL_PEDIDO FROM ventas.pedidos p INNER JOIN ventas.clientes c WHERE c.id=p.id_cliente AND p.fecha GROUP BY c.id 
-- 37 Devuelve un listado con todos los pedidos que ha realizado Adela Salas. (Sin utilizar INNER JOIN).
SELECT * FROM ventas.pedidos p JOIN ventas.clientes c WHERE c.id=p.id_cliente AND c.nombre='Adela'
SELECT clientes.nombre, clientes.apellido, pedidos.fecha, pedidos.cantidad FROM ventas.pedidos, ventas.clientes WHERE clientes.id=pedidos.id_cliente AND clientes.nombre='Adela'
-- 38 Devuelve el número de pedidos en los que ha participado el vendedor Daniel Sáe. (Sin utilizar INNER JOIN)
SELECT * FROM ventas.vendedores JOIN ventas.pedidos WHERE  vendedores.id=pedidos.id_vendedor AND vendedores.apellido='Sáez'
SELECT vendedores.nombre,vendedores.apellido, COUNT(vendedores.id) AS TOTAL_VENTAS FROM ventas.vendedores, ventas.pedidos WHERE  vendedores.id=pedidos.id_vendedor AND vendedores.apellido='Sáez'
-- 39 Devuelve los datos del cliente que realizó el pedido más caro en el año 2020. (Sin utilizar INNER JOIN)
SELECT clientes.nombre, clientes.apellido, pedidos.fecha, pedidos.cantidad, MAX(pedidos.cantidad) AS AÑO_2020 FROM ventas.pedidos, ventas.clientes WHERE clientes.id=pedidos.id_cliente AND pedidos.fecha BETWEEN 20190000 AND 20210000
-- 40 Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.
SELECT clientes.nombre, clientes.apellido, pedidos.fecha, pedidos.cantidad, MIN(pedidos.cantidad) AS MENOR FROM ventas.pedidos, ventas.clientes WHERE clientes.id=pedidos.id_cliente AND clientes.nombre='Pepe'
-- 41 Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT * FROM ventas.clientes WHERE clientes.id NOT IN (SELECT pedidos.id_cliente FROM ventas.pedidos);
-- 42 Devuelve un listado de los vendedores que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT * FROM ventas.vendedores WHERE vendedores.id NOT IN (SELECT pedidos.id_vendedor FROM ventas.pedidos);
-- 43 Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT * FROM ventas.clientes AS c WHERE NOT EXISTS(SELECT * FROM ventas.pedidos AS p WHERE c.id=p.id_cliente);
-- 44 Devuelve un listado de los vendedores que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT * FROM ventas.vendedores AS v WHERE NOT EXISTS(SELECT * FROM ventas.pedidos AS p WHERE v.id=p.id_vendedor);























