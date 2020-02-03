#Springboot-MyBatis-MySQL

## 1. MySQL 세팅
'''sql
-- DDL(create, drop, alter)
-- 유저이름@ip주소
create user 'spring'@'%' identified by 'bitc5600'; 
create database spring;

-- DCL (grant, revoke)
-- on DB이름.테이블명
-- *.* : jsp유저의 모든 DB와 테이블에 권한을 준다.
grant all privileges on spring.* to 'spring'@'%';

CREATE TABLE mem(
    id int AUTO_INCREMENT PRIMARY KEY,
    username varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    email varchar(100),
    createDate timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
'''

## 2. JSTL 태그 라이브러리
'''jsp
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
'''