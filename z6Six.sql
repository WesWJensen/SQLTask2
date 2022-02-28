--List the cheapest book (price) of every author (first_name, last_name). If an author does not have books, display -1 as the price.
SELECT  authors.first_name,
        authors.last_name,
        bookDetails.price
        FROM a.authors
        JOIN d.bookDetails
        ORDER BY d.price;

        --6. This one contained a bit of everything mentioned above. All the mistakes are repeated here. 
--The trick here is to 
--a) use left join to get records that are missing for linked table (e.g. authors without books)
--b) group by author
--c) use agg (min/ max) functions to display author details (first-, lastname)
--d) use coalesce, to display default value (-1) when the actual value is null

SELECT (COALESCE(NULL, '-1'), authors.first_name, authors.last_name, bookDetails.price)
    FROM a.authors
    LEFT JOIN b.books ON b.author_id = a.id
    JOIN d.bookDetails ON d.book_id = b.id 
    GROUP BY a.id
    ORDER BY d.price ASC

    --Coalesce check, newer idea, understand diff between ISNULL and coalesce and use.
    --LEFT join would catch the missing records before adding book details? As, LEFT join is already grabbing all missing from books and JOIN is a simple connection?
    --SYNTAX and places for MIN/MAX

    