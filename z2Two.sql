--List authors (id, first_name, last_name, country_name) where country code is the USA.:
SELECT * 
    FROM a.authors 
    JOIN c.countries ON a.country_id=c.id
    WHERE c.code="USA";

    --2. You mentioned DB schema does not match the task (ID vs country code).
--The authors table does not contain country code - so join with countries table is needed. 
--That was part of the task, to find that connection.

--Reworked connection for c.code, slipped my mind that id was NOT code