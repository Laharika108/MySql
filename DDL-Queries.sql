CREATE DATABASE demodb;
SHOW DATABASES;
USE demodb;
CREATE TABLE person_details (
    person_id INT,
    person_firstname VARCHAR(20),
    person_lastname VARCHAR(20),
    person_phnno INT
);
desc person_details;
alter table person_details add column person_city varchar(20);
desc person_details;
alter table person_details modify column person_city varchar(30);
desc person_details;
alter table person_details drop column person_city ;
desc person_details;
drop table person_details;
desc person_details;