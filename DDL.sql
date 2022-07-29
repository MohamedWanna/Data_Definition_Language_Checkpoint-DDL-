CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY (Product_id),
    Product_name VARCHAR2(20) NOT NULL,
    Price NUMBER CONSTRAINT CHK_Person CHECK (Price>0)
);
ALTER TABLE Product ADD Category VARCHAR2(20);

CREATE TABLE Customer(
    Cumtomer_id VARCHAR2(20) CONSTRAINT pk_Customer PRIMARY KEY(Customer_id),
    Customer_Name VARCHAR2 NOT NULL,
    Customer_Tel NUMBER
);

CREATE TABLE Orders(
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE();
