CREATE TABLE Comment (
  CommentID int primary key identity(1,1),
  TourID int not null,
  UserID int not null,
  StaffID int null,
  CommentDate datetime not null,
  Content nvarchar(max) not null,
  foreign key (TourID) references Tour(TourID),
  foreign key (UserID) references Users(UserID),
  foreign key (StaffID) references Users(UserID)
);