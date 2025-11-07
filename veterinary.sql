 CREATE DATABASE veterinary;

 CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors(
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
 
 CREATE TABLE invoices(
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymentdate TIME
);

CREATE TABLE medicalrecords(
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT
);

INSERT INTO owners(ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Maria', 'Santos', 'Lipa City', '09171234501', 'maria.santos@example.com'),
(2, 'Juan', 'Reyes', 'Batangas City', '09181234502', 'juan.reyes@example.com'),
(3, 'Ana', 'Torres', 'San Jose', '09191234503', 'ana.torres@example.com'),
(4, 'Luis', 'Gonzales', 'Malvar', '09201234504', 'luis.gonzales@example.com'),
(5, 'Carmen', 'Dela Cruz', 'Lipa City', '09211234505', 'carmen.dc@example.com'),
(6, 'Rafael', 'Mendoza', 'Sto. Tomas', '09221234506', 'rafael.mendoza@example.com'),
(7, 'Elena', 'Flores', 'Tanauan', '09231234507', 'elena.flores@example.com'),
(8, 'Marco', 'Rivera', 'Lipa City', '09241234508', 'marco.rivera@example.com'),
(9, 'Sofia', 'Ramirez', 'San Jose', '09251234509', 'sofia.ramirez@example.com'),
(10, 'Paolo', 'Luna', 'Batangas City', '09261234510', 'paolo.luna@example.com');

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Whiskers', 'Cat', 'Persian', '2020-01-10', 'Female', 'White', 1),
(2, 'Buddy', 'Dog', 'Labrador', '2019-03-22', 'Male', 'Yellow', 2),
(3, 'Milo', 'Cat', 'Siamese', '2021-06-15', 'Male', 'Cream', 3),
(4, 'Rocky', 'Dog', 'German Shepherd', '2018-02-14', 'Male', 'Black/Tan', 4),
(5, 'Luna', 'Cat', 'British Shorthair', '2020-11-30', 'Female', 'Gray', 5),
(6, 'Choco', 'Dog', 'Poodle', '2022-05-20', 'Female', 'Brown', 6),
(7, 'Snow', 'Cat', 'Ragdoll', '2021-09-09', 'Male', 'White', 7),
(8, 'Max', 'Dog', 'Beagle', '2019-12-25', 'Male', 'Tri-color', 8),
(9, 'Simba', 'Cat', 'Maine Coon', '2022-01-05', 'Male', 'Orange', 9),
(10, 'Bella', 'Dog', 'Shih Tzu', '2020-04-18', 'Female', 'White/Brown', 10);

INSERT INTO appointments(appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2023-01-05', 'General Checkup'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-01-12', 'Skin Irritation'),
(4, 4, '2023-01-15', 'Limping'),
(5, 5, '2023-01-18', 'Dental Cleaning'),
(6, 6, '2023-01-20', 'Flea Treatment'),
(7, 7, '2023-01-22', 'Vaccination'),
(8, 8, '2023-01-25', 'Ear Infection'),
(9, 9, '2023-01-28', 'Checkup – Vomiting'),
(10, 10, '2023-01-30', 'Grooming');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD registereddate DATE;

ALTER TABLE invoices
RENAME COLUMN paymentdate TO paymenttime;
