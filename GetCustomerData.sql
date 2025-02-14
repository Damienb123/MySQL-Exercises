-- Select the customer code, invoice number, invoice date, product description, line units, and line price
SELECT 
    customer.CUS_CODE AS Customer_code,   -- Customer code from the 'customer' table
    line.INV_NUMBER,                      -- Invoice number from the 'line' table
    invoice.INV_DATE,                     -- Invoice date from the 'invoice' table
    product.P_DESCRIPT AS Product_description, -- Product description from the 'product' table
    line.LINE_UNITS,                      -- Units of product purchased from the 'line' table
    line.LINE_PRICE                       -- Price of each line item from the 'line' table
FROM customer
-- Join the 'invoice' table on customer code to link each customer to their invoices
INNER JOIN invoice ON customer.CUS_CODE = invoice.CUS_CODE
-- Join the 'line' table on invoice number to get the details of each line item in an invoice
INNER JOIN line ON invoice.INV_NUMBER = line.INV_NUMBER
-- Join the 'product' table on product code to get the product description for each line item
INNER JOIN product ON line.P_CODE = product.P_CODE
-- Sort the results by customer code, then invoice number, and finally by product description
ORDER BY customer.CUS_CODE, line.INV_NUMBER, product.P_DESCRIPT;
