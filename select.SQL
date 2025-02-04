CREATE TABLE Students(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INT NOT NULL,
    dob DATE NOT NULL,
    create_date DATE DEFAULT CURRENT_DATE NOT NULL,
    update_date DATE DEFAULT CURRENT_DATE NOT NULL
)

-- insert date
INSERT INTO Students (name, email, age, dob) 
VALUES 
('Jane Smith', 'jane.smith@example.com', 22, '2001-05-10'),
('Alice Johnson', 'alice.johnson@example.com', 19, '2004-08-20'),
('Bob Brown', 'bob.brown@example.com', 21, '2002-03-25');

SELECT * FROM Students;

-- Where Condition

SELECT * FROM Students WHERE id= 1;

-- select order by asc amd desc

SELECT age FROM students ORDER BY age ASC

-- select from property
SELECT name FROM students


-- aggregate function
SELECT upper(name) FROM students



