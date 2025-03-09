create database Online_Taxi;


--جدول مسافران
create table passengers(
userID int identity primary key,
fullname nvarchar(100) not null,
phonenumber nvarchar(50) not null,
registration_date date default(getdate())
);




--جدول سفیران
create table drivers(
driverid int identity(1,1) primary key,
cabid int not null,
fullname nvarchar(100),
idcode nvarchar(10) not null unique,
phonenumber nvarchar(20) not null unique,
gender nvarchar(10) check (gender in ('female' , 'male')),
city nvarchar(100),
profile_pic varbinary(max) not null,
license_image varbinary(max) not null,
registration_date date not null,
foreign key (cabid) references cabs(cabid)
);




--جدول خودروها
create table cabs(
cabid int identity primary key ,
driverid int not null,
car_model nvarchar(255) not null,
Car_Documents varbinary(max) not null,
foreign key (driverid) references drivers(driverid)
);




--جدول سفرها
create table trips(
tripid int identity primary key,
driverid int not null,
userid int not null,
pickup_location nvarchar(255) not null,
destination nvarchar(255) not null,
paymentamout decimal(15) not null,
paymentmethod nvarchar(100) check (paymentmethod in ('CreditCard', 'Cash', 'OnlineWallet')),
start_at datetime not null,
ending datetime not null,
rate tinyint not null check (rate between 1 and 5)
foreign key (driverid) references drivers(driverid),
foreign key (userid) references passengers(userid)
);














