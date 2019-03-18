
CREATE TABLE shop
(
	id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),
    address VARCHAR(500),
    telephone VARCHAR(10),
    
    CONSTRAINT shop_pk PRIMARY KEY(id)
);

CREATE TABLE item
(
	code VARCHAR(30),
    
    quantity INT,
    description VARCHAR(200),
    gross_price DOUBLE,
    net_price DOUBLE,
    price DOUBLE,
    discount_amount INT,
    est_net_profit DOUBLE,
    net_profit  DOUBLE,
    shop_id INT,
    
	CONSTRAINT pk_item PRIMARY KEY(code),
    CONSTRAINT fk_item FOREIGN KEY(shop_id) REFERENCES shop(id) ON DELETE CASCADE 
);

CREATE TABLE temp_barcode_data
(
	code VARCHAR(30),
    price DOUBLE,
    quantity INT,
    
    CONSTRAINT pk_tem_barcode_data PRIMARY KEY(code),
    CONSTRAINT fk_tem_barcode_data FOREIGN KEY(code) REFERENCES item(code) ON DELETE CASCADE
);

CREATE TABLE users
(
	id INT AUTO_INCREMENT NOT NULL, 
	fname VARCHAR(30),
    lname VARCHAR(30),
    username VARCHAR(30),
    password VARCHAR(30),
    role VARCHAR(30),
 
     CONSTRAINT user_pk PRIMARY KEY(id)
);


CREATE TABLE bank_accounts
(
	id INT AUTO_INCREMENT NOT NULL, 
	bank_name VARCHAR(30),
    account_number VARCHAR(30),
    account_type VARCHAR(30),
    current_balance VARCHAR(30),
 
     CONSTRAINT bank_account_pk PRIMARY KEY(id,bank_name,account_number)
9);


CREATE TABLE bank_deposites
(
	id INT AUTO_INCREMENT NOT NULL,
	date DATE,
	amount double,
	account int,
	
	CONSTRAINT deposite_pk PRIMARY KEY (id),
	CONSTRAINT account_fk FOREIGN KEY(account) REFERENCES bank_accounts(id) ON DELETE CASCADE
)

CREATE TABLE employee
(
    empNo VARCHAR(20),
    empName VARCHAR(50),
    empAddress VARCHAR(100),
    basicSalary DOUBLE,
    jobDate VARCHAR(20),
    contactNum VARCHAR(10),
    gContactNum VARCHAR(10),
    
	CONSTRAINT pk_item PRIMARY KEY(empNo)
 );
 
 CREATE TABLE p_expenditures
(
	
    id INT AUTO_INCREMENT NOT NULL, 
    date VARCHAR(20),
    reason VARCHAR(50),
    amount DOUBLE,
    
    
	CONSTRAINT pk_item PRIMARY KEY(id)
 );
 
  CREATE TABLE shop_expenditures
(
	
    id INT AUTO_INCREMENT NOT NULL, 
    billNo INT,
    name VARCHAR(20),
    date VARCHAR(20),
    reason VARCHAR(50),
    amount DOUBLE,
    
    
	CONSTRAINT pk_item PRIMARY KEY(id)
 );

//Credit Bill
CREATE TABLE credit_bill
(
	id INT AUTO_INCREMENT NOT NULL,
	billNo VARCHAR(20),
	billDate VARCHAR(20),
	shopName VARCHAR(20),
	
	
	CONSTRAINT credit_bill_pk PRIMARY KEY (id),
	CONSTRAINT credit_bill_fk FOREIGN KEY(shopName) REFERENCES shop(id) ON DELETE CASCADE
	
);


//create cash payment


CREATE TABLE cash_payment
(
	id INT AUTO_INCREMENT NOT NULL,
	billNo VARCHAR(20),
	billDate VARCHAR(20),
	shopName VARCHAR(20),
	billAmount DOUBLE,
	paymentDate VARCHAR(20),
	
	CONSTRAINT cash_payment_pk PRIMARY KEY (id),
	CONSTRAINT cash_payment_fk FOREIGN KEY(shopName) REFERENCES shop(id) ON DELETE CASCADE
	
);

CREATE TABLE paid_bill
(
	id INT AUTO_INCREMENT NOT NULL,
	billNo VARCHAR(20),
	billDate VARCHAR(20),
	shopName VARCHAR(20),
	billAmount DOUBLE,
	paymentDate VARCHAR(20),
	paymentMethod VARCHAR(20),
	
	CONSTRAINT paid_bill_pk PRIMARY KEY (id),
	CONSTRAINT paid_bill_fk FOREIGN KEY(shopName) REFERENCES shop(id) ON DELETE CASCADE
	
);


CREATE TABLE cheque_payment
(
	id INT AUTO_INCREMENT NOT NULL,
	billNo VARCHAR(20),
	billDate VARCHAR(20),
	shopNo VARCHAR(20),
	shopName VARCHAR(20),
	bankName VARCHAR(20),
	bankAccount VARCHAR(20),
	chequeNo VARCHAR(20),
	chequeAmount DOUBLE,
	chequeDate VARCHAR(20),
	paymentDate VARCHAR(20),
	paymentAmount DOUBLE,
	
	CONSTRAINT cheque_payment_pk PRIMARY KEY (id),
	CONSTRAINT cheque_payment_fk FOREIGN KEY(shopName) REFERENCES shop(id) ON DELETE CASCADE
	
);
