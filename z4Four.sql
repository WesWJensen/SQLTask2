--Select how many books are from USA authors.
SELECT COUNT(*)
    FROM b.books
    JOIN a.authors ON authors.id=books.author_id
    JOIN c.countries ON authors.country_id=countries.id 
    WHERE c.code = "USA";

    --4. Again, missing join with countries to be able to filter by country code

    --reworked to fit the connection for country code exclusively
