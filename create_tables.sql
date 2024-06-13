CREATE DATABASE BloodBankManagement;
USE BloodBankManagement;

CREATE TABLE Donors (
    donor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(3),
    last_donation_date DATE,
    city VARCHAR(100),
    contact_number VARCHAR(15)
);

CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    blood_type VARCHAR(3),
    hospital_id INT,
    contact_number VARCHAR(15)
);

CREATE TABLE Blood_Inventory (
    blood_unit_id INT AUTO_INCREMENT PRIMARY KEY,
    blood_type VARCHAR(3),
    quantity INT,
    expiry_date DATE,
    received_date DATE,
    donor_id INT,
    FOREIGN KEY (donor_id) REFERENCES Donors(donor_id)
);

CREATE TABLE Hospitals (
    hospital_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    contact_number VARCHAR(15)
);

CREATE TABLE Blood_Donation_Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE,
    city VARCHAR(100),
    number_of_donors INT
);
