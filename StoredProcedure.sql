-- step 1 : create the stored procedure

delimiter //
CREATE PROCEDURE demodb.add_person(id INT, firstname VARCHAR(20), lastname VARCHAR(20))
BEGIN
	INSERT INTO person_details VALUES (id, firstname, lastname);
END //
delimiter ;

-- step 2 : call the stored procedure
CALL demodb.add_person(120, "NT", "Ramarao");
SELECT * FROM person_details;