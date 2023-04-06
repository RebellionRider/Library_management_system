-- Author: Manish Sharma
-- Website: RebellionRider.com
-- Date: 2023-04-06

-- Create Books table
CREATE TABLE Books (
  Book_ID NUMBER(10) PRIMARY KEY,
  Title VARCHAR2(100),
  Author VARCHAR2(100),
  ISBN VARCHAR2(20),
  Genre VARCHAR2(50),
  Publisher VARCHAR2(50),
  Publication_Date DATE
);

-- Create Book_Copies table
CREATE TABLE Book_Copies (
  Copy_ID NUMBER(10) PRIMARY KEY,
  Book_ID NUMBER(10),
  Branch_ID NUMBER(10),
  Status VARCHAR2(20),
  Due_Date DATE,
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

-- Create Branch table
CREATE TABLE Branch (
  Branch_ID NUMBER(10) PRIMARY KEY,
  Branch_Name VARCHAR2(50),
  House_No VARCHAR2(10),
  Lane VARCHAR2(50),
  Address1 VARCHAR2(50),
  Address2 VARCHAR2(50),
  City VARCHAR2(50),
  State VARCHAR2(50),
  Pincode VARCHAR2(10),
  Phone_Number VARCHAR2(20),
  Email VARCHAR2(50)
);

-- Create Members table
CREATE TABLE Members (
  Member_ID NUMBER(10) PRIMARY KEY,
  First_Name VARCHAR2(50),
  Last_Name VARCHAR2(50),
  Phone_Number VARCHAR2(20),
  Email VARCHAR2(50),
  House_No VARCHAR2(10),
  Lane VARCHAR2(50),
  Address1 VARCHAR2(50),
  Address2 VARCHAR2(50),
  City VARCHAR2(50),
  State VARCHAR2(50),
  Pincode VARCHAR2(10),
  Membership_Expiration_Date DATE
);

-- Create Checkout table
CREATE TABLE Checkout (
  Checkout_ID NUMBER(10) PRIMARY KEY,
  Member_ID NUMBER(10),
  Copy_ID NUMBER(10),
  Checkout_Date DATE,
  Due_Date DATE,
  Return_Date DATE,
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (Copy_ID) REFERENCES Book_Copies(Copy_ID)
);

-- Create Fine table
CREATE TABLE Fine (
  Fine_ID NUMBER(10) PRIMARY KEY,
  Member_ID NUMBER(10),
  Copy_ID NUMBER(10),
  Fine_Amount NUMBER(10, 2),
  Fine_Date DATE,
  Status VARCHAR2(20),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (Copy_ID) REFERENCES Book_Copies(Copy_ID)
);

-- Create Employees table
CREATE TABLE Employees (
  Employee_ID NUMBER(10) PRIMARY KEY,
  Role_ID NUMBER(10),
  First_Name VARCHAR2(50),
  Last_Name VARCHAR2(50),
  Phone_Number VARCHAR2(20),
  Email VARCHAR2(50),
  House_No VARCHAR2(10),
  Lane VARCHAR2(50),
  Address1 VARCHAR2(50),
  Address2 VARCHAR2(50),
  City VARCHAR2(50),
  State VARCHAR2(50),
  Pincode VARCHAR2(10),
  Date_of_Hire DATE,
  FOREIGN KEY (Role_ID) REFERENCES Job_Roles(Role_ID)
);

-- Create Inventory table
CREATE TABLE Inventory (
  Inventory_ID NUMBER(10) PRIMARY KEY,
  Branch_ID NUMBER(10),
  Book_ID NUMBER(10),
  Quantity NUMBER(10),
  Date_Added DATE,
  Date_Modified DATE,
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID),
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

-- Create Job_Roles table
CREATE TABLE Job_Roles (
  Role_ID NUMBER(10) PRIMARY KEY,
  Role_Name VARCHAR2(50),
  Salary NUMBER(
  );