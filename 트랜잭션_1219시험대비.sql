/*
	TCL 트랜잭션 control language
    
    1. COMMIT - 트랜잭션 확정
    
    2. ROLLBACK - 트랜잭션 취소
    
    3. SAVEPOINT - (트랜잭션) 중간지점 저장
*/

set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transation_study;

	create table `transaction_study`.`emp_mst` (
	`id` INT not null auto_increment,
	`name` varchar(15) default null,
    primary key (`id`)
);

/* DDL은 트랜잭션과 상관없다.
DML일 때 상관있다. */

select @@autocommit;

start transaction; 
savepoint p1;

insert into emp_mst
values
	(0, '김준일'),
	(0, '신경수'),
	(0, '고희주'),
	(0, '장건녕');
    
select * from emp_mst;

savepoint p2;

update emp_mst
set
	`name` = '문승주'
where
	id = 4;

select * from emp_mst;
rollback to p2;

rollback to p1;
select * from emp_mst;

commit;






