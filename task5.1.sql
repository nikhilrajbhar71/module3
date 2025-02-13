-- question link : https://docs.google.com/document/d/1Godh3GllVEIuRCcGZI7GKqa9DDFTnxegMACxBMoMWyI/edit?tab=t.0


CREATE DATABASE questionone;
use questionone;

CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Friends (
    ID INT PRIMARY KEY,
    Friend_ID INT UNIQUE,
    FOREIGN KEY (ID) REFERENCES Students(ID),
    FOREIGN KEY (Friend_ID) REFERENCES Students(ID)
);

CREATE TABLE Packages (
    ID INT PRIMARY KEY,
    Salary INT NOT NULL,
    FOREIGN KEY (ID) REFERENCES Students(ID)
);


INSERT INTO Students (ID, Name) VALUES 
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve');


INSERT INTO Friends (ID, Friend_ID) VALUES 
(1, 2),
(2, 3),
(3, 4), 
(4, 5), 
(5, 1); 


INSERT INTO Packages (ID, Salary) VALUES 
(1, 50),  
(2, 60),  
(3, 70),  
(4, 40), 
(5, 90);  



SELECT s1.Name
FROM Students s1
JOIN Friends f ON s1.ID = f.ID
JOIN Packages p1 ON s1.ID = p1.ID
JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.Salary
ORDER BY p2.Salary;

