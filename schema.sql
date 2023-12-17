-- schema.sql

-- Users Table
-- Stores user account information
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    email TEXT,
    hashed_password TEXT,

);

-- Health Metrics Table
-- Records various health parameters for users over time
CREATE TABLE health_metrics (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    date DATE NOT NULL,
    weight DECIMAL,
    blood_pressure TEXT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Diet Logs Table
-- Tracks daily food and calorie intake of users
CREATE TABLE diet_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    date DATE NOT NULL,
    food_item TEXT,
    calories INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Exercise Logs Table
-- Records workout sessions and types of exercises
CREATE TABLE exercise_logs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    date DATE NOT NULL,
    exercise_type TEXT,
    duration INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Mental Wellness Table
-- Tracks mood and stress levels, along with sleep patterns
CREATE TABLE mental_wellness (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    date DATE NOT NULL,
    mood TEXT,
    stress_level INTEGER,
    sleep_hours INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

-- Medical Appointments Table
-- Manages information regarding medical appointments
CREATE TABLE medical_appointments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    appointment_date DATE NOT NULL,
    doctor_name TEXT,
    purpose TEXT,
    FOREIGN KEY(user_id) REFERENCES users(id)  
);
