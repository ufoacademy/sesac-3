-- 13-having.sql
/*
SQL 실행 순서
1. FROM
2. WHERE
3.GROUP BY
*/
-- 원본 데이터중에 매출 100만원 이상만 가지고 피벗 테이블 만들기

SELECT
	category,
	COUNT(*) AS 주문건수,
	SUM(total_amount) AS 총매출
FROM sales
WHERE total_amount >= 1000000
GROUP BY category;


SELECT
	category,
	COUNT(*) AS 주문건수,
	SUM(total_amount) AS 매출액
FROM sales
GROUP BY category
HAVING SUM(total_amount) >= POWER(10, 7);

-- 활성지역 찾기 --> 지역별
-- 지역, 주무건수, 고객수, 매출액 (고객수 >= 15 and 주문건수 >=20)

SELECT
	region AS 지역,
	COUNT(*) AS 주문건수,
	count(DISTINCT customer_id) as 고객수,
	SUM(total_amount) as 매출액
FROM sales
GROUP BY region
HAVING
|	count(distinct customer_id) >= 15 and
    count(*) >= 20;
	

-- 우수영업 사원 -> 달 평균 매출액 130만원 이상인 영업상원
-- 영업사원, 판매건수, 고객수, 총매출, [활동개월수, 월평균매출]

SELECT
	sales_rep,
	COUNT(*) AS 판매건수,
	count(DISTINCT customer_id) as 고객수,
	SUM(total_amount) as 총매출,
	count(distinct to_char(oder_date, 'YYYY-MM')) as 활동개월수,
	sum(total_amount)::float / count(distinct)

FROM sales
GROUP BY region
HAVING
|	count(distinct customer_id) >= 15 and
    count(*) >= 20;
	


