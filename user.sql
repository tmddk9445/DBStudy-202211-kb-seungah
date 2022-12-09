INSERT INTO 
	user_mst /* user_mst에 값을 넣을 때 트리거를 통해서 user_dtl에 입력값이 부여된다. */
VALUES 
	(0, 'bbb', '1234', '홍길동', 'bbb@gmail.com', NOW(), NOW()), /* NOW함수 - 현재 날짜, 시간을 알려주는 함수 */
	(0, 'aaa', '1234', '홍길동', 'aaa@gmail.com', NOW(), NOW()),
	(0, 'ccc', '1234', '홍길동', 'bbb@gmail.com', NOW(), NOW()),
	(0, 'ddd', '1234', '홍길동', 'bbb@gmail.com', NOW(), NOW());
	
DELETE
from
	user_mst
WHERE
	id = 1;
	
	
