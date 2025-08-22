show databases;
create database csc;
use csc;
CREATE TABLE IF NOT EXISTS accounts (
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
desc flowers;
CREATE TABLE IF NOT EXISTS flowers (
id INT(11) PRIMARY KEY NOT NULL auto_increment,
region char(5) default "Both",
indout varchar(7) default "Either",
care varchar(6) NOT NULL) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
select * from flowers;