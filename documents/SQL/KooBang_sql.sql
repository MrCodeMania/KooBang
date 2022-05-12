CREATE TABLE `Consumer_Info` (
	`consumer_id`	Integer	NOT NULL,
	`consumer_email`	varchar(50)	NOT NULL,
	`consumer_pwd`	varchar(100)	NOT NULL,
	`consumer_name`	varchar(10)	NOT NULL,
	`consumer_phone`	varchar(10)	NOT NULL
);

CREATE TABLE `Product_Info` (
	`product_id`	Integer	NOT NULL,
	`vendor_id`	Integer	NOT NULL,
	`product_name`	varchar(50)	NOT NULL,
	`product_image`	varchar(100)	NOT NULL,
	`product_main_category`	varchar(20)	NOT NULL,
	`product_middle_category`	varchar(20)	NOT NULL,
	`product_subcategory`	varchar(20)	NOT NULL,
	`product_brand`	varchar(20)	NULL,
	`product_price`	Integer	NOT NULL,
	`product_discount`	Integer	NOT NULL,
	`product_quantity`	Integerr	NOT NULL,
	`shipping_fee`	Integer	NOT NULL,
	`shipping_free_price`	Integer	NOT NULL,
	`shipping_time`	varchar(20)	NOT NULL,
	`shipping_way`	varchar(20)	NOT NULL
);

CREATE TABLE `Consumer_Address` (
	`address_id`	Integer	NOT NULL,
	`consumer_id`	Integer	NOT NULL,
	`receiver_name`	varchar(10)	NOT NULL,
	`receiver_address`	varchar(50)	NOT NULL,
	`receiver_phone`	varchar(10)	NOT NULL,
	`request`	varchar(30)	NULL,
	`access_number`	varchar(10)	NULL
);

CREATE TABLE `Product_Review` (
	`review_id`	Integer	NOT NULL,
	`consumer_id`	Integer	NOT NULL,
	`product_id`	Integer	NOT NULL,
	`review_summary`	varchar(10)	NULL,
	`review_contents`	blob	NULL,
	`review_image`	varchar(100)	NULL,
	`review_rating`	Integer	NOT NULL,
	`review_date`	datetime	NOT NULL,
	`vendor_id`	Integer	NOT NULL
);

CREATE TABLE `Order_List` (
	`order_id`	Integer	NOT NULL,
	`consumer_id`	Integer	NOT NULL,
	`product_id`	Integer	NOT NULL,
	`order_quantity`	Integer	NOT NULL,
	`vendor_id`	Integer	NOT NULL
);

CREATE TABLE `Basket` (
	`consumer_id`	Integer	NOT NULL,
	`product_id`	Integer	NOT NULL,
	`order_quantity`	Integer	NOT NULL,
	`vendor_id`	Integer	NOT NULL
);

CREATE TABLE `Advertising` (
	`ad_id`	Integer	NOT NULL,
	`product_id`	Integer	NOT NULL,
	`vendor_id`	Integer	NOT NULL
);

CREATE TABLE `Favorites_List` (
	`consumer_id`	Integer	NOT NULL,
	`product_id`	Integer	NOT NULL,
	`vendor_id`	Integer	NOT NULL
);

CREATE TABLE `Vendor_Info` (
	`vendor_id`	Integer	NOT NULL,
	`vendor_name`	varchar(50)	NOT NULL,
	`vendor_registration_number`	varchar(10)	NOT NULL,
	`vendor_phone`	varchar(10)	NOT NULL
);

ALTER TABLE `Consumer_Info` ADD CONSTRAINT `PK_CONSUMER_INFO` PRIMARY KEY (
	`consumer_id`
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

ALTER TABLE `Favorites_List` ADD CONSTRAINT `PK_FAVORITES_LIST` PRIMARY KEY (
	`consumer_id`
);

ALTER TABLE `Vendor_Info` ADD CONSTRAINT `PK_VENDOR_INFO` PRIMARY KEY (
	`vendor_id`
);

ALTER TABLE `Product_Info` ADD CONSTRAINT `FK_Vendor_Info_TO_Product_Info_1` FOREIGN KEY (
	`vendor_id`
)
REFERENCES `Vendor_Info` (
	`vendor_id`
);

ALTER TABLE `Consumer_Address` ADD CONSTRAINT `FK_Consumer_Info_TO_Consumer_Address_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`consumer_id`
);

ALTER TABLE `Product_Review` ADD CONSTRAINT `FK_Consumer_Info_TO_Product_Review_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`consumer_id`
);

ALTER TABLE `Order_List` ADD CONSTRAINT `FK_Consumer_Info_TO_Order_List_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`consumer_id`
);

ALTER TABLE `Basket` ADD CONSTRAINT `FK_Consumer_Info_TO_Basket_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`consumer_id`
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

ALTER TABLE `Favorites_List` ADD CONSTRAINT `FK_Consumer_Info_TO_Favorites_List_1` FOREIGN KEY (
	`consumer_id`
)
REFERENCES `Consumer_Info` (
	`consumer_id`
);

