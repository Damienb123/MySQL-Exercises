-- How much does a book cost? Getting the subject and title from table BOOK
SELECT BOOK_TITLE, BOOK_SUBJECT, BOOK_COST 
FROM BOOK
-- Order books by subject and cost
ORDER BY BOOK_SUBJECT, BOOK_COST asc;

