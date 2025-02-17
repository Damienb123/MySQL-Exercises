-- Gather the book title and cost from the table to order
SELECT BOOK_TITLE, BOOK_COST
FROM BOOK
-- Find all book titles that cost $59.95
WHERE BOOK_COST = "59.95";