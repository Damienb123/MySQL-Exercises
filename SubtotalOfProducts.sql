/*prior to question 2 - change the CUS_CODE to the customers first 
and last name but also ordered by the name
*/
SELECT
	customer.CUS_FNAME AS "Firt Name", -- customer first name from customer table--
    customer.CUS_LNAME AS "Last Name", -- customer last name from customer table --
    line.INV_NUMBER,                      -- Invoice number from the 'line' table --
    product.P_DESCRIPT AS Product_description, -- Product description from the 'product' table --
    line.LINE_UNITS AS "Units Bought", -- Alias for units bought --
    line.LINE_PRICE AS "Unit Price", -- Alias for unit price --
    (line.LINE_UNITS * line.LINE_PRICE) AS "Subtotal" -- subtotal calculated using line units and line price --
    
FROM customer
-- join the 'invoice' table on customer code to link each to their invoice --
INNER JOIN invoice ON customer.CUS_CODE = invoice.CUS_CODE
-- Join the 'line' table on invoice number to get the details of each line item in an invoice
INNER JOIN line ON invoice.INV_NUMBER = line.INV_NUMBER
-- Join the 'product' table on product code to get the product description for each line item
INNER JOIN product ON line.P_CODE = product.P_CODE
ORDER BY customer.CUS_FNAME, customer.CUS_LNAME, line.INV_NUMBER, product.P_DESCRIPT;  -- Sorting by customer code, invoice number, and product description -- 