create table books (
  book_id INT PRIMARY KEY IDENTITY (1, 1),
  title Varchar(100) not null,
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
   total_copies int not null default 0,
   copies_in_use int not null default 0,
   type varchar(50),
   isbn varchar (80),
   category varchar(50));

delete  from books;

INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('Pride and Prejudice', 'Jane', 'Austen', 100, 80, 'Hardcover', '1234567891', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('To Kill a Mockingbird', 'Harper', 'Lee', 75, 65, 'Paperback', '1234567892', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Catcher in the Rye', 'J.D.', 'Salinger', 50, 45, 'Hardcover', '1234567893', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Great Gatsby', 'F. Scott', 'Fitzgerald', 50, 22, 'Hardcover', '1234567894', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Alchemist', 'Paulo', 'Coelho', 50, 35, 'Hardcover', '1234567895', 'Biography');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Book Thief', 'Markus', 'Zusak', 75, 11, 'Hardcover', '1234567896', 'Mystery');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Chronicles of Narnia', 'C.S.', 'Lewis', 100, 14, 'Paperback', '1234567897', 'Sci-Fi');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Da Vinci Code', 'Dan', 'Brown', 50, 40, 'Paperback', '1234567898', 'Sci-Fi');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Grapes of Wrath', 'John', 'Steinbeck', 50, 35, 'Hardcover', '1234567899', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Hitchhiker''s Guide to the Galaxy', 'Douglas', 'Adams', 50, 35, 'Paperback', '1234567900', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('Moby-Dick', 'Herman', 'Melville', 30, 8, 'Hardcover', '8901234567', 'Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('To Kill a Mockingbird', 'Harper', 'Lee', 20, 0, 'Paperback', '9012345678', 'Non-Fiction');


INSERT INTO books (title, first_name, last_name, total_copies, copies_in_use, type, isbn, category)
VALUES ('The Catcher in the Rye', 'J.D.', 'Salinger', 10, 1, 'Hardcover', '0123456789', 'Non-Fiction');

select * from books;