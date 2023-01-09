/* 데이터베이스 create */
create database board;
use board;

/* 
Member
이메일
비밀번호
닉네임
프로필 사진
전화번호 
주소
*/

create table MEMBER (
	email varchar(50) primary KEY,
    password varchar(20) NOT NULL,
    nickname VARCHAR(20) NOT NULL,
    profile varchar(255),
    tel_number VARCHAR(20) NOT NULL,
    address TEXT NOT NULL
);