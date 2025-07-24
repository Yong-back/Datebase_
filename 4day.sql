 USE practice;
 
CREATE TABLE owners(
	owner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(255)
 );
 
CREATE TABLE pets(
	pet_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    species VARCHAR(50),
    breed VARCHAR(50),
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

CREATE TABLE rooms(
	room_id INT AUTO_INCREMENT PRIMARY KEY,
    room_num VARCHAR(50) NOT NULL UNIQUE,
    room_type VARCHAR(50),
    pricepernight DECIMAL(10,2) NOT NULL
);

CREATE TABLE reservations(
	reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT NOT NULL,
    room_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id),
	FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE services(
	service_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT NOT NULL,
    service_name VARCHAR(100),
    service_price DECIMAL(10,2),
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id)
);