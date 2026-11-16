SELECT * FROM EMPLOYEES                             
LIMIT 5;

SELECT * FROM EMPLOYEES                            
ORDER BY SALARY DESC
LIMIT 10;

SELECT * FROM EMPLOYEES                              
ORDER BY SALARY ASC
LIMIT 5;

SELECT * FROM PRODUCTS                              
ORDER BY PRICE DESC
LIMIT 10;

SELECT * FROM EMPLOYEES                              
LIMIT 5 OFFSET 5;

SELECT * FROM STUDENTS                               
LIMIT 10 OFFSET 10;

SELECT * FROM PRODUCTS                               
LIMIT 10 OFFSET 10;

SELECT * FROM EMPLOYEES                               
LIMIT 5 OFFSET 10;

SELECT * FROM PRODUCTS                              
ORDER BY PRICE DESC
LIMIT 3 OFFSET 2;

SELECT * FROM EMPLOYEES                             
LIMIT 6 OFFSET 4;