-- Gather author's first and last name including their birth year from author table
SELECT AU_FNAME, AU_LNAME, AU_BIRTHYEAR
FROM AUTHOR
-- get all null valued birth years
WHERE AU_BIRTHYEAR IS NULL;

