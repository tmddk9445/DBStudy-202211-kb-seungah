/*

	> 권한의 사용자 계정 root이외의 새로운 계정을 만들고 싶을 때
    
    계정 생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; -> 내부 IP 접속(현재 pc안에서만 접속 가능)
	CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
		> create user 'seungah'@localhost identified by 'root'; (계정 생성)
        > grant all privileges on *.* to seungah@localhost; (권한 부여)
        > flush privileges;
        
	DCL(권한관련)
    1. GRANT(데이터베이스, 테이블 사용자 권한 부여)
		- GRANT 권한 TO 사용자 계정 
        - GRANT 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정 (사용多)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@localhost -> 내부 IP(현재pc에서만 접근 가능)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@% -> 외부IP(다른 pc에서도 접근 가능 %)
            > GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@200.100.% -> 외부IP(해당 ip를 포함하고 있는 pc에서만 접근 가능)
            // 모든 테이블 >> 데이터베이스.*
            
    2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		- REVOKE 권한 TO 사용자 계정 
        - REVOKE 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정 (사용多)
			> REVOKE insert, update, create ON *.* TO root@localhost;(insert, update, create 권한 해제)
            > REVOKE ALL ON *.* TO root@localhost;(모든 권한 해제)
            
	> 권한의 사용자 계정 root이외의 새로운 계정을 만들고 싶을 때
    
*/







