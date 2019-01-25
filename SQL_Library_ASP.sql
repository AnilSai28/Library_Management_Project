create database Library_ASP_Anil

use Library_ASP_Anil

----Student 
create table tbl_Students
(
StudentID int identity(1000,1) primary key,
StudentName varchar(100) not null,
StudentEmailId varchar(100) not null,
StudentPassword varchar(100) not null,
StudentCity varchar(100) not null,
StudentAddress varchar(100) not null,
StudentDOB datetime not null,
StudentMobileNo varchar(15) not null,
StudentImage varchar(100) not null
)

----Admin
create table tbl_Admin
(
AdminID int identity(100,1) primary key,
AdminName varchar(100) not null,
AdminEmailId varchar(100) not null,
AdminPassword varchar(100) not null,
AdminMobileNo varchar(15) not null
)

----Book
create table tbl_Book
(
BookID int Identity(1,1) primary key,
BookName varchar(100) not null,
BookAuthor varchar(100) not null,
BookTitle varchar(100) not null,
BookPrice int not null,
BookAddDate datetime not null,
NoOfPages int not null,
BookImage varchar(100) not null
)

select * from tbl_Book


----Issue Book
create table tbl_IssuedBook
(
IssueID int identity(1000,1) primary key,
BookID int foreign key references tbl_Book(BookID),
StudentID int foreign key references tbl_Students(StudentID),
IssueDate datetime not null,
IssueStatus varchar(100) not null
)

--Cart Table

create table tbl_cart
(
CartID int identity(1,1) primary key,
StudentID int foreign key references tbl_students(StudentID),
BookID int foreign key references tbl_book(BookID),
CartAddDate datetime not null
)

---Procedure Login
alter proc proc_login
(@id varchar(100),@password varchar(100))
as
begin
declare @count int
select @count=count(*) from tbl_Students
where StudentID=@id and StudentPassword=@password
return @count
end
select * from tbl_Students
--Add Student

create proc proc_addstudent
(@name varchar(100),@emailid varchar(100),@password varchar(100),@city varchar(100),
@address varchar(100),@dob datetime,@mobileno varchar(100),@image varchar(100))
as
begin
insert tbl_Students values(@name,@emailid,@password,@city,@address,@dob,@mobileno,@image)
return @@identity
end

--Search Student

create proc proc_searchstudent
(@key varchar(100))
as
begin 
select * from tbl_Students where StudentID like '%'+@key+'%' or 
								StudentName like '%'+@key+'%' or
								StudentEmailID like '%'+@key+'%' or
								StudentPassword like '%'+@key+'%' or
								StudentCity like '%'+@key+'%' or
								StudentAddress like '%'+@key+'%' or
								StudentDOB like '%'+@key+'%' or
								StudentMobileNo like '%'+@key+'%' or
								StudentImage like '%'+@key+'%' 
end


----AddBook

alter proc proc_addBook
(@name varchar(100),@author varchar(100),@title varchar(100),
@price int,@pages int,@image varchar(100))
as
begin
insert tbl_Book values(@name,@author,@title,@price,getdate(),@pages,@image)
return @@identity
end

select * from tbl_Book

--Search book

create proc proc_searchBook
(@key varchar(100))
as
begin 
select * from tbl_Book where BookID like '%'+@key+'%' or 
								BookName like '%'+@key+'%' or
								BookAuthor like '%'+@key+'%' or
								BookTitle like '%'+@key+'%' or
								BookPrice like '%'+@key+'%' or
								BookAddDate like '%'+@key+'%' or
								NoOfPages like '%'+@key+'%' or
								BookImage like '%'+@key+'%' 
								 
end





---FindBook

Create proc proc_FindBook(@id int)
as
begin
select * from tbl_Book where BookID=@id
end




----procedure IssueBook


alter proc proc_IssueBook
(@bid int,@sid int)
as
begin
insert tbl_IssuedBook values(@bid,@sid,getdate(),'Issued')
delete tbl_cart where BookID=@bid and StudentID=@sid
return @@identity
end

--Show Issue Book Procedure

alter proc proc_ShowIssuedBook
(@Sid int)
as
begin
Select tbl_IssuedBook.IssueID,tbl_IssuedBook.StudentID,tbl_IssuedBook.IssueDate,
tbl_IssuedBook.IssueStatus,tbl_Book.BookID,tbl_Book.BookTitle,tbl_Book.BookImage from tbl_IssuedBook  
join tbl_Book
on
tbl_Book.BookID=tbl_IssuedBook.BookID
where tbl_IssuedBook.StudentID=@Sid
order by tbl_IssuedBook.IssueDate desc
end

--Show All Issue Book Procedure

alter proc proc_ShowAllIssuedBook
(@key varchar(100))
as
begin
Select tbl_IssuedBook.IssueID,tbl_IssuedBook.StudentID,tbl_IssuedBook.IssueDate,
tbl_IssuedBook.IssueStatus,tbl_Book.BookID,tbl_Book.BookTitle,tbl_Book.BookImage from tbl_IssuedBook  
join tbl_Book
on
tbl_Book.BookID=tbl_IssuedBook.BookID
where tbl_IssuedBook.IssueID like '%'+@key+'%'
order by tbl_IssuedBook.IssueDate desc
end


select * from tbl_Book

--Update Book Procedure
alter proc proc_update
(@id int,@name varchar(100),@author varchar(100),@title varchar(100),@price varchar(100),
@pages int,@image varchar(100))
as
begin
update tbl_Book set BookName=@name,BookAuthor=@author,BookTitle=@title,
BookPrice=@price,NoOfPages=@pages,BookImage=@image where BookID=@id
return @@rowcount
end


select * from tbl_IssuedBook
select * from tbl_cart
--Add Cart Procedure

alter proc proc_addcart
(@bid int,@sid int)
as begin
declare @count int
select @count=count(*) from tbl_cart where BookID=@bid and StudentID=@sid
if(@count=0)
begin
insert tbl_cart values(@sid,@bid,getdate())
return @@identity
end
return 0
end

--cart book procedure

create proc proc_myBookCart
(@sid int)
as begin
select * from tbl_Book where BookID in(
select BookID from tbl_cart where StudentID=@sid)

end

--remove
create proc proc_removefromcart
(@bid int,@sid int)
as 
begin
delete tbl_cart where BookID=@bid and StudentID=@sid
end