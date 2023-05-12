CREATE TABLE Users (
  UserID int primary key identity(1,1),
  FullName nvarchar(100) not null,
  Email nvarchar(100) not null,
  Password nvarchar(50) not null,
  Phone nvarchar(20) null,
  Address nvarchar(200) null,
  UserType nvarchar(50) not null check (UserType in ('Admin', 'User', 'Staff booking', 'Customer care staff', 'Nhân viên marketing', 'Nhân viên kế toán')),
  IsBlocked bit not null
);