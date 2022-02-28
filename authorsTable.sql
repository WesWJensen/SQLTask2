CREATE TABLE authors (
    id int,
    createdAt TIMESTAMP;
    updatedAt TIMESTAMP; 
    first_name varchar(100),
    last_name varchar(100),
    FOREIGN KEY (country_id) REFERENCES countries(id)
);

