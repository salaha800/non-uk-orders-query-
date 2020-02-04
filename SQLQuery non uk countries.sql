SELECT        dbo.sales_order_header.release_date, dbo.sales_order_header.channel, dbo.sales_order_header.order_number, dbo.sales_order_header.total_order_value, 
                         dbo.Sales_Order_Detail.order_line_number, dbo.Sales_Order_Detail.customer_services_product_type, dbo.sales_order_header.store_number, 
                         dbo.sales_order_header.home_country_code, dbo.Sales_Order_Detail.mnemonic, dbo.Sales_Order_Detail.failed_fabric_allocation
FROM            dbo.sales_order_header INNER JOIN
                         dbo.Sales_Order_Detail ON dbo.sales_order_header.order_number = dbo.Sales_Order_Detail.order_number
WHERE        (dbo.sales_order_header.release_date > CONVERT(DATETIME, '2019-05-12 00:00:00', 102)) AND (dbo.sales_order_header.channel = '3') AND 
                         (dbo.sales_order_header.home_country_code <> 'GB')