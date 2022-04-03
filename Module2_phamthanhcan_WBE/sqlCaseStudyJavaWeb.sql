create database furama;
use furama;

create table `position`(
	position_id int primary key,
    positon_name varchar(45) not null
);

create table education_degree (
	education_degree_id int primary key,
    education_degree_name varchar(45) not null
);

create table division (
	division_id int primary key,
    division_name varchar(45) not null
);

create table `role` (
	role_id int primary key,
    role_name varchar(255) not null
);

create table user (
	username varchar(255) primary key,
    password varchar(255) not null
);

create table user_role (
	role_id int,
    constraint fk_user_role foreign key (role_id) references role(role_id),
    username varchar(255),
    constraint fk_user_name foreign key (username) references user(username)
);

create table employee (
	employee_id varchar(45) primary key,
    employee_name varchar(45) not null,
    employee_gender int,
    employee_birthday date,
    employee_id_card varchar(45) unique,
    employee_salary double,
    employee_phone varchar(45) unique,
    employee_email varchar(45) unique,
    employee_address varchar(45),
    position_id int,
    foreign key (position_id) references `position`(position_id),
    education_degree_id int,
    foreign key (education_degree_id) references education_degree(education_degree_id),
    division_id int,
    foreign key (division_id) references division(division_id),
    username varchar(255) unique,
    foreign key (username) references user(username)
    on delete CASCADE 
);

create table customer_type(
	customer_type_id int primary key,
    customer_type_name varchar(45) not null
);

create table customer (
	customer_id varchar(45) primary key, 
    customer_type_id int,
    foreign key (customer_type_id) references customer_type(customer_type_id),
    customer_name varchar(45) not null,
    customer_birthday varchar(45),
    customer_gender int,
    customer_id_card varchar(45) unique,
    customer_phone varchar(45) unique,
    customer_email varchar(45) unique,
    customer_address varchar(45)
);

create table service_type (
	service_type_id int primary key,
    service_type_name varchar(45) not null
);

create table rent_type (
	rent_type_id int primary key,
    rent_type_name varchar(45) not null,
    ren_type_cost double not null
);

create table service (
	service_id varchar(45) primary key,
    service_name varchar(45) not null,
    service_area int,
    service_cost double not null,
    service_max_people int,
    rent_type_id int not null,
    foreign key (rent_type_id) references rent_type(rent_type_id),
    service_type_id int not null,
    foreign key (service_type_id) references service_type(service_type_id),
    standard_room varchar(45),
    description_other_convenience varchar(45),
    pool_area double,
    number_of_floor int
);

create table contract (
	contract_id int primary key,
    contract_start_date datetime,
    contract_end_date datetime,
    contract_deposit double,
    contract_total_money double,
    employee_id varchar(45),
    customer_id varchar(45), 
    service_id varchar(45),
    foreign key (employee_id) references employee(employee_id),
    foreign key (customer_id) references customer(customer_id),
    foreign key (service_id) references service(service_id)
);

create table attach_service (
	attach_service_id int primary key,
    attach_service_name varchar(45),
    attach_service_cost double,
    attach_service_unit int,
    attach_service_status varchar(45)
);

create table contract_detail (
	contract_detail_id int primary key,
    contract_id int,
    attach_service_id int,
    foreign key (contract_id) references contract(contract_id),
    foreign key (attach_service_id) references attach_service(attach_service_id),
    quantity int
);



insert into customer_type values(1, "Diamond");
insert into customer_type values(2, "Platinum");
insert into customer_type values(3, "Gold");
insert into customer_type values(4, "Silver");
insert into customer_type values(5, "Member");

insert into customer values(1, 1, "Can", "2000/10/06", 0, "221451639", "0921194881", "can@gmail.com", "Da Nang");
insert into customer values(2, 2, "Nhu", "2000/08/07", 1, "221501992", "0382891684", "nhu@gmail.com", "Phu Yen");
insert into customer values(3, 3, "Bao", "2000/10/06", 0, "221412112", "0921941811", "bao@gmail.com", "Quang Nam");

insert into position values(1, "Receptionist");
insert into position values(2, "Serve");
insert into position values(3, "Expert");
insert into position values(4, "Monitoring");
insert into position values(5, "Manage");
insert into position values(6, "President");

insert into education_degree values(1, "Intermediate");
insert into education_degree values(2, "Colleges");
insert into education_degree values(3, "University");
insert into education_degree values(4, "After University");

insert into division values(1, "Sale – Marketing");
insert into division values(2, "Administrative");
insert into division values(3, "Service");
insert into division values(4, "Management");

delimiter //	
	create procedure deleteCustomerByID(id int)
	begin
		delete from customer where customer_id = id;
    end;
// delimiter ;

delimiter //
create procedure findCustomerByID(id int)
begin
	select * from customer where customer_id = id;
end;
// delimiter ;

delimiter //
create trigger saveEmployeeUser 
before insert on employee 
for each row
begin
	insert into user values(lcase(new.employee_email), "12345678");
    if new.username is null then 
    set new.username = lcase(new.employee_email);
    end if;
end;
// delimiter ;

delimiter // 
	create trigger deleteEmployeeUser
    before delete on employee
    for each row
    begin
		delete from `user` where username = old.username;
    end;
// delimiter ;

insert into employee values("1", "can", 0, "2000-10-06", "221451639", 8000000, "0921193881", "can@gmail.com", "Da Nang", 1, 1, 1, null);
insert into employee values("2", "nhu", 1, "2000-10-06", "229129939", 8000000, "0928183818", "nhu@gmail.com", "Da Nang", 1, 1, 1, null);
