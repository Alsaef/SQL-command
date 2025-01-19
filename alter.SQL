--table data query
SELECT * FROM users

--table column add 
ALTER TABLE users ADD COLUMN is_active BOOLEAN;

--update table data
UPDATE users SET is_active=true WHERE id=2