CREATE DATABASE Webshop



CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(40) NOT NULL,
    customer_tel VARCHAR(20),
    customer_email VARCHAR(50) NOT NULL UNIQUE,
    address_id INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_users_address
        FOREIGN KEY (address_id)
        REFERENCES Addresses(address_id)
);

CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(60) NOT NULL,
    city VARCHAR(40) NOT NULL,
    postal_code VARCHAR(15) NOT NULL,
    country VARCHAR(40) NOT NULL
);



CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id)
);
