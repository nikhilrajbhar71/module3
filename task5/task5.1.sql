CREATE DATABASE QUESTION2;
USE QUESTION2;

CREATE TABLE Hackers (
    hacker_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Challenges (
    challenge_id INT PRIMARY KEY,
    hacker_id INT,
    FOREIGN KEY (hacker_id) REFERENCES Hackers(hacker_id)
);

INSERT INTO Hackers (hacker_id, name) VALUES
(101, 'Alice'),
(102, 'Bob'),
(103, 'Charlie'),
(104, 'David'),
(105, 'Eve');




INSERT INTO Challenges (challenge_id, hacker_id) VALUES
(1, 101), 
(2, 101),  
(3, 102), 
(4, 102),  
(5, 102),  
(6, 103);



SELECT h.hacker_id, h.name, 
       COUNT(c.challenge_id) AS total_challenges
FROM Hackers h
LEFT JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY total_challenges DESC, h.hacker_id ASC;




