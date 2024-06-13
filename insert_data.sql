USE BloodBankManagement;

INSERT INTO Donors (name, age, gender, blood_type, last_donation_date, city, contact_number)
VALUES 
('John Doe', 29, 'Male', 'A+', '2023-01-15', 'New York', '1234567890'),
('Jane Smith', 34, 'Female', 'O-', '2023-03-22', 'Los Angeles', '0987654321');

INSERT INTO Patients (name, age, gender, blood_type, hospital_id, contact_number)
VALUES 
('Alice Brown', 45, 'Female', 'A+', 1, '1122334455'),
('Bob White', 60, 'Male', 'B+', 2, '2233445566');

INSERT INTO Blood_Inventory (blood_type, quantity, expiry_date, received_date, donor_id)
VALUES 
('A+', 5, '2024-06-30', '2024-01-01', 1),
('O-', 3, '2024-07-15', '2024-02-10', 2);

INSERT INTO Hospitals (name, city, contact_number)
VALUES 
('City Hospital', 'New York', '3344556677'),
('County Hospital', 'Los Angeles', '4455667788');

INSERT INTO Blood_Donation_Events (event_name, event_date, city, number_of_donors)
VALUES 
('Summer Blood Drive', '2023-06-10', 'New York', 50),
('Winter Blood Drive', '2023-12-05', 'Los Angeles', 30);
