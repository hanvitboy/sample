alter session set "_oracle_script"=true; --1.유저 생성을 위해 세션 조작.
create user MainDB identified by 1234; --2.MainDB 유저 생성.
grant connect, dba, resource to MainDB; --3.MainDB에 권한을 부여.

create table tbl_member
(IDX number (10) constraint PK_MEM primary key, 
id varchar2(100) unique , 
name varchar2(50) not null, 
pw varchar2(100) not null, 
age number(10) not null, 
height number(10) not null, 
weight number(10) not null, 
gender varchar2(50) not null, 
actindex number(10) not null); 	--4.tbl_member 테이블 생성

ALTER TABLE tbl_member ADD onedaykcal AS ((HEIGHT - 100) * 0.9 * ACTINDEX); --4-1.tbl_member 테이블에 칼로리계산 컬럼 추가

create table TBL_BOARD(
BNO number(10,0) constraint PK_BOARD primary key, 
title varchar2(200) not null, 
content varchar2(2000) not null, 
writer varchar2(50) not null, 
regdate date default sysdate, 
updatedate date default sysdate, 
replycnt number default 0, 
hit number default 0, 
like_count number default 0); --5.tbl_board 테이블 생성

create table tbl_member_rec
(IDX number (10) constraint PK_MEM_REC primary key,
d1 number(10) default 0,
d2 number(10) default 0,
d3 number(10) default 0,
d4 number(10) default 0,
d5 number(10) default 0,
d6 number(10) default 0,
d7 number(10) default 0,
next number(10) default 1); --6.tbl_member_rec 테이블 생성

create table liketable(
ltmid varchar2(100) not null, 
ltbid number not null, 
ltlike number default 0,
FOREIGN KEY(ltmid) REFERENCES tbl_member(id),
FOREIGN KEY(ltbid) REFERENCES tbl_board(bno) ); --7.tbl_member_rec 테이블 생성


CREATE SEQUENCE member_seq START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE member_rec_seq START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 CYCLE;
CREATE SEQUENCE seq_board START WITH 1 INCREMENT BY 1 MAXVALUE 99999999 CYCLE;  --8.메인 테이블 시퀀스 생성


insert into tbl_board(bno,title,content,writer)
(select seq_board.nextval,title,content, writer from tbl_board); --9.게시글 기하급수로 늘리기

select * from tbl_member;
select * from tbl_board;
select * from liketable;
select * from tbl_member_rec; --10. 각 메인테이블 조회


--데이터베이스 셋팅후 최초아이디를 id 를 admin 으로 회원가입 권장