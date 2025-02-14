SELECT
	COUNT(DISTINCT line.INV_NUMBER) AS "Total Invoices",  -- Total number of invoices --
    SUM(line.LINE_UNITS * line.LINE_PRICE) AS "Total Sales",  -- Total sales from all invoices --
    MIN(line.LINE_UNITS * line.LINE_PRICE) AS "Smallest Purchase",  -- Smallest purchase amount --
    MAX(line.LINE_UNITS * line.LINE_PRICE) AS "Largest Purchase",   -- Largest purchase amount --
    AVG(line.LINE_UNITS * line.LINE_PRICE) AS "Average Purchase"   -- Average purchase amount --
FROM line
JOIN invoice ON line.INV_NUMBER = invoice.INV_NUMBER  -- Join line items with invoice to get the relevant sales data --