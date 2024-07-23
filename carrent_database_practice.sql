use CARRENT;



create table campingcar_rent_company(
		company_id bigint unsigned not null auto_increment primary key,
		company_name varchar(30) not null,
		company_address varchar(50) not null,
		company_phone_number char(13) not null,
		manager_name varchar(30) not null,
		manager_email varchar(30)
);


create table campingcar(
		campingcar_register_id bigint unsigned not null,
		company_id bigint not null,
		campingcar_name varchar(30) not null,
		campingcar_number varchar(15) not null,
		campingcar_ride_count int not null,
		campingcar_image varchar(1000) not null,
		campingcar_detail_info varchar(500), not null,
		campingcar_rent_cost int, not null,
		campingcar_register_date date
);



create table rent_campingcar( 
		rent_id bigint unsigned not null auto_increment primary key,
		campingcar_register_id bigint not null,
		drive_license_id bigint unsigned not null,
		company_id bigint unsigned not null,
		rent_start_date date not null,
		rent_period int not null,
		charge int not null,
		pay_limit_date date not null,
	    other_billing_details varchar(100),
	    other_billing_cost int
);





create table customer(
		drive_license_id bigint unsigned not null auto_increment primary key,
		customer_name varchar(30) not null,
		customer_address varchar(50) not null,
		customer_phone_number char(13) not null,
		customer_email varchar(30),
	    previous_rent_campingcar_date date,
	    previous_rent_campingcar_type varchar(20)
);



create table campingcar_maintain_info(
		maintain_id bigint unsigned not null auto_increment primary key,
		campingcar_register_id bigint unsigned not null,
		campingcar_shop_id bigint unsigned not null,
		company_id bigint unsigned not null,
		drive_license_id bigint unsigned not null,
		maintain_content varchar(1000) not null,
		maintain_date date not null,
		maintain_cost int not null,
		pay_limit_date date not null,
		other_maintain_content varchar(1000)
		
);


create table campingcar_rent_company(
		company_id bigint unsigned not null auto_increment primary key,
		company_name varchar(30) not null,
		company_address varchar(50) not null,
		company_phone_number char(13) not null,
		manager_name varchar(30) not null,
		manager_email varchar(30)
);



