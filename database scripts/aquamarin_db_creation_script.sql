--create database Aquamarin
--go

use Aquamarin
go

create table Brand
(
	IDBrand int primary key identity,
	BrandName nvarchar(100) not null
)

create table ProductCategory
(
	IDCategory int primary key identity,
	CategoryName nvarchar(100)
)

create table Product
(
	IDProduct int primary key identity,
	BrandID int not null,
	CategoryID int not null,
	ProductName nvarchar(150) not null,
	Price decimal(5,2) not null,
	ProductDescription nvarchar(500) not null,
	IsHighlighted bit not null,

	CONSTRAINT FK_Product_Brand FOREIGN KEY (BrandID)
		REFERENCES Brand(IDBrand),
	CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryID)
		REFERENCES ProductCategory(IDCategory)
)

create table ProductImage
(
	IDProductImage int primary key identity,
	ProductID int not null,
	ImagePath nvarchar(max) not null,
	PrimaryImage bit not null,

	CONSTRAINT FK_Product_Image FOREIGN KEY (ProductID)
		REFERENCES Product(IDProduct)
)

create table ProductColor
(
	IDProductColor int primary key identity,
	ProductID int not null,
	ColorName nvarchar(40) not null, 
	ColorHex nvarchar(7) not null,
	ImageID int,

	CONSTRAINT FK_Product_Color FOREIGN KEY (ProductID)
		REFERENCES Product(IDProduct),
	CONSTRAINT FK_Image_Color FOREIGN KEY (ImageID)
		REFERENCES ProductImage(IDProductImage),
)

create table UserData
(
	IDUser int primary key identity,
	Username nvarchar(64) not null,
	Pwd nvarchar(265) not null,
	UserRole nvarchar(20) not null,
)

create table OrderDetails
(
	IDOrder int primary key identity,
	UserID int not null,
	OrderDate Date not null,
	TotalPrice decimal(7,2) not null,
	UserAddress nvarchar(300) not null,
	PhoneNr nvarchar(30) not null,
	PaymentMethod nvarchar(20) not null,

	CONSTRAINT FK_Order_User FOREIGN KEY (UserID)
		REFERENCES UserData(IDUser)
)

create table OrderProduct
(
	IDOrderProduct int primary key identity,
	OrderID int not null,
	ProductID int not null,
	Quantity int not null,

	CONSTRAINT FK_OrderProduct_Purchase FOREIGN KEY (OrderID)
		REFERENCES OrderDetails(IDOrder),
	CONSTRAINT FK_OrderProduct_Product FOREIGN KEY (ProductID)
		REFERENCES Product(IDProduct)
)

create table AuthenticationLog
(
	IDAuthenticationLog int primary key identity,
	UserID int not null,
	AuthDateTime datetime not null,
	IPAddress nvarchar(50) not null,

	CONSTRAINT FK_Log_User FOREIGN KEY (UserID)
		REFERENCES UserData(IDUser)
)

/*

delete from Product

drop table AuthenticationLog

select * from ProductCategory

*/