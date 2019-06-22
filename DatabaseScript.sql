/*** SEQUENCES ***/


 CREATE SEQUENCE CUSTOMER_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE USER_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE PRODUCT_SEQ 
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE ORDER_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE ORDERPROD_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE SALES_SEQ 
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;
 
 CREATE SEQUENCE SUPPLIER_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE INVOICE_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE INVOICEPROD_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

 CREATE SEQUENCE ACCOUNT_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20; 

 CREATE SEQUENCE INVOICEACC_SEQ
  MINVALUE 1
  START WITH 1
  INCREMENT BY 1
  CACHE 20;

/*** END OF SEQUENCES ***/

/*** TABLES ***/

CREATE TABLE Customer(
 customer_id NUMBER(38,0) NOT NULL,
 customer_name VARCHAR2(100) NOT NULL,
 customer_address VARCHAR2(100) NOT NULL,
 customer_phone VARCHAR2(15) NOT NULL,
 CONSTRAINT customer_pk PRIMARY KEY(customer_id)
);

CREATE TABLE User(
 user_id NUMBER(38,0) NOT NULL,
 user_name VARCHAR2(100) NOT NULL,
 user_type VARCHAR2(50) NOT NULL,
 user_phone VARCHAR2(15) NOT NULL,
 user_password VARCHAR2(30) NOT NULL UNIQUE,
 CONSTRAINT user_pk PRIMARY KEY(user_id)
);

CREATE TABLE Product(
 product_id NUMBER(38,0) NOT NULL,
 product_type VARCHAR2(20) NOT NULL,
 product_karat NUMBER(38,0) NOT NULL,
 product_weight NUMBER(38,0) NOT NULL,
 product_rate NUMBER(38,0) NOT NULL,
 product_unitprice NUMBER(38,0) NOT NULL,
 product_price_of_gold NUMBER(38,0) NOT NULL,
 product_quantity NUMBER(38,0) NOT NULL,
 CONSTRAINT product_pk PRIMARY KEY(product_id)
);

CREATE TABLE Order(
 order_id NUMBER(38,0) NOT NULL,
 order_date VARCHAR2(20) NOT NULL,
 order_quantity NUMBER(38,0) NOT NULL,
 order_amount NUMBER(38,0) NOT NULL,
 customer_id NUMBER(38,0) NOT NULL,
 CONSTRAINT order_pk PRIMARY KEY(order_id),
 CONSTRAINT fk_customer FOREIGN KEY(customer_id)
 REFERENCES Customer(customer_id) 
);

CREATE TABLE Order_Product(
 order_product_id NUMBER(38,0) NOT NULL,
 order_product_quantity NUMBER(38,0) NOT NULL,
 order_id NUMBER(38,0) NOT NULL,
 product_id NUMBER(38,0) NOT NULL,
 CONSTRAINT order_product_pk PRIMARY KEY(order_product_id),
 CONSTRAINT fk_order FOREIGN KEY(order_id)
 REFERENCES Order(order_id),
 CONSTRAINT fk_product FOREIGN KEY(product_id)
 REFERENCES Product(product_id)
);

CREATE TABLE Sales(
 sales_id NUMBER(38,0) NOT NULL,
 customer_id NUMBER(38,0) NOT NULL,
 CONSTRAINT sales_pk PRIMARY KEY(sales_id),
 CONSTRAINT fk_customer FOREIGN KEY(customer_id)
 REFERENCES Customer(customer_id)
);

CREATE TABLE Sales_Order(
 sales_id NUMBER(38,0) NOT NULL,
 order_id NUMBER(38,0) NOT NULL,
 CONSTRAINT fk_sales FOREIGN KEY(sales_id)
 REFERENCES Sales(sales_id),
 CONSTRAINT fk_order FOREIGN KEY(order_id)
 REFERENCES Order(order_id),
 CONSTRAINT sales_order_pk PRIMARY KEY(sales_id,order_id)
);
CREATE TABLE Supplier(
 supplier_id NUMBER(38,0) NOT NULL,
 supplier_name VARCHAR2(50) NOT NULL,
 supplier_phone VARCHAR(20) NOT NULL,
 CONSTRAINT supplier_pk PRIMARY KEY(supplier_id)
);

CREATE TABLE Invoice(
 invoice_id NUMBER(38,0) NOT NULL,
 invoice_amount NUMBER(38,0) NOT NULL,
 invoice_rate NUMBER(38,0) NOT NULL,
 invoice_date VARCHAR(20) NOT NULL,
 supplier_id NUMBER(38,0) NOT NULL,
 CONSTRAINT invoice_pk PRIMARY KEY(invoice_id),
 CONSTRAINT fk_supplier FOREIGN KEY(supplier_id)
 REFERENCES Supplier(supplier_id)
);  

CREATE TABLE Invoice_Product(
 invoice_product_id NUMBER(38,0) NOT NULL,
 invoice_product_quantity NUMBER(38,0) NOT NULL,
 product_id NUMBER(38,0) NOT NULL,
 invoice_id NUMBER(38,0) NOT NULL,
 CONSTRAINT invoice_product_pk PRIMARY KEY(invoice_product_id),
 CONSTRAINT fk_product FOREIGN KEY(product_id)
 REFERENCES Product(product_id),
 CONSTRAINT fk_invoice FOREIGN KEY(invoice_id)
 REFERENCES Invoice(invoice_id)
);

CREATE TABLE Account(
 account_id NUMBER(38,0) NOT NULL,	
 account_balance NUMBER(38,0) DEFAULT NULL,
 account_gold VARCHAR2(50) NOT NULL,
 account_rate NUMBER(38,0) NOT NULL,
 supplier_id NUMBER(38,0) NOT NULL,
 CONSTRAINT account_pk PRIMARY KEY(account_id),
 CONSTRAINT fk_supplier FOREIGN KEY(supplier_id)
 REFERENCES Supplier(supplier_id)
);

CREATE TABLE Invoice_Account(
 invoice_account_id NUMBER(38,0) NOT NULL,
 invoice_id NUMBER(38,0) NOT NULL,
 account_id NUMBER(38,0) NOT NULL,
 CONSTRAINT invoice_account_pk PRIMARY KEY(invoice_account_id),
 CONSTRAINT fk_invoice FOREIGN KEY(invoice_id)
 REFERENCES Invoice(invoice_id),
 CONSTRAINT fk_account FOREIGN ACCOUNT(account_id)
 REFERENCES Account(account_id)
);

/*** END OF TABLES ***/