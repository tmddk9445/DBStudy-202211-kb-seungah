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
/* (id, product_name, product_price) 생략가능 */ /* VALUES에 값이 순서대로 빠짐없이 들어갔을 경우 */
VALUES
(0, '스타벅스 블루 머그컵', 20000), /*하나의 쿼리문 */
(0, '스타벅스 핑크 머그컵', 25000),
(0, '스타벅스 퍼플 머그컵', 10000);
/* id 값에 0을 넣은 이유는 : increment 값이기 때문에 */
/* 실행시에 커서가 실행문 안에 있어야 한다. */
/* 
파란글씨 : 명령어
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
	id,
	`name`, /* 백쿼터 숫자 1 왼쪽 , 기본적으로 제공되어지는 대문자로 자동변환된 키워드가 있는 경우 */
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 AND score > 80 /* 자바와 다르게 '='는 equals 이다.(대입x) */
	OR (student_year = 3	AND score = 75);
	/* and안에 or이 들어갈 경우 괄호를 묶어서 표기를 해준다. */
/* SELECT는 열(선택)의 순서 변경 가능 - 순서 중요 // SELECT는 컬럼이 많아지는 경우가 많아 위의 형식을 지키는 것이 좋다.*/

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	/* LIKE ~처럼 앞에는 어떤 문자열이 와도 상관없다. 맨 뒤에 '주'로 끝나는 값을 찾아라 */
	/* `name` LIKE '%수%'; : 신경수 박수현 김수현의 값이 나온다. -> 신경수를 없애는 법*/
	/* not student_year = 3; !=, not */
	`name` LIKE '%수%' 
	AND `name` not LIKE '%수';
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	/* student_year IN(1, 2); OR을 대신해서IN으로 값을 묶을 수 있다. */
	student_year NOT IN(2, 3); 
	/* 연산자 기호를 쓸 때에는 not이 앞으로, IN, LIKE, BETWEEN과 같은 키워드를 쓸 땐 not을 키워드 바로 앞에쓴다. */

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	/* score BETWEEN 80 AND 90; : 80과 90 사이에 있는 값 : 부등호를 대신하여 사용할 수 있다. */
	score NOT BETWEEN 80 AND 90;

SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
WHERE
	/* `name` IS NULL; */
	`name` IS not NULL; /* 다음 쿼리가 없는 경우 세미클론 생략 가능 (쿼리 구분용) */

/*-------------------------------------------------*/
UPDATE student_mst SET score = 80 WHERE `name` = '박준현';
	
	
/* 2학년 중에 성적이 80에서 90사이인 학생들의 점수를 100으로 바꿔라 */
UPDATE 
	student_mst 
SET 
	score = 100 
WHERE 
	student_year = 2 
	AND score BETWEEN 80 AND 90; /* 쿼리는 대소문자 구분을 하지 않는다.  */

/*-------------------------------------------------*/

DELETE
FROM 
	student_mst
WHERE 
	score < 80;

/* select의 ?? */




















