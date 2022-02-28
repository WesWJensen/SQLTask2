CREATE TABLE books (
    id int,
    createdAt TIMESTAMP;
    updatedAt TIMESTAMP; 
    title varchar(255),
    isbn int(13),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
