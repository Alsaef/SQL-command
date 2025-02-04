# SQL Queries Documentation

## Overview
This document contains SQL queries for modifying tables, inserting data, and retrieving information from the database.

---

## Altering Tables (`ALTER TABLE`)

### Add a Column to `users` Table
```sql
ALTER TABLE users ADD COLUMN is_active BOOLEAN;
```

### Update Data in `users` Table
```sql
UPDATE users SET is_active=true WHERE id=2;
```

### Add a `create_date` Column with Default Value
```sql
ALTER TABLE users ADD COLUMN create_date DATE DEFAULT CURRENT_DATE NOT NULL;
```

### Drop a Column from `users` Table
```sql
ALTER TABLE users DROP COLUMN create_date;
```

### Modify Column Constraint (Set `email` as NOT NULL)
```sql
ALTER TABLE users
ALTER COLUMN email SET NOT NULL;
```

### Add a Unique Constraint to `email`
```sql
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);
```

---

## Inserting Data (`INSERT INTO`)

### Insert Data into `users` Table
```sql
INSERT INTO users (id, name, email, dob, is_active) VALUES (4, 'Saef', 'saef.ratl@gmail2.com', '2003-06-22', true);
```

### Insert Data into `Students` Table
```sql
INSERT INTO Students (name, email, age, dob) 
VALUES 
('Jane Smith', 'jane.smith@example.com', 22, '2001-05-10'),
('Alice Johnson', 'alice.johnson@example.com', 19, '2004-08-20'),
('Bob Brown', 'bob.brown@example.com', 21, '2002-03-25');
```

---

## Retrieving Data (`SELECT`)

### Select All Data from `users` Table
```sql
SELECT * FROM users;
```

### Select All Data from `Students` Table
```sql
SELECT * FROM Students;
```

### Select Data with a Condition
```sql
SELECT * FROM Students WHERE id=1;
```

### Select a Specific Column
```sql
SELECT name FROM students;
```

### Order Data by `age`
```sql
SELECT age FROM students ORDER BY age ASC;
SELECT age FROM students ORDER BY age DESC;
```

### Aggregate Functions
```sql
SELECT UPPER(name) FROM students; -- Convert names to uppercase
SELECT CONCAT(name, ' ', email) FROM students; -- Concatenate name and email
SELECT AVG(age) FROM students; -- Get average age
SELECT MAX(age) FROM students; -- Get maximum age
SELECT MIN(age) FROM students; -- Get minimum age
```

---

## Table Creation (`CREATE TABLE`)

### Create `Students` Table
```sql
CREATE TABLE Students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email TEXT NOT NULL UNIQUE,
    age INT NOT NULL,
    dob DATE NOT NULL,
    create_date DATE DEFAULT CURRENT_DATE NOT NULL,
    update_date DATE DEFAULT CURRENT_DATE NOT NULL
);
```

---

## License
This project is for educational purposes only. Feel free to modify and use it as needed.

---

## Author
**Ratul**

