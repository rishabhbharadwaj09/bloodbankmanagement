USE BloodBankManagement;

-- Total number of blood units by blood type
SELECT blood_type, SUM(quantity) AS total_units
FROM Blood_Inventory
WHERE expiry_date > CURRENT_DATE
GROUP BY blood_type;

-- Top 5 cities with the highest number of donors
SELECT city, COUNT(donor_id) AS number_of_donors
FROM Donors
GROUP BY city
ORDER BY number_of_donors DESC
LIMIT 5;

-- More queries...
