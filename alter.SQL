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