CREATE DATABASE Webshop



CREATE TABLE Users(
    UserId INT(3),
    customer_name VARCHAR(40),
    customer_tel VARCHAR(20),
    customer_email VARCHAR(30),
    address_id INT(30),

    PRIMARY KEY(UserId)
    FOREIGN KEY(customer_id) references Orders(/*"másik tábla primary"*/)
);


