CREATE TABLE bookDetails (
    id int,
    createdAt TIMESTAMP;
    updatedAt TIMESTAMP; 
    price decimal(10, 2),
    discount decimal(10, 2), 
    isHardCopy boolean,
    FOREIGN KEY (book_id) REFERENCES books(id)
);
