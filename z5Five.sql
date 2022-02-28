--Select books (title, isbn, discount, price) where 20 <= discount <=30, order by price increasing.
SELECT * 
    FROM b.books
    JOIN d.bookDetails
    WHERE (20<=d.discount)
    AND (d.discount<=30.00)
    ORDER BY d.price ASC;

    --5. Correct. You could've used BETWEEN 20 AND 30 syntax, might be a bit cleaner, but it's not important here.

    SELECT * 
    FROM b.books
    JOIN d.bookDetails
    WHERE d.discount BETWEEN 20 AND 30
    ORDER BY d.price ASC;

    --Just an implementation of rec