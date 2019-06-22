
--data dumping sequence

INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'QADIR','A-1/47 Rizwan Society near Safoorah Goth','03452964176');
INSERT INTO Orders(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,CUSTOMER_SEQ.CURRVAL,'25/06/2019',145000);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Ring',22,4,7300,28000,30000,20);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,ORDER_SEQ.CURRVAL,PRODUCT_SEQ.CURRVAL,1);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,CUSTOMER_SEQ.CURRVAL);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (SALES_SEQ.CURRVAL,ORDER_SEQ.CURRVAL);
commit;



INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'ALI','0315458464'); --marzi hai change karni hai ya nahi
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,SUPPLIER_SEQ.CURRVAL,145000,7300,'25/06/2019');
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,2,PRODUCT_SEQ.CURRVAL,INVOICE_SEQ.CURRVAL);
INSERT INTO ACCOUNTS(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,NULL,'2',7300,SUPPLIER_SEQ.CURRVAL);
INSERT INTO invoice_account(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,INVOICE_SEQ.CURRVAL,ACCOUNT_SEQ.CURRVAL);
commit;






--Enterting customer data into customer table

INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Shaheer','A-1/47 Rizwan Society near Safoorah Goth','03452964176');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Qadir','A9 KDA Safari Terrace Gulshan Iqbal','03491826315');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Akram',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Saad',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Shameer',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Kazim',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Muawiyah',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Saim',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Ahmed',' ',' ');
INSERT INTO Customer(customer_id,customer_name,customer_address,customer_phone) VALUES (CUSTOMER_SEQ.NEXTVAL,'Yasir',' ',' ');

--Entering user data into user table

INSERT INTO employee(user_id,user_name,user_type,user_phone,user_password) VALUES (USER_SEQ.NEXTVAL,'Mubashir','admin','1234567890','mubashir123');
INSERT INTO employee(user_id,user_name,user_type,user_phone,user_password) VALUES (USER_SEQ.NEXTVAL,'Saqib','cashier','0987654321','saqib!@#$');
INSERT INTO employee(user_id,user_name,user_type,user_phone,user_password) VALUES (USER_SEQ.NEXTVAL,'Saadat','cashier','0123456789','linkedlistuser');
INSERT INTO employee(user_id,user_name,user_type,user_phone,user_password) VALUES (USER_SEQ.NEXTVAL,'Asad','cashier','0213456789','asadaliart420');
INSERT INTO employee(user_id,user_name,user_type,user_phone,user_password) VALUES (USER_SEQ.NEXTVAL,'Ali','admin','0321456789','neduetcsit');
commit;

select * from employee;

select * from sales;
--Entering product data into product table

INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Ring',22,3.8,7300,27740,30000,20);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Bangle',22,15,7300,109500,120000,15);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Necklace',22,18,7300,131400,150000,22);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Ring',22,3.5,7300,25550,30000,30);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Necklace',22,20,7300,146000,160000,25);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Earrings',22,4,7300,29200,35000,15);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Tiara',22,2,7300,14600,20000,8);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Brooch',22,9,7300,65700,75000,10);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Earring',22,5,7300,36500,45000,40);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Bangle',22,20,7300,146000,160000,28);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Ring',22,3.5,7300,25500,35000,55);
INSERT INTO Product(product_id,product_type,product_carat,product_weight,product_rate,product_price_of_gold,product_unitprice,product_quantity) VALUES (PRODUCT_SEQ.NEXTVAL,'Necklace',22,20,7300,146000,160000,34);

--Entering order data into order table

INSERT INTO Orders(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,1,'22/06/2019',45000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,3,'25/06/2019',98000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,5,'25/06/2019',40000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,6,'28/06/2019',32000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,7,'30/06/2019',64000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,9,'1/07/2019',50000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,10,'1/07/2019',71000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,11,'4/07/2019',21000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,13,'7/07/2019',15000);
INSERT INTO Order(order_id,customer_id,order_date,order_amount) VALUES (ORDER_SEQ.NEXTVAL,15,'9/07/2019',60000);

--Entering order product data into order product table 

INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,2,4,1);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,3,4,3);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,6,2,1);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,7,8,4);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,9,1,2);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,5,3,4);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,5,6,5);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,4,7,3);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,1,2,2);
INSERT INTO Order_Product(order_product_id,order_id,product_id,order_product_quantity) VALUES (ORDERPROD_SEQ.NEXTVAL,8,5,2);

--Entering sales data into sales table

INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,1);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,2);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,3);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,4);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,5);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,6);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,7);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,8);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,9);
INSERT INTO Sales(sales_id,customer_id) VALUES (SALES_SEQ.NEXTVAL,10);

-- Entering sales order data into sales order table

INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (5,1);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (2,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);
INSERT INTO Sales_Order(sales_id,order_id) VALUES (1,3);

--Entering supplier data into supplier table

INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Hassan','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Rehan','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Basit','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Mohsin','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Bilal','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Arslan','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Junaid','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Zubair','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Amir','');
INSERT INTO Supplier(supplier_id,supplier_name,supplier_phone) VALUES (SUPPLIER_SEQ.NEXTVAL,'Shahzaib','');

--Entering Invoice data into invoice table

INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,2,45000,,'22/06/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,4,50000,,'24/06/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,3,15000,,'27/06/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,1,32000,,'27/06/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,7,43000,,'29/06/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,5,69000,,'1/07/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,6,44000,,'5/07/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,8,55000,,'6/07/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,10,37000,,'9/07/2019');
INSERT INTO Invoice(invoice_id,supplier_id,invoice_amount,invoice_rate,invoice_date) VALUES (INVOICE_SEQ.NEXTVAL,9,12000,,'12/07/2019');

-- Entering invoice product data into invoice product table

INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,3,4,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,2,2,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,5,1,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,7,1,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,1,3,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,2,5,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,2,6,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,4,3,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,5,3,);
INSERT INTO Invoice_Product(invoice_product_id,invoice_product_quantity,product_id,invoice_id) VALUES (INVOICEPROD_SEQ.NEXTVAL,3,2,);

-- Entering account data into account table 

INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,ACCOUNT_SEQ);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);
INSERT INTO(account_id,account_balance,account_gold,account_rate,supplier_id) VALUES (ACCOUNT_SEQ.NEXTVAL,,'',,);

-- Entering Invoice account data into invoice account table

INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
INSERT INTO(invoice_account_id,invoice_id,account_id) VALUES (INVOICEACC_SEQ.NEXTVAL,,);
