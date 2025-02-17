CREATE DATABASE QUESTION3;
USE QUESTION3;




CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

DROP TABLE Friends;
CREATE TABLE Friends (
    ID INT PRIMARY KEY,         
    Friend_ID INT UNIQUE,      
    FOREIGN KEY (Friend_ID) REFERENCES Students(ID) 
);

CREATE TABLE Packages (
    ID INT PRIMARY KEY,     
    Salary INT NOT NULL         
);

INSERT INTO Students (ID, Name) VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve'),
(6, 'Frank');


INSERT INTO Friends (ID, Friend_ID) VALUES 
(1, 2), 
(2, 3),
(3, 4),
(4, 5), 
(5, 6), 
(6, 1); 


INSERT INTO Packages (ID, Salary) VALUES 
(1, 50),  
(2, 60), 
(3, 55),  
(4, 80),  
(5, 70),  
(6, 90);  



SELECT 
    s.Name AS Student_Name,
    f.Friend_ID,
    p.Salary AS Student_Salary,
    p2.Salary AS Friend_Salary
FROM Students s
JOIN Friends f ON s.ID = f.ID
JOIN Packages p ON s.ID = p.ID
JOIN Packages p2 ON f.Friend_ID = p2.ID;



