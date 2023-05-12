CREATE TABLE Booking (
  BookingID int primary key identity(1,1),
  TourID int not null,
  UserID int not null,
  PickupLocation nvarchar(200) not null,
  PickupDate datetime not null,
  ReturnDate datetime not null,
  HotelName nvarchar(200) null,
  HotelAddress nvarchar(200) null,
  PaymentType nvarchar(50) not null check (PaymentType in ('ATM', 'Chuyển khoản')),
  TotalPrice decimal(18, 2) not null,
  Status nvarchar(50) not null check (Status in ('Chờ xác nhận', 'Đã xác nhận', 'Đã huỷ', 'Hoàn thành')),
  foreign key (TourID) references Tour(TourID),
  foreign key (UserID) references Users(UserID)
);