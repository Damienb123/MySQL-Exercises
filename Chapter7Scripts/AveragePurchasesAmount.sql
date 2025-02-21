SELECT
	customer.CUS_LNAME AS "Last Name", -- customer last name from customer table --
	customer.CUS_FNAME AS "Firt Name", -- customer first name from customer table--
    SUM(line.LINE_UNITS * line.LINE_PRICE) AS "Total Purchases", -- Get the sum of the subtotals --
    COUNT(DISTINCT line.LINE_NUMBER) AS "Number of Purchases", -- Get the total orders placed from the total purchased --
    AVG(line.LINE_UNITS * LINE_PRICE) AS "Average Purchases Amount" -- Get the  average purchase amount from line units and line price --
FROM customer
-- join the 'invoice' table on customer code to link each to their invoice --
INNER JOIN invoice ON customer.CUS_CODE = invoice.CUS_CODE
-- Join the 'line' table on invoice number to get the details of each line item in an invoice
INNER JOIN line ON invoice.INV_NUMBER = line.INV_NUMBER
-- Join the 'product' table on product code to get the product description for each line item
INNER JOIN product ON line.P_CODE = product.P_CODE
GROUP BY customer.CUS_FNAME, customer.CUS_LNAME -- Group the query by the given parameters of customer information --
ORDER BY customer.CUS_FNAME, customer.CUS_LNAME;  -- Sorting by customer code, invoice number, and product description -- 