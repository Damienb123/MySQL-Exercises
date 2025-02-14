-- select the relevant years certain books were published, count the number of books per year
SELECT BOOK_YEAR, COUNT(BOOK_NUM) AS BOOK_COUNT
-- get the year published and the number of books from book table
FROM BOOK
-- Group all books related to the specific published year
GROUP BY BOOK_YEAR
-- Ordered by designated year
ORDER BY BOOK_YEAR;
