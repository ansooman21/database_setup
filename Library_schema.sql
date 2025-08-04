--1 (Reader Table)
Create table Readers(
	UserID int primary key,
	FirstName Varchar(50),
	Lastname varchar(50),
	Email VARCHAR(100) UNIQUE,
    PhoneNo VARCHAR(15)
);

--2 (Books Table)
Create table Books(
	ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(200),
    Category VARCHAR(100),
    Edition VARCHAR(50),
    Price DECIMAL(8,2),
    AuthorID INT,
    PublisherID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
);

--3 (Authors Table)
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);

--4 (Publisher Table)
CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY ,
    Name VARCHAR(100),
    YearOfPublication INT
);

--5 (Staff Table)
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(50)
);

--6 (Loan Table)
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    UserID INT,
    ISBN VARCHAR(13),
    ReserveDate DATE,
    ReturnDate DATE,
    DueDate DATE,
    FOREIGN KEY (UserID) REFERENCES Readers(UserID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

--7 (Login Table)
CREATE TABLE Login (
    LoginID INT PRIMARY KEY,
    UserID INT UNIQUE,
    Password VARCHAR(100),
    FOREIGN KEY (UserID) REFERENCES Readers(UserID)
);

--8 (Reports Table)
CREATE TABLE Reports (
    ReportID INT PRIMARY KEY,
    BookNo VARCHAR(13),
    RegNo INT,
    IssueReturn TEXT,
    StaffID INT,
    FOREIGN KEY (BookNo) REFERENCES Books(ISBN),
    FOREIGN KEY (RegNo) REFERENCES Readers(UserID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);