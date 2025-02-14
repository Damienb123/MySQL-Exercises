SELECT 
    product.P_DESCRIPT AS "Product_Description",
	product.P_QOH AS "Quantity_on_Hand",
    product.P_PRICE AS "Price_Per_Unit",
    (product.P_QOH * product.P_PRICE) AS "Subtotal"
FROM 
    Product;
