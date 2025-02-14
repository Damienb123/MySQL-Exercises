SELECT
    customer.CUS_FNAME AS "Customer First Name",  -- Customer First Name"
    customer.CUS_LNAME AS "Customer Last Name",  -- Customer Last Name"
    customer.CUS_PHONE AS "Phone Number"  -- Customer's phone number
FROM customer
LEFT JOIN invoice ON customer.CUS_CODE = invoice.CUS_CODE  -- Left join with invoice table to find customers who have placed orders
LEFT JOIN line ON invoice.INV_NUMBER = line.INV_NUMBER      -- Left join with line table to check for any purchased items
WHERE invoice.INV_NUMBER IS NULL  -- Only include customers who have never placed an order (no invoices)
AND line.INV_NUMBER IS NULL;    -- Ensure no line items (purchases) exist for these customers
