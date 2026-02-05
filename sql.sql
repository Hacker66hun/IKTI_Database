CREATE TABLE Roles (
    RoleID int NOT NULL AUTO_INCREMENT,
    RoleName varchar,
    PRIMARY KEY(RoleID)
);

CREATE TABLE Products (
    ProductID int NOT NULL AUTO_INCREMENT,
    ProductName varchar,
    Price decimal,
    Stock int,
    PRIMARY KEY(ProductID)
);


CREATE TABLE Orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    OrderDate DateTime,
    UserID int,
    ProductID int,
    PRIMARY KEY(OrderID),
    FOREIGN KEY (UserID) REFERENCES users(UserID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
    );

