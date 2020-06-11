create database Aquamarin
go

use Aquamarin
go

create table Brand
(
	IDBrand int primary key identity,
	BrandName nvarchar(100) not null
)

create table Product
(
	IDProduct int primary key identity,
	BrandID int not null,
	ProductName nvarchar(150) not null,
	Price decimal(5,2) not null,
	ProductDescription nvarchar(500) not null,
	IsHighlighted bit not null,

	CONSTRAINT FK_Product_Brand FOREIGN KEY (BrandID)
		REFERENCES Brand(IDBrand)
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

/*

delete from Product

*/