-- Count the number of books associated with the author
SELECT A.AU_FNAME, AU_LNAME, COUNT(W.BOOK_NUM) AS Number_of_Books
-- Get the author data from author
FROM AUTHOR A
LEFT JOIN WRITES W ON A.AU_ID = W.AU_ID
GROUP BY A.AU_FNAME, A.AU_LNAME
-- ordering by descending order
ORDER BY Number_of_Books DESC;
