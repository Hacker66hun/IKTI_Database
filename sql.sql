CREATE DATABASE Webshop

CREATE TABLE Roles (
    RoleID int NOT NULL AUTO_INCREMENT,
    RoleName varchar(255),
    PRIMARY KEY(RoleID)
);

CREATE TABLE Addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(60) NOT NULL,
    city VARCHAR(40) NOT NULL,
    postal_code VARCHAR(15) NOT NULL,
    country VARCHAR(40) NOT NULL
);

CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    RoleID int NOT NULL,
    customer_name VARCHAR(40) NOT NULL,
    customer_tel VARCHAR(20),
    customer_email VARCHAR(50) NOT NULL UNIQUE,
    address_id INT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (address_id) REFERENCES Addresses(address_id),
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleID)
);

CREATE TABLE Products (
    ProductID int NOT NULL AUTO_INCREMENT,
    ProductName varchar(255),
    Price decimal NOT NULL,
    Stock int NOT NULL,
    PRIMARY KEY(ProductID)
);

CREATE TABLE Orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    OrderDate DateTime NOT NULL,
    UserID int NOT NULL,
    ProductID int NOT NULL,
    PRIMARY KEY(OrderID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    payment_method_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL,
    
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
