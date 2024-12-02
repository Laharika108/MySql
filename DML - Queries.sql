-- DML
-- insert
insert  into person_details values(101, "laharika", "Karupalli", 1231231230);
insert into person_details (person_id, person_firstname, person_lastname) values (102, "Pawan" , "Peyyala");
insert into person_details values
(
103,
"Sindhu",
"Divvi",
232323230
),
(
104,
"Neelima",
"Kundrapu",
454545459
),
(
105,
"Shannnu",
"Shaik",
434343437
);

-- update
UPDATE person_details set person_phnno = 1231231230 where person_id = 102;
-- UPDATE person_details SET person_city = 'Newyork';
-- UPDATE person_details SET person_city = 'Atlanta' WHERE person_id = 103;
UPDATE person_details SET person_phnno = '1112221112' WHERE person_id = '104';

-- delete
delete from person_details WHERE person_id =104


