--1. Tworzenie tabel

CREATE TABLE table1 (
    PassengerId	 int,
    Survived double,
    Pclass int,
    Name varchar(255),
    Sex varchar(255),
    Age double
);


CREATE TABLE table2 (
    PassengerId	 int,
    SibSp int,
    Parch int,
    Ticket varchar(255),
    Fare double,
    Cabin varchar(255),
    Embarked varchar(255)
);



--2.SELECT
SELECT * FROM table1;

SELECT * FROM table2;

SELECT PassengerId, Survived, Name FROM table1;


--3. WHERE

SELECT PassengerId, Survived, Name,Pclass FROM table1 WHERE Pclass=1;

SELECT PassengerId, Survived, Pclass, LENGTH(Name) FROM table1 WHERE Pclass = 1 and LENGTH(Name) > 10;

SELECT PassengerId, Survived, Pclass, LENGTH(Name) FROM table1 WHERE Pclass = 1 or LENGTH(Name) > 10;

SELECT PassengerId, Survived, Pclass, LENGTH(Name) FROM table1 WHERE Survived <> 0; 

SELECT PassengerId, Survived, Pclass, Name FROM table1 WHERE name LIKE '%Elizabeth%';

SELECT PassengerId, Survived, Pclass, Name FROM table1 WHERE PassengerId IN (24,67,378,233,982);

--4. Order BY

SELECT PassengerId, Survived, Pclass,Name, LENGTH(Name) FROM table1 Order By LENGTH(Name) Desc;

SELECT PassengerId, Survived, Pclass,Name, LENGTH(Name) FROM table1 Order By LENGTH(Name) ASC;


--5. Insert INTO

INSERT INTO table1 VALUES (1101, 1, 1, 'Mariusz Pudzianowski', 'male', 45);

--6. NULL Values 

SELECT PassengerId, Survived, Pclass, Name FROM table1 WHERE Survived IS NULL;

SELECT PassengerId, Survived, Pclass, Name FROM table1 WHERE Survived IS NOT NULL;

--7. UPDATE
UPDATE table1
SET Survived = 1, Pclass = 2
WHERE Name='Braund, Mr. Owen Harris';

-- Zmień płeć na żeńską 3 różnych osób

--8. LIMIT 

SELECT * FROM table1 LIMIT 20;

--9.MIN i MAX

-- SELECT Name, MIN(Age) FROM table1;

SELECT Name, MIN(Age) FROM table1;

-- Wyciągnij najstarszą osobę

-- Wyciągnij 3 najmłodsze osoby

--10. Group BY

SELECT COUNT(*), Sex
FROM table1
GROUP BY Sex;

--Policz ile osób przeżyło

--11. SUM 

SELECT SUM(Fare) as Fare FROM table2;

--12. AVG

SELECT AVG(Age) as Avg_age FROM table1;
-- Policz średnią Fare


--BETWEEN

SELECT * FROM table1 WHERE Age BETWEEN 10 AND 20;

--13. JOIN

SELECT *
FROM table1
INNER JOIN table2
ON table1.PassengerId = table2.PassengerId;


SELECT * FROM table1 
LEFT JOIN table2  ON table1.PassengerId = table2.PassengerId
UNION
SELECT * FROM table1 
RIGHT JOIN table2 ON table1.PassengerId = table2.PassengerId


UPDATE table1

SET Survived = 1, Pclass = 2

WHERE Name In (SELECT Name FROM table1 WHERE Age > 26);
