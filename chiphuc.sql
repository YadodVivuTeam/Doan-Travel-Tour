CREATE TABLE Tour (
  TourID int primary key identity(1,1),
  TourName nvarchar(200) not null,
  Description nvarchar(max) null,
  Location nvarchar(200) not null,
  Price decimal(18, 2) not null,
  ImageURL nvarchar(max) null
);