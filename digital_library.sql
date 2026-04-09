--Books Table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Category VARCHAR(50)
);

-- Sample Data for Books
INSERT INTO Books VALUES
(1, 'DBMS Basics', 'Author A', 'Science'),
(2, 'History of India', 'Author B', 'History'),
(3, 'Python Programming', 'Author C', 'Science');

--Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    LastBorrowDate DATE
);

-- Sample Data for Students
INSERT INTO Students VALUES
(101, 'Rahul', 'rahul@mail.com', '2022-01-01'),
(102, 'Sneha', 'sneha@mail.com', '2024-03-01');


--IssuedBooks Table
CREATE TABLE IssuedBooks (
    IssueID INT PRIMARY KEY,
    BookID INT,
    StudentID INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Sample Data for IssuedBooks
INSERT INTO IssuedBooks VALUES
(1, 1, 101, '2024-03-01', NULL),  -- overdue
(2, 2, 102, '2024-03-20', '2024-03-25'); -- returned

--Overdue Books Query
SELECT s.StudentID, s.Name, b.Title, i.IssueDate
FROM IssuedBooks i
JOIN Students s ON i.StudentID = s.StudentID
JOIN Books b ON i.BookID = b.BookID
WHERE i.ReturnDate IS NULL
AND i.IssueDate < CURRENT_DATE - INTERVAL 14 DAY;

--Popularity Index Query
SELECT b.Category, COUNT(*) AS TotalBorrowed
FROM IssuedBooks i
JOIN Books b ON i.BookID = b.BookID
GROUP BY b.Category
ORDER BY TotalBorrowed DESC;


--Remove Inactive Students(3 years)
DELETE FROM Students
WHERE LastBorrowDate < CURRENT_DATE - INTERVAL 3 YEAR;

--or we can also do this instaed of our Delete Query by suing our Update Query.
UPDATE Students
SET Status = 'Inactive'
WHERE LastBorrowDate < CURRENT_DATE - INTERVAL 3 YEAR;