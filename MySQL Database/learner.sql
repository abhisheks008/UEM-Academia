SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE coursecategory (
  id int(11) NOT NULL,
  CategoryName varchar(200) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate date DEFAULT current_timestamp(),
  UpdationDate date DEFAULT current_timestamp(),
  Is_Active int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO coursecategory (id, CategoryName, Description, PostingDate, UpdationDate, Is_Active) VALUES
(1, 'Computer Organisation', 'Computer Organisation related online study materials.', '2022-02-21', '2022-04-28', 1),
(2, 'Digital Systems Design', 'Online study materials for DLD.', '2021-12-24', '2022-04-28', 1),
(3, 'Database Management Systems', 'Study materials for DBMS.', '2022-01-20', '2022-04-28', 1),
(4, 'Software Engineering', 'Study materials for Software Engineering.', '2022-02-25', '2022-04-28', 1);

CREATE TABLE coursepost (
  id int(11) NOT NULL,
  PostTitle longtext DEFAULT NULL,
  CategoryId int(11) DEFAULT NULL,
  PostDetails longtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL,
  CourseLink longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO coursepost (id, PostTitle, CategoryId, PostDetails, PostingDate, UpdationDate, Is_Active, CourseLink) VALUES
(1, 'Computer Organisation: Lecture 03', 1, 'Lecture 03 of COA', '2021-08-05 14:19:56', '2022-04-28 10:21:33', 1, 'https://www.youtube.com/watch?v=oA9BZxOiKes'),
(2, 'Digital Systems Design: Full Coverage', 2, '<p style=\"margin: 0cm 0cm 0.0001pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-bidi-font-family:Arial;\r\ncolor:#1C1D1F\">Interested in the field of Data Science, Machine Learning, Data\r\nAnalytics, Data Visualization? Then this course is for you!<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">This course has been designed by two\r\nprofessional Data Scientists so that we can share our knowledge and help you\r\nlearn complex theory, algorithms and coding libraries in a simple way.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">We will walk you step-by-step into\r\nthe World of Data Science. With every tutorial you will develop new skills and\r\nimprove your understanding of this challenging yet lucrative sub-field of Data\r\nScience.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">Moreover, the course is packed with\r\npractical exercises which are based on real-life examples. So not only will you\r\nlearn the theory, but you will also get some hands-on practice building your\r\nown models.<u1:p style=\"margin: 0px; padding: 0px;\"></u1:p></span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#212529\"><o:p></o:p></span></p><p style=\"padding: 0px; max-width: 118.4rem; color: rgb(28, 29, 31); font-family: &quot;sf pro text&quot;, -apple-system, BlinkMacSystemFont, Roboto, &quot;segoe ui&quot;, Helvetica, Arial, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-top: 0.8rem; margin-bottom: 1rem; max-width: 60rem;\"><span style=\"font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;\r\nmso-bidi-font-family:Arial;color:#1C1D1F\">And as a bonus, this course includes\r\nboth Python and R code templates which you can download and use on your own\r\nprojects.</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\ncolor:#212529\"><o:p></o:p></span></p>', '2021-08-05 14:24:08', '2022-04-28 09:47:39', 1, 'https://www.udemy.com/course/data-science-machine-learning-data-analysis-python-r/'),
(3, 'Database Management Systems: Lecture 01', 3, 'Lecture 01 of DBMS', '2022-01-12 05:17:10', '2022-04-28 10:13:05', 1, 'https://www.youtube.com/watch?v=45VEwnI9bxk'),
(4, 'Software Engineering: Laws of Maintainance', 4, 'This video lecture discussed about Laws of Maintainance of Software Engineering.', '2022-03-25 18:30:00', '2022-04-27 18:30:00', 1, 'https://www.youtube.com/watch?v=NnyrvK-4tjs'),
(5, 'Software Engineering: Cohesion and Coupling', 4, 'This video lecture discussed about Cohesion and Coupling.', '0000-00-00 00:00:00', '2022-04-28 10:02:23', 1, 'https://www.youtube.com/watch?v=xTu7v2sMTts'),
(6, 'Software Engineering: StarUML Basics', 4, 'This video lecture discussed about the basics of StarUML.', '2022-04-28 05:10:21', '0000-00-00 00:00:00', 1, 'https://www.youtube.com/watch?v=USUI7SH0OJ8'),
(7, 'Database Management Systems: Lecture 02', 3, 'Lecture 02 of DBMS', '2022-01-19 08:42:35', '0000-00-00 00:00:00', 1, 'https://www.youtube.com/watch?v=EzJ0gdl-iRk'),
(8, 'Database Management Systems: Lecture 03', 3, 'Lecture 03 of DBMS', '2022-01-26 08:50:50', '0000-00-00 00:00:00', 1, 'https://www.youtube.com/watch?v=CjtkTocpBNI'),
(9, 'Computer Organisation: Lecture 01', 1, 'Lecture 01 of COA', '2022-01-13 08:50:50', '0000-00-00 00:00:00', 1, 'https://www.youtube.com/watch?v=ox7bb3NQf1Y'),
(10, 'Computer Organisation: Lecture 02', 1, 'Lecture 02 of COA', '2022-01-20 08:58:50', '0000-00-00 00:00:00', 1, 'https://www.youtube.com/watch?v=b6TwI3QgDiY');


CREATE TABLE ebookcategory (
  id int(11) NOT NULL,
  CategoryName varchar(200) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate date DEFAULT current_timestamp(),
  UpdationDate date DEFAULT current_timestamp(),
  Is_Active int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO ebookcategory (id, CategoryName, Description, PostingDate, UpdationDate, Is_Active) VALUES
(1, 'Java programming', 'All Java Programming E-Books.', '2021-08-05', '2021-08-05', 1),
(2, 'Spring, Spring Framework and Spring Boot', 'All Spring, Spring Framework and Spring Boot books.', '2021-08-05', '2021-08-05', 1);


CREATE TABLE ebookpost (
  id int(11) NOT NULL,
  PostTitle longtext DEFAULT NULL,
  CategoryId int(11) DEFAULT NULL,
  PostDetails longtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL,
  FileName mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO ebookpost (id, PostTitle, CategoryId, PostDetails, PostingDate, UpdationDate, Is_Active, FileName) VALUES
(1, 'Effective Java by Joshua Bloch', 1, '<p>Effective Java by Joshua Bloch<br></p>', '2021-08-05 15:33:49', '2021-08-05 15:41:26', 1, 'Effective Java by Joshua Bloch (z-lib.org).pdf'),
(2, 'Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy', 2, '<p>Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy.<br></p>', '2021-08-05 15:42:35', '2021-08-05 15:53:28', 1, 'Beginning Spring Boot 2 Applications and Microservices with the Spring Framework by K. Siva Prasad Reddy.pdf');


CREATE TABLE programcategory (
  id int(11) NOT NULL,
  CategoryName varchar(200) DEFAULT NULL,
  Description mediumtext DEFAULT NULL,
  PostingDate date DEFAULT current_timestamp(),
  UpdationDate date DEFAULT current_timestamp(),
  Is_Active int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO programcategory (id, CategoryName, Description, PostingDate, UpdationDate, Is_Active) VALUES
(1, 'First Year', 'Programming assignments for First Year students', '2021-08-05', '2021-08-05', 1),
(2, 'Second Year', 'Programming assignments for Second Year students', '2021-08-05', '2021-08-05', 1);


CREATE TABLE programpost (
  id int(11) NOT NULL,
  PostTitle longtext DEFAULT NULL,
  CategoryId int(11) DEFAULT NULL,
  PostDetails longtext DEFAULT NULL,
  PostingDate timestamp NULL DEFAULT current_timestamp(),
  UpdationDate timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  Is_Active int(1) DEFAULT NULL,
  FileName varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO programpost (id, PostTitle, CategoryId, PostDetails, PostingDate, UpdationDate, Is_Active, FileName) VALUES
(1, 'Pattern Printing using Loops', 1, 'Print a pattern of numbers from 1 to n as shown below. Each of the numbers is separated by a single space.', '2021-08-05 15:10:53', '2022-04-28 10:42:40', 1, 'https://www.hackerrank.com/challenges/printing-pattern-2?isFullScreen=true'),
(2, 'Array Reversal', 1, 'Given an array, of size n, reverse it. Example: If array, [1,2,3,4,5], after reversing it, the array should be,[5,4,3,2,1].', '2022-02-24 06:44:45', '0000-00-00 00:00:00', 1, 'https://www.hackerrank.com/challenges/reverse-array-c/problem?isFullScreen=true'),
(3, 'Digits Frequency', 1, 'Given a string, s, consisting of alphabets and digits, find the frequency of each digit in the given string.', '2022-02-04 06:45:47', '0000-00-00 00:00:00', 1, 'https://www.hackerrank.com/challenges/frequency-of-digits-1/problem?isFullScreen=true');


CREATE TABLE tbladmin (
  id int(11) NOT NULL,
  Name varchar(200) NOT NULL,
  UserName varchar(200) NOT NULL,
  Email varchar(200) NOT NULL,
  AdminPassword varchar(200) NOT NULL,
  Is_Active int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO tbladmin (id, Name, UserName, Email, AdminPassword, Is_Active) VALUES
(1, 'Shrikant Suresh Khurd', 'shrikant', 'shrikantkhurd97@gmail.com', 'shrikant', 10),
(2, 'admin', 'admin', 'admin@gmail.com', 'admin', 10);


CREATE TABLE tblcomments (
  id int(11) NOT NULL,
  postId int(11) DEFAULT NULL,
  name varchar(200) DEFAULT NULL,
  email varchar(200) DEFAULT NULL,
  comment mediumtext DEFAULT NULL,
  postingDate timestamp NULL DEFAULT current_timestamp(),
  status int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO tblcomments (id, postId, name, email, comment, postingDate, status) VALUES
(1, 1, 'Shrikant Suresh Khurd', 'shrikantkhurd97@gmail.com', 'Thank you.', '2021-08-05 15:59:35', 1);

ALTER TABLE coursecategory
  ADD PRIMARY KEY (id);
COMMIT;