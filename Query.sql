--create database Homewaydb
use Homewaydb
/*
CREATE TABLE customer (
    customer_id INT identity(1000,1) PRIMARY KEY,
    cus_first_name VARCHAR(50) not null,
    cus_last_name VARCHAR(50) not null,
    cus_email VARCHAR(100) UNIQUE not null,
    cus_phone VARCHAR(20) not null,
    cus_address VARCHAR(200) not null,
    cus_password varchar(50) not null,
    cus_image nvarchar(200) null
);


CREATE TABLE admin (
    admin_id INT identity(0,1) PRIMARY KEY,
    admin_username VARCHAR(50) UNIQUE NOT NULL,
    admin_password VARCHAR(100) NOT NULL,
    admin_first_name VARCHAR(50) not null,
    admin_last_name VARCHAR(50) not null,
    admin_email VARCHAR(100) not null,
    admin_phone VARCHAR(20) not null
);



CREATE TABLE host (
    host_id INT identity(2000,1) PRIMARY KEY,
    customer_id int foreign key references customer(customer_id) not null,
	numOfappartment int not null,
    star float not null
);

CREATE TABLE seller (
    seller_id INT identity(3000,1) PRIMARY KEY,
    customer_id int foreign key references customer(customer_id) not null,
	numOfproperty int not null,
    star float not null
);

CREATE TABLE apartment (
    apartment_id INT identity(4000,1) PRIMARY KEY,
    apartment_location VARCHAR(100) NOT NULL,
    apartment_building_name VARCHAR(100) not null,
    apartment_floor_number INT not null,
	apartment_no VARCHAR(50) not null,
    apartment_num_bedrooms INT not null,
    apartment_num_bathrooms INT not null,
    apartment_square_feet DECIMAL(10, 2) not null,
    apartment_rent_amount DECIMAL(10, 2) not null,
    apartment_is_rented VARCHAR(10) DEFAULT 'NO',
    host_id int foreign key references host(host_id) not null,
    image_apartment1 nvarchar(200) null,
	image_apartment2 nvarchar(200) null,
	image_apartment3 nvarchar(200) null,
	image_apartment4 nvarchar(200) null,
	apartment_verified varchar(10) DEFAULT 'NO'  
);

CREATE TABLE property (
    property_id INT identity(5000,1) PRIMARY KEY,
    property_location VARCHAR(100) NOT NULL,
    property_square_feet DECIMAL(10, 2) not null,
    property_selling_amount DECIMAL(10, 2) not null,
    property_is_sold VARCHAR(10) DEFAULT 'NO',
    seller_id int foreign key references seller(seller_id) not null,
	image_property1 nvarchar(100) null,
	image_property2 nvarchar(100) null,
	image_property3 nvarchar(100) null,
	image_property4 nvarchar(100) null,
	property_verified varchar(10) DEFAULT 'NO' 
);

CREATE TABLE booking (
    booking_id INT identity(5000,1) PRIMARY KEY,
    customer_id INT foreign key references customer(customer_id) not null,
    apartment_id INT foreign key references apartment(apartment_id) not null,
    booking_date DATE not null,
    check_in_date DATE not null,
    check_out_date DATE not null,
    total_amount DECIMAL(10, 2) not null
);

CREATE TABLE transactions (
    transaction_id INT identity(6000,1) PRIMARY KEY,
    customer_id INT foreign key references customer(customer_id) not null,
    transaction_date date not null,
    tran_amount DECIMAL(10, 2) not null,
    transaction_type VARCHAR(50) not null,
    tran_description VARCHAR(200) not null
);

CREATE TABLE wishlist (
    wishlist_id INT identity(7000,1) PRIMARY KEY,
    customer_id INT foreign key references customer(customer_id) not null,
    apartment_id INT foreign key references apartment(apartment_id) not null,
    added_date date null
);

CREATE TABLE review_host (
    review_id INT identity(8000,1) PRIMARY KEY,
	customer_id INT foreign key references customer(customer_id) not null,
    host_id INT foreign key references host(host_id) not null,
    rating INT not null,
    comment varchar(500)not null,
    review_date date null,
);

CREATE TABLE maintenance (
    maintain_id INT identity(9000,1) PRIMARY KEY,
	customer_id INT foreign key references customer(customer_id) not null,
    apartment_id INT foreign key references apartment(apartment_id) not null,
    comment varchar(500)not null,
    maintain_date date null
);
CREATE TABLE notifications (
   notification_id INT identity(10000,1) PRIMARY KEY,
   sender int not null,
   receiver int not null,
   notification_text VARCHAR(500) not null,
   noti_status VARCHAR(100) null
);

*/

Select * from customer

Select * from host

Select * from seller

delete from customer
delete from host 
delete from seller

select * from apartment

select * from property


select * from admins

INSERT INTO admins (admin_username, admin_password, admin_first_name, admin_last_name, admin_email, admin_phone)
VALUES ('propofol', '1234', 'prop', 'fol', 'prop@gmail.com', '01601718465');

