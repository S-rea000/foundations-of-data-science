--- CRUD OPERATIONS
-- BOOL:TRUE OR FALSE
-- CHAR: CHAR, VARCHAR AND TEXT
-- NUMERIC: INTEGER & FLOATING POINT NO.
-- TEMPORAL: DATE, TIME, TIMESTAMP, INTERVAL
-- SERIAL: NON REPEATED SERIAL NUMBERS 1,2,3,4,....
-- PRIMARY KEY: UNIQUE ID/ IDENTIFIER
-- FOREIFN KEY: CONSTRAINS RELATIONSHIP BETWEEN TWO TABLES

--- CREATE ---
CREATE TABLE Players(
  player_id SERIAL PRIMARY KEY,
  age SMALLINT NOT NULL
)

CREATE TABLE account(
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(300) NOT NULL,
  created_on TIMESTAMP NOT NULL,
  last_login TIMESTAMP
)

CREATE TABLE job(
job_id SERIAL PRIMARY KEY,
job_name VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE account_job(
user_id INTEGER REFERENCES account(user_id),
job_id INTEGER REFERENCES job (job_id),
hire_date TIMESTAMP
)

--- INSERT ---
SELECT * FROM account;
INSERT INTO account (username, password, email, created_on)
VALUES
('shreya', 'password123', 'shreya@gmail.com', CURRENT_TIMESTAMP),
('Riya', 'password234', 'riya@gmail.com', CURRENT_TIMESTAMP),
('Priya', 'password234', 'priya@gmail.com', CURRENT_TIMESTAMP);

SELECT * FROM account;
SELECT * FROM job;

INSERT INTO job(job_name)
VALUES
('Data Scientist'),
('Data Analyst'),
('Data Engineer'),
('Data Scientist'),
('Data Analyst'),
('Data Engineer');

SELECT * FROM job;
SELECT * FROM account_job;

INSERT INTO account_job( hire_date)
VALUES
(CURRENT_TIMESTAMP),
(CURRENT_TIMESTAMP),
(CURRENT_TIMESTAMP);
SELECT * FROM account_job;

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP),
(2,2,CURRENT_TIMESTAMP),
(3,3,CURRENT_TIMESTAMP);

SELECT * FROM account_job;

--- UPDATE ---
UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;

SELECT * FROM ACCOUNT;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job

--- DELETE ----
DELETE FROM account_job
WHERE user_id IS NULL AND job_id IS NULL;
SELECT * FROM account_job

SELECT * FROM job;
DELETE FROM job
WHERE job_id IN (4, 5, 6)
SELECT * FROM job;

--- ALTER ---
-- Table
SELECT * FROM account;
ALTER TABLE account
RENAME TO workers;
--- Column
SELECT * FROM workers;
ALTER TABLE workers
RENAME COLUMN last_login TO last_online;
SELECT * FROM workers;
-- Add
ALTER TABLE job
ADD COLUMN job_type VARCHAR(50);
UPDATE job SET job_type = 'Remote' WHERE job_id = 1;
UPDATE job SET job_type = 'Hybrid' WHERE job_id = 2;
UPDATE job SET job_type = 'On-site' WHERE job_id = 3;
SELECT * FROM job;