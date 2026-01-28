CREATE TABLE Orders (
    OrderID int NOT NULL AUTO_INCREMENT,
    OrderDate DateTime,
    UserID int,
    ProductID int,
    PRIMARY KEY(OrderID),
    FOREIGN KEY (UserID) REFERENCES users(UserID),
    FOREIGN KEY (ProductID) REFERENCES products(ProductID)
    );