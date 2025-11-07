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

