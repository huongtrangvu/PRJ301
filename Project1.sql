insert into category values (N'Áo thun')
insert into category values (N'Áo n? & Hoodie')
insert into category values (N'Áo khoác & blazer')
insert into category values (N'Qu?n jeans')
insert into category values (N'Qu?n legging')
insert into category values (N'Chân váy')
select * from category
select * from product
delete from category
ALTER TABLE [dbo].[category]
ALTER COLUMN [category_name] [nvarchar](250) NOT NULL;

insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (7,N'Áo Thun SUPIMA COTTON C? Tròn Ng?n Tay','293000',N'100% bông SUPIMA® cao c?p. Ph?n thân và tay áo dài h?n m?t chút t?o c?m giác tôn dáng.', '20','images/thun_01.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (7,N'AIRism Áo Thun Ch?ng UV Dài Tay (Ch?ng N?ng)','489000','Smooth and super stretchy. An easy way to protect your skin from the sun.', '45','images/thun_02.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (7,N'AIRism Cotton Áo Thun Dáng Relax Ng?n Tay','253000', 'AIRism fabric with the look of cotton. Relaxed, boxy cut.', '20','images/thun_03.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (7,N'Áo Thun C? Tròn Ng?n Tay','293000',N'Ch?t v?i và ???ng may ??p m?t, t? m?. Cho b?n c?m giác m?n màng c?a 100% cotton.', '20','images/thun_04.png')

insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (8,N'AIRism Áo Khoác Khóa Kéo Ch?ng UV V?i M?t L??i (Ch?ng N?ng)','686000',N'Hoodie l??i c?p nh?t v?i thi?t k? b? túi. M?t chi?c áo khoác ti?n d?ng và ?a n?ng b?n có th? mang theo b?t c? n?i nào. UPF50+.', '49','https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/456261/sub/vngoods_456261_sub7.jpg?width=750')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (8,N'Qu?n N?','588000',N'Ch?t li?u 100% cotton có l?p lót lông c?u m?m m?i. V?a v?n r?ng rãi tôn dáng.', '40','https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/465782/item/vngoods_00_465782.jpg?width=750')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (8,N'Studio Ghibli Áo N? Dài Tay','784000', N'B? s?u t?p kh?c h?a v? tr? Studio Ghibli ?a d?ng và ??c ?áo ?ã ??n v?i UT.', '50','https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/466801/item/goods_01_466801.jpg?width=750')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (8,N'Áo Khoác N? Siêu Co Giãn Có M? Kéo Khóa Dài Tay','784000',N'V?i n? ch?t l??ng cao k?t h?p v?i l?p lót ch?ng vón c?c. Thi?t k? hi?n ??i c?a chúng tôi ???c l?y c?m h?ng trên chi?c áo n? truy?n th?ng.', '60','https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/466765/item/vngoods_01_466765.jpg?width=750')

insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (9,N'Áo Thun SUPIMA COTTON C? Tròn Ng?n Tay','293000',N'100% bông SUPIMA® cao c?p. Ph?n thân và tay áo dài h?n m?t chút t?o c?m giác tôn dáng.', '20','images/thun_01.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (9,N'AIRism Áo Thun Ch?ng UV Dài Tay (Ch?ng N?ng)','489000','Smooth and super stretchy. An easy way to protect your skin from the sun.', '45','images/thun_02.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (9,N'AIRism Cotton Áo Thun Dáng Relax Ng?n Tay','253000', 'AIRism fabric with the look of cotton. Relaxed, boxy cut.', '20','images/thun_03.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (9,N'Áo Thun C? Tròn Ng?n Tay','293000',N'Ch?t v?i và ???ng may ??p m?t, t? m?. Cho b?n c?m giác m?n màng c?a 100% cotton.', '20','images/thun_04.png')

insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'Áo Thun SUPIMA COTTON C? Tròn Ng?n Tay','293000',N'100% bông SUPIMA® cao c?p. Ph?n thân và tay áo dài h?n m?t chút t?o c?m giác tôn dáng.', '20','images/thun_01.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'AIRism Áo Thun Ch?ng UV Dài Tay (Ch?ng N?ng)','489000','Smooth and super stretchy. An easy way to protect your skin from the sun.', '45','images/thun_02.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'AIRism Cotton Áo Thun Dáng Relax Ng?n Tay','253000', 'AIRism fabric with the look of cotton. Relaxed, boxy cut.', '20','images/thun_03.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'Áo Thun C? Tròn Ng?n Tay','293000',N'Ch?t v?i và ???ng may ??p m?t, t? m?. Cho b?n c?m giác m?n màng c?a 100% cotton.', '20','images/thun_04.png')

insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'Áo Thun SUPIMA COTTON C? Tròn Ng?n Tay','293000',N'100% bông SUPIMA® cao c?p. Ph?n thân và tay áo dài h?n m?t chút t?o c?m giác tôn dáng.', '20','images/thun_01.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'AIRism Áo Thun Ch?ng UV Dài Tay (Ch?ng N?ng)','489000','Smooth and super stretchy. An easy way to protect your skin from the sun.', '45','images/thun_02.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'AIRism Cotton Áo Thun Dáng Relax Ng?n Tay','253000', 'AIRism fabric with the look of cotton. Relaxed, boxy cut.', '20','images/thun_03.png')
insert into product(category_id, product_name, product_price, product_describe, quantity, img) values (1,N'Áo Thun C? Tròn Ng?n Tay','293000',N'Ch?t v?i và ???ng may ??p m?t, t? m?. Cho b?n c?m giác m?n màng c?a 100% cotton.', '20','images/thun_04.png')


select * from users

insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Huong Trang', 'huongtrangvu9@gmail.com', '1234', '0', 'TRUE')
insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Van', 'hoangvan@gmail.com', '123', '0', 'FALSE')
insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Ngoc Mai', 'mai@gmail.com', '1234', '0', 'FALSE')
insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Hung', 'abc@gmail.com', '12345', '0', 'FALSE')
insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Trinh', 'trinh@gmail.com', '1234', '0', 'FALSE')
insert into users([user_name], user_email, user_pass, user_cost, isAdmin) values ('Quynh', 'nhuquynh@gmail.com', '1234', '0', 'FALSE')


select * from product_size
insert into product_size values (5, 'S')
insert into product_size values (5, 'M')
insert into product_size values (5, 'L')
insert into product_size values (6, 'S')
insert into product_size values (6, 'M')
insert into product_size values (6, 'L')
insert into product_size values (6, 'XL')
insert into product_size values (7, 'XS')
insert into product_size values (7, 'S')
insert into product_size values (8, 'M')
insert into product_size values (8, 'L')

select * from product_image

insert into product_image values (5,'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/468503/sub/vngoods_468503_sub7.jpg?width=750')
insert into product_image values (5,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/468503/sub/goods_468503_sub14.jpg?width=750')
insert into product_image values (5,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/468503/sub/goods_468503_sub17.jpg?width=750')
insert into product_image values (6,'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/466587/sub/vngoods_466587_sub9.jpg?width=750')
insert into product_image values (6,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/466587/sub/goods_466587_sub14.jpg?width=750')
insert into product_image values (6,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/466587/sub/goods_466587_sub17.jpg?width=750')
insert into product_image values (7,'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/466581/sub/vngoods_466581_sub7.jpg?width=750')
insert into product_image values (7,'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/466581/sub/vngoods_466581_sub9.jpg?width=750')
insert into product_image values (7,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/466581/sub/goods_466581_sub14.jpg?width=750')
insert into product_image values (8,'https://image.uniqlo.com/UQ/ST3/vn/imagesgoods/424873/sub/vngoods_424873_sub7.jpg?width=750')
insert into product_image values (8,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/sub/goods_424873_sub14.jpg?width=750')
insert into product_image values (8,'https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/424873/sub/goods_424873_sub17.jpg?width=750')

select * from bill

insert into bill values (2, '782000', 'Tran Lieu Hai Duong', '2023-12-03', '032476823')
insert into bill values (3, '742000', 'Nguyen Trai Hai Phong', '2024-01-13', '078234683')
insert into bill values (4, '546000', 'Hoan Kiem Ha Noi', '2024-02-03', '074672273')


select * from bill_detail

insert into bill_detail values (4, 5, 1, 'S', '293000')
insert into bill_detail values (4, 6, 1, 'M', '489000')
insert into bill_detail values (5, 6, 1, 'S', '489000')
insert into bill_detail values (5, 7, 1, 'S', '253000')
insert into bill_detail values (6, 7, 1, 'S', '253000')
insert into bill_detail values (6, 8, 1, 'L', '293000')

select * from review 

insert into review values (2,5,5, 'Ao dep lam nha moi nguoi')
insert into review values (2,6,4, 'Ao on, chat vai mat')
insert into review values (3,6,5, 'Ao dep mac rat thich')
insert into review values (3,7,3, 'Ao de ban, chat vai nong')
insert into review values (4,7,4, 'Ao dep nhung chat vai xau')
insert into review values (4,8,5, 'Rat thich chiec ao nay, se mua lai lan sau')

select * from cart 




