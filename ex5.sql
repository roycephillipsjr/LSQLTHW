SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != 'Zed';

SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age < 30;

SELECT * FROM person WHERE age > 30;

SELECT * FROM person WHERE first_name != 'Zed' and age < 40;

SELECT name, breed, age FROM pet WHERE dead = 1 or age > 10;

SELECT name, breed, age FROM pet WHERE dead = 0 and age > 10;
