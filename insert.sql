/* 
C(create)R(read)U(update)D(delete)
 
INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D

데이터 베이스는 소,대문자 구분을 하지 않는다. 
(카멜표기법을 쓰지 않는다. 스네이크 표기법 사용)
DB에서는 큰따옴표 사용X - 작은따옴표 사용
*/

INSERT INTO product_mst
(id, product_name, product_price)
VALUES
(0, '스타벅스 블루 머그컵', 20000), /*하나의 쿼리문 */
(0, '스타벅스 핑크 머그컵', 25000),
(0, '스타벅스 퍼플 머그컵', 10000);
/* id 값에 0을 넣은 이유는 : increment 값이기 때문에 */
/* 실행시에 커서가 실행문 안에 있어야 한다. */
/* 
하얀글씨 : 명령어
INTO 와 VALUES의 순서가 같아야 한다. 
명령어 단위로 끊거나 컬럼 단위로 끊은 뒤에 들여 쓰기를 해준다. 
쿼리문 안에 쿼리문이 들어있을 때(서브문) - 선택실행을 사용한다.*/

SELECT 
	id, 
	product_name, 
	product_price 
FROM product_mst; /* 세미클론 안에서 ctrl shift f9 : 현재 쿼리문 실행 */

INSERT INTO student_mst
/*(id, name, student_year, score)*/
VALUES
(0, '임지현',1 ,80),
(0, '신경수',2 ,90),
(0, '고희주',3 ,75),
(0, '문승주',1 ,85),
(0, '장건녕',2 ,95),
(0, '박수현',3 ,90),
(0, '황석민',1 ,80),
(0, '박준현',2 ,85),
(0, '이승아',3 ,90),
(0, '김수현',1 ,75);

SELECT
	`name`,
	score
FROM
	student_mst;
	
SELECT
	*
FROM
	student_mst
WHERE
	score > 85;

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 2 AND score >= 90
	OR (student_year = 3 AND score = 75);



SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` LIKE '%수%'
	AND `name` NOT LIKE '%수';
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year NOT IN(2, 3); 
	

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	score not BETWEEN 80 AND 90;

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS not NULL;

/*-------------------------------------------------*/	
UPDATE 
	student_mst 
SET 
	score = 80 
WHERE 
	`name` = '박준현';
	
SELECT
	*
FROM
	student_mst
WHERE
	`name` = '박준현';
	
/* 2학년 중에 성적이 80에서 90사이인 학생들의 점수를 100으로 바꿔라 */
UPDATE 
	student_mst 
SET 
	score = 100 
WHERE 
	student_year = 2 
	AND score BETWEEN 80 AND 90;
	
/*-------------------------------------------------*/

SELECT
	*
FROM
	student_mst;
	
DELETE
FROM 
	student_mst
WHERE 
	score < 80;
	
SELECT
	*
FROM
	student_mst;




















