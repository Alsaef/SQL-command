--table data query
SELECT * FROM users

--table column add 
ALTER TABLE users ADD COLUMN is_active BOOLEAN;

--update table data
UPDATE users SET is_active=true WHERE id=2

--create data column add

ALTER TABLE users ADD COLUMN create_date DATE DEFAULT CURRENT_DATE NOT NULL

-- Drop table column

ALTER TABLE users DROP COLUMN create_date

-- table column type update

ALTER TABLE users
ALTER COLUMN email SET NOT NULL

-- add data

INSERT INTO users (id, name, email, dob, is_active) VALUES (3, 'saef', 'saef.ratl@gmail.com', '2003-06-22',true)