-- queries.sql

-- INSERT Queries: Adding data to the database

-- Adding a new user
INSERT INTO users (username, email, hashed_password) VALUES ('johndoe', 'johndoe@example.com', 'hashedpassword123');

-- Recording a new health metric
INSERT INTO health_metrics (user_id, date, weight, blood_pressure) VALUES (1, '2023-01-01', 70.0, '120/80');

-- Logging a diet entry
INSERT INTO diet_logs (user_id, date, food_item, calories) VALUES (1, '2023-01-01', 'Apple', 95);

-- Logging an exercise entry
INSERT INTO exercise_logs (user_id, date, exercise_type, duration) VALUES (1, '2023-01-01', 'Running', 30);

-- Recording a mental wellness entry
INSERT INTO mental_wellness (user_id, date, mood, stress_level, sleep_hours) VALUES (1, '2023-01-01', 'Happy', 3, 8);

-- Scheduling a medical appointment
INSERT INTO medical_appointments (user_id, appointment_date, doctor_name, purpose) VALUES (1, '2023-01-10', 'Dr. Smith', 'Routine Check-up');

-- SELECT Queries: Retrieving data from the database

-- Retrieve a user's profile information
SELECT * FROM users WHERE username = 'johndoe';

-- Get all health metrics for a specific user
SELECT * FROM health_metrics WHERE user_id = 1;

-- Get all diet logs for a specific user on a specific date
SELECT * FROM diet_logs WHERE user_id = 1 AND date = '2023-01-01';

-- Get all exercise logs for a specific user
SELECT * FROM exercise_logs WHERE user_id = 1;

-- Get a user's mental wellness entries
SELECT * FROM mental_wellness WHERE user_id = 1;

-- Retrieve upcoming medical appointments for a user
SELECT * FROM medical_appointments WHERE user_id = 1 AND appointment_date >= CURRENT_DATE;

-- UPDATE Queries: Modifying existing data

-- Update a user's email
UPDATE users SET email = 'newemail@example.com' WHERE id = 1;

-- Update a health metric entry
UPDATE health_metrics SET weight = 70.5, blood_pressure = '121/81' WHERE id = 1;

-- DELETE Queries: Removing data

-- Delete a user's account
DELETE FROM users WHERE id = 1;

-- Delete a specific health metric entry
DELETE FROM health_metrics WHERE id = 1;
