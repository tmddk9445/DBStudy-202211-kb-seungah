SELECT
	course_id,
	SUM(score) AS '총합',
	AVG(score) AS '평균'
FROM
	score_mst
GROUP BY
	course_id
HAVING
	`총합` > 100;
	
/*--------------------------*/
SELECT
	product_name, 
	COUNT(order_id),
	SUM(stock),
	MIN(stock),
	MAX(stock),
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
GROUP BY
	product_name;

/*--------------------------*/
SELECT
	product_name,
	sum(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
	
/*--------------------------*/
SELECT
	product_name,
	price * stock AS total_price
FROM
	order_mst;
	
/*--------------------------*/
# max가 100이상인 것을 구하고 싶을 때 (쿼리문의 순서)

SELECT
	product_name,
	COUNT(order_id) AS order_count, 
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS max_stock,
	SUM(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock > 50
GROUP BY
	product_name
HAVING
	max_stock > 49
ORDER BY
	order_count desc,
	stock_sum desc
LIMIT 1;

/*--------------------------*/
SELECT
	*
FROM
	order_mst
LIMIT 3, 3;


	
	
	
	
	
	
	
	
	
	
	