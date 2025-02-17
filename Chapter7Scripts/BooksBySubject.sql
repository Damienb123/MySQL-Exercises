-- select the needed data from the tables
SELECT author.AU_FNAME, author.AU_LNAME, book.BOOK_TITLE, book.BOOK_SUBJECT
FROM author
-- join the writes data to retrieve author's who have written certain books
INNER JOIN Writes ON Author.AU_ID = Writes.AU_ID
-- join the book data to retrieve book titles and subjects, ordering by subject
INNER JOIN Book ON Writes.BOOK_NUM = book.BOOK_NUM
-- order by book subject
ORDER BY BOOK_SUBJECT;

