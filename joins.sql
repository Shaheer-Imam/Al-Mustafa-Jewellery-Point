--emplyees that are admin
select * from employee WHERE user_type = 'admin';
--employees that are cashier
select * from employee where user_type = 'cashier';


--orders with products and customer details
select orders.order_date,customer.customer_name,customer.customer_phone,
customer.customer_address,order_product.order_product_quantity as quantity,
product.product_type,product.product_carat, product.product_price_of_gold,
product.product_rate, product.product_unitprice, product.product_weight
from customer,orders,order_product,product
where orders.order_id = order_product.order_id
and order_product.order_product_id = product.product_id
and orders.customer_id = customer.customer_id;


--invoice with product and suplier details
select supplier.supplier_name,supplier.supplier_phone, invoice.invoice_date,
invoice.invoice_rate, invoice.invoice_amount, product.product_type, invoice_product.invoice_product_quantity,
product.product_carat,product.product_weight,product.product_rate,product.product_price_of_gold,product.product_unitprice
from invoice, invoice_product,product,supplier
where invoice.invoice_id = invoice_product.invoice_id
and invoice_product.invoice_product_id = product.product_id
and invoice.supplier_id = supplier.supplier_id;


--no of orders of a product vs quantity


select count(op.order_id) as orders,p.product_type as product, p.product_quantity as quantity , p.product_weight as weight from order_product op left join
product p on  op.product_id = p.product_id group by p.product_type,p.product_quantity,p.product_weight;


--no of invoices of product vs quantity

select count(ip.invoice_id) as invoces,p.product_type as product, p.product_quantity as quantity , p.product_weight as weight from invoice_product ip left join
product p on  ip.product_id = p.product_id group by p.product_type,p.product_quantity,p.product_weight;


--supliers and their account details

select supplier_name,supplier_phone,account_balance,account_gold,account_rate 
from supplier,accounts
where supplier.supplier_id = accounts.supplier_id;


--supliers and account details with invoice details

select supplier.supplier_name, supplier.supplier_phone,accounts.account_balance,
accounts.account_gold,accounts.account_rate, invoice.invoice_date,
invoice.invoice_rate,invoice.invoice_amount
from accounts,invoice,invoice_account,supplier
where accounts.account_id  = invoice_account.account_id
and accounts.supplier_id = supplier.supplier_id
and invoice_account.invoice_id = invoice.invoice_id;


--sales with order info and customer info

select customer.customer_name,customer.customer_phone,customer.customer_address,
orders.order_date,orders.order_amount
from sales,sales_order,orders,customer
where sales_order.sales_id = sales.sales_id
and sales_order.order_id = orders.order_id
and customer.customer_id = sales.customer_id;



