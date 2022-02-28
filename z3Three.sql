--List authors(id, first_name, last_name, country_name)  with books. Order by the number of books descending.
SELECT authors.id, authors.first_name, authors.last_name, authors.country_name, books.title, COUNT(books.author_id)
    FROM a.authors
    JOIN b.books ON b.author_id = a.id
    GROUP BY (a.id)
    ORDER BY 2 DESC;

    --3. First of all, syntax is not right, as you are missing on which fields you are joining tables.
--Furthermore, you should've listed just the required fields, not all.
--Most importantly you are missing group by, so that you can get totals for the author, but also author details

SELECT books.author_id, count(*)
FROM books 
JOIN authors ON authors.id=books.author_id
GROUP BY (books.author_id)
ORDER BY 2 DESC; 

--two different thoughts here, specifically for count + grabbing fields