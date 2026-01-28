CREATE DATABASE Webshop



CREATE TABLE Users(
    UserId INT,
    customer_name VARCHAR(40),
    customer_tel VARCHAR(20),
    customer_email VARCHAR(30),
    address_id INT,

    PRIMARY KEY(UserId),
    INDEX(customer_id),
    FOREIGN KEY(customer_id) 
);


