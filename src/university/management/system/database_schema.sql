-- Database schema for University Management System

CREATE DATABASE IF NOT EXISTS universitymanagement;
USE universitymanagement;

-- Table for storing student details
CREATE TABLE IF NOT EXISTS student (
    name VARCHAR(100),
    fname VARCHAR(100),
    rollno VARCHAR(20) PRIMARY KEY,
    dob DATE,
    address VARCHAR(255),
    phone VARCHAR(15),
    email VARCHAR(100),
    class_x DECIMAL(5, 2),
    class_xii DECIMAL(5, 2),
    aadhar VARCHAR(20),
    course VARCHAR(50),
    branch VARCHAR(50)
);

-- Table for storing teacher details
CREATE TABLE IF NOT EXISTS teacher (
    name VARCHAR(100),
    fname VARCHAR(100),
    empId VARCHAR(20) PRIMARY KEY,
    dob DATE,
    address VARCHAR(255),
    phone VARCHAR(15),
    email VARCHAR(100),
    class_x DECIMAL(5, 2),
    class_xii DECIMAL(5, 2),
    aadhar VARCHAR(20),
    education VARCHAR(50),
    department VARCHAR(50)
);

-- Table for storing student leave details
CREATE TABLE IF NOT EXISTS studentleave (
    rollno VARCHAR(20),
    date DATE,
    time_duration VARCHAR(20),
    FOREIGN KEY (rollno) REFERENCES student(rollno)
);

-- Table for storing teacher leave details
CREATE TABLE IF NOT EXISTS teacherleave (
    empId VARCHAR(20),
    date DATE,
    time_duration VARCHAR(20),
    FOREIGN KEY (empId) REFERENCES teacher(empId)
);

-- Table for storing fee details
CREATE TABLE IF NOT EXISTS fee (
    course VARCHAR(50),
    semester1 DECIMAL(10, 2),
    semester2 DECIMAL(10, 2),
    semester3 DECIMAL(10, 2),
    semester4 DECIMAL(10, 2),
    semester5 DECIMAL(10, 2),
    semester6 DECIMAL(10, 2),
    semester7 DECIMAL(10, 2),
    semester8 DECIMAL(10, 2),
    PRIMARY KEY (course)
);

-- Table for storing fee payment details
CREATE TABLE IF NOT EXISTS feecollege (
    rollno VARCHAR(20),
    course VARCHAR(50),
    branch VARCHAR(50),
    semester VARCHAR(20),
    total DECIMAL(10, 2),
    FOREIGN KEY (rollno) REFERENCES student(rollno)
);

-- Table for storing subjects
CREATE TABLE IF NOT EXISTS subject (
    rollno VARCHAR(20),
    semester VARCHAR(20),
    subj1 VARCHAR(50),
    subj2 VARCHAR(50),
    subj3 VARCHAR(50),
    subj4 VARCHAR(50),
    subj5 VARCHAR(50),
    FOREIGN KEY (rollno) REFERENCES student(rollno)
);

-- Table for storing marks
CREATE TABLE IF NOT EXISTS marks (
    rollno VARCHAR(20),
    semester VARCHAR(20),
    mrk1 DECIMAL(5, 2),
    mrk2 DECIMAL(5, 2),
    mrk3 DECIMAL(5, 2),
    mrk4 DECIMAL(5, 2),
    mrk5 DECIMAL(5, 2),
    FOREIGN KEY (rollno) REFERENCES student(rollno)
);

-- Table for login credentials
CREATE TABLE IF NOT EXISTS login (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(100)
);