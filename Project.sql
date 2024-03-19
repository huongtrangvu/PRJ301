
USE [MyShop_Project]
GO

/****** Object:  Table [dbo].[category]    Script Date: 3/8/2024 5:53:36 PM ******/

CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[category_name] [varchar](255) NOT NULL,
)
GO



/****** Object:  Table [dbo].[product]    Script Date: 3/8/2024 5:53:36 PM ******/

CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[category_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_price] [money] NOT NULL,
	[product_describe] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](50) NOT NULL,
	[rating] [float] null,
	FOREIGN KEY ([category_id]) REFERENCES [dbo].[category]([category_id]),
)
GO


/****** Object:  Table [dbo].[product_image]    Script Date: 3/8/2024 5:53:36 PM ******/
CREATE TABLE [dbo].[product_image](
[product_id] [int] NOT NULL,
[product_image] [nvarchar](50) NOT NULL,
FOREIGN KEY ([product_id]) REFERENCES [dbo].[product]([product_id]) ON DELETE CASCADE
)


/****** Object:  Table [dbo].[product_size]    Script Date: 3/8/2024 5:53:36 PM ******/

CREATE TABLE [dbo].[product_size](
	[product_id] [int] NOT NULL,
	[size] [nvarchar](50) NOT NULL,
	FOREIGN KEY ([product_id]) REFERENCES [dbo].[product]([product_id]) ON DELETE CASCADE
) 
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/8/2024 5:53:36 PM ******/
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_email] [varchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[user_cost] [money] null,
	[isAdmin] [nvarchar](50) NULL,
)
GO

/****** Object:  Table [dbo].[bill]    Script Date: 3/8/2024 5:53:36 PM ******/
CREATE TABLE [dbo].[bill](
	[bill_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[user_id] [int] NOT NULL,
	[total] [money] NOT NULL,
	[address] [ntext] NOT NULL,
	[date] [date] NOT NULL,
	[phone] [nvarchar](11) NOT NULL,
	FOREIGN KEY ([user_id]) REFERENCES [dbo].[users]([user_id])
)
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 3/8/2024 5:53:36 PM ******/

CREATE TABLE [dbo].[bill_detail](
	[detail_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[bill_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[size] [nchar](10) NOT NULL,
	[price] [money] NOT NULL,
	FOREIGN KEY ([bill_id]) REFERENCES [dbo].[bill]([bill_id]) ON DELETE CASCADE,
	FOREIGN KEY ([product_id]) REFERENCES [dbo].[product]([product_id]) ON DELETE CASCADE
)
GO

/****** Object:  Table [dbo].[review] ******/
create table [dbo].[review] (
	[review_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[user_id] [int] not null,
	[ordered_product_id] [int] not null,
	[rating_value] [int] null,
	[comment] [ntext],
	FOREIGN KEY ([user_id]) REFERENCES [dbo].[users]([user_id]),
	FOREIGN KEY (ordered_product_id) REFERENCES [dbo].[product]([product_id]) ON DELETE CASCADE
)
go


/****** Object:  Table [dbo].[cart]    Script Date: 3/8/2024 5:53:36 PM ******/

CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(1,1) primary key NOT NULL,
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[size] [nchar](10) NOT NULL,
	[product_img] [varchar](255) NOT NULL,
	[product_price] [money] NOT NULL,
	[total] [money] NOT NULL,
	[quantity] [int] NOT NULL,
	FOREIGN KEY ([user_id]) REFERENCES [dbo].[users]([user_id]),
	FOREIGN KEY ([product_id]) REFERENCES [dbo].[product]([product_id]) ON DELETE CASCADE

)
GO

alter table cart drop column total

ALTER TABLE [dbo].[product_image]
ALTER COLUMN [product_image] [nvarchar](250) NOT NULL;

ALTER TABLE [dbo].[product] ADD CONSTRAINT FK_Product_Category FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[product]

ALTER COLUMN [img] [nvarchar](250) NOT NULL;

ALTER TABLE [dbo].[product_size]
ADD [size_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL;

ALTER TABLE [dbo].[cart]
ALTER COLUMN [product_name] [nvarchar](255) 
