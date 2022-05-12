-- drop table Consumer_Info;
-- drop table Product_Info;
-- drop table Vendor_Info;
-- drop table Consumer_Address;
-- drop table Basket;
-- drop table Order_List;
-- drop table Favorite_List;
-- drop table Product_Review;
-- drop table Advertising;

﻿CREATE TABLE `Consumer_Info` (
	`id` INT NOT NULL,
	`consumer_email` VARCHAR(50)	NOT NULL,
	`consumer_pwd`	VARCHAR(100)	NOT NULL,
	`consumer_name`	VARCHAR(10)	NOT NULL,
	`consumer_phone`	VARCHAR(10)	NOT NULL
);

CREATE TABLE `Product_Info` (
	`product_id`	INT	NOT NULL,
	`vendor_id`	INT	NOT NULL,
	`product_name`	VARCHAR(50)	NOT NULL,
	`product_image`	VARCHAR(100)	NOT NULL,
	`product_main_category`	VARCHAR(20)	NOT NULL,
	`product_middle_category`	VARCHAR(20)	NOT NULL,
	`product_subcategory`	VARCHAR(20)	NOT NULL,
	`product_brand`	VARCHAR(20)	NULL,
	`product_price`	INT	NOT NULL,
	`product_discount`	INT	NOT NULL,
	`product_quantity`	INT	NOT NULL,
	`shipping_fee`	INT	NOT NULL,
	`shipping_free_price`	INT	NOT NULL,
	`shipping_time`	VARCHAR(20)	NOT NULL,
	`shipping_way`	VARCHAR(20)	NOT NULL
);

CREATE TABLE `Consumer_Address` (
	`address_id`	INT	NOT NULL,
	`consumer_id`	INT	NOT NULL,
	`receiver_name`	VARCHAR(10)	NOT NULL,
	`receiver_address`	VARCHAR(50)	NOT NULL,
	`receiver_phone`	VARCHAR(10)	NOT NULL,
	`request`	VARCHAR(30)	NULL,
	`access_number`	VARCHAR(10)	NULL
);

CREATE TABLE `Product_Review` (
	`review_id`	INT	NOT NULL,
	`consumer_id`	INT	NOT NULL,
	`product_id`	INT	NOT NULL,
	`review_summary`	VARCHAR(10)	NULL,
	`review_contents`	BLOB	NULL,
	`review_image`	VARCHAR(100)	NULL,
	`review_rating`	INT	NOT NULL,
	`review_date`	DATE	NOT NULL,
	`vendor_id`	INT	NOT NULL
);

CREATE TABLE `Order_List` (
	`order_id`	INT	NOT NULL,
	`consumer_id`	INT	NOT NULL,
	`product_id`	INT	NOT NULL,
	`order_quantity`	INT	NOT NULL,
	`vendor_id`	INT	NOT NULL
);

CREATE TABLE `Basket` (
	`consumer_id`	INT	NOT NULL,
	`product_id`	INT	NOT NULL,
	`order_quantity`	INT	NOT NULL,
	`vendor_id`	INT	NOT NULL
);

CREATE TABLE `Advertising` (
	`ad_id`	INT	NOT NULL,
	`product_id`	INT	NOT NULL,
	`vendor_id`	INT	NOT NULL
);

CREATE TABLE `Favorite_List` (
	`consumer_id`	INT	NOT NULL,
	`product_id`	INT	NOT NULL,
	`vendor_id`	INT	NOT NULL
);

CREATE TABLE `Vendor_Info` (
	`id`	INT	NOT NULL,
	`vendor_name`	VARCHAR(50)	NOT NULL,
	`vendor_registration_number`	VARCHAR(10)	NOT NULL,
	`vendor_phone`	VARCHAR(10)	NOT NULL
);

ALTER TABLE `Consumer_Info` ADD CONSTRAINT `PK_CONSUMER_INFO` PRIMARY KEY (
	`id`
);

ALTER TABLE `Product_Info` ADD CONSTRAINT `PK_PRODUCT_INFO` PRIMARY KEY (
	`product_id`,
	`vendor_id`
);

ALTER TABLE `Consumer_Address` ADD CONSTRAINT `PK_CONSUMER_ADDRESS` PRIMARY KEY (
	`address_id`,
	`consumer_id`
);

ALTER TABLE `Product_Review` ADD CONSTRAINT `PK_PRODUCT_REVIEW` PRIMARY KEY (
	`review_id`,
	`consumer_id`
);

ALTER TABLE `Order_List` ADD CONSTRAINT `PK_ORDER_LIST` PRIMARY KEY (
	`order_id`,
	`consumer_id`
);

ALTER TABLE `Basket` ADD CONSTRAINT `PK_BASKET` PRIMARY KEY (
	`consumer_id`
);

ALTER TABLE `Advertising` ADD CONSTRAINT `PK_ADVERTISING` PRIMARY KEY (
	`ad_id`,
	`product_id`,
	`vendor_id`
);

ALTER TABLE `Favorite_List` ADD CONSTRAINT `PK_Favorite_LIST` PRIMARY KEY (
	`consumer_id`
);

ALTER TABLE `Vendor_Info` ADD CONSTRAINT `PK_VENDOR_INFO` PRIMARY KEY (
	`id`
);

ALTER TABLE `Product_Info` ADD CONSTRAINT `FK_Vendor_Info_TO_Product_Info_1` FOREIGN KEY (
	`vendor_id`
)
REFERENCES `Vendor_Info` (
	`id`
);

ALTER TABLE `Consumer_Address` ADD CONSTRAINT `FK_Consumer_Info_TO_Consumer_Address_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`id`
);

ALTER TABLE `Product_Review` ADD CONSTRAINT `FK_Consumer_Info_TO_Product_Review_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`id`
);

ALTER TABLE `Order_List` ADD CONSTRAINT `FK_Consumer_Info_TO_Order_List_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`id`
);

ALTER TABLE `Basket` ADD CONSTRAINT `FK_Consumer_Info_TO_Basket_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`id`
);

ALTER TABLE `Advertising` ADD CONSTRAINT `FK_Product_Info_TO_Advertising_1` FOREIGN KEY (
	`product_id`
)
REFERENCES `Product_Info` (
	`product_id`
);

ALTER TABLE `Advertising` ADD CONSTRAINT `FK_Product_Info_TO_Advertising_2` FOREIGN KEY (
	`vendor_id`
)
REFERENCES `Product_Info` (
	`vendor_id`
);

ALTER TABLE `Favorite_List` ADD CONSTRAINT `FK_Consumer_Info_TO_Favorite_List_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`id`
);

