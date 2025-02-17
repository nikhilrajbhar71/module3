
CREATE DATABASE questiontwo;
USE questiontwo;


CREATE TABLE Functions (
    X INT NOT NULL,
    Y INT NOT NULL
);

INSERT INTO Functions (X, Y) VALUES 
(1, 2),
(2, 1),
(3, 4),
(5, 6),
(6, 5),
(7, 8),
(8, 9);


SELECT F1.X, F1.Y
FROM Functions F1
JOIN Functions F2 ON F1.X = F2.Y AND F1.Y = F2.X
WHERE F1.X < F1.Y
ORDER BY F1.X;
  

