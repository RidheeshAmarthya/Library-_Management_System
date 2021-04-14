show databases;
create database library_mangement_system;
use library_mangement_system;
show tables;
create table student(Name varchar(20),student_id varchar(20) primary key,date_of_issue dateTime,date_of_return datetime,book_no integer(5));
create table issue(book_no integer(5),student_id varchar(20),date_of_issue datetime,date_of_return datetime);
create table login_details(username varchar(20) primary key,password varchar(20),admin boolean);
create table admin_details(admin_id varchar(20),Name varchar(20));
CREATE TABLE book_details (
  book_no int NOT NULL AUTO_INCREMENT,
  book_Name varchar(20) NOT NULL,
  author varchar(45) NOT NULL,
  price int NOT NULL,
  publisher varchar(45) NOT NULL,
  book_status tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (book_no)
);
