DROP DATABASE IF EXISTS optical_store;
CREATE DATABASE optical_store;
USE optical_store;

CREATE TABLE Supplier (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    street VARCHAR(150) NOT NULL,
    number VARCHAR(10),
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    country VARCHAR(50) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    fax VARCHAR(15),
    nif VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE Glass (
    glass_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_id INT NOT NULL,
    brand VARCHAR(100) UNIQUE NOT NULL,
    left_lens_graduation DECIMAL(4, 2) NOT NULL,
    right_lens_graduation DECIMAL(4, 2) NOT NULL,
    frame_type ENUM('floating', 'plastic', 'metallic') NOT NULL,
    frame_color VARCHAR(50) NOT NULL,
    left_lens_color VARCHAR(50) NOT NULL,
    right_lens_color VARCHAR(50) NOT NULL,
    price DECIMAL(6, 2) NOT NULL,
    
    CONSTRAINT fk_glass_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES Supplier (supplier_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    registration_date DATE NOT NULL,
    recommended_by_client_id INT,
    
    CONSTRAINT fk_client_recommended
        FOREIGN KEY (recommended_by_client_id)
        REFERENCES Client (client_id)
        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nif VARCHAR(15) UNIQUE NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE Sale (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    employee_id INT NOT NULL,
    sale_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_sale_client
        FOREIGN KEY (client_id)
        REFERENCES Client (client_id)
        ON UPDATE CASCADE ON DELETE RESTRICT,
        
    CONSTRAINT fk_sale_employee
        FOREIGN KEY (employee_id)
        REFERENCES Employee (employee_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE SaleDetail (
    sale_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT NOT NULL,
    glass_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    unit_price DECIMAL(6, 2) NOT NULL,
    
    UNIQUE KEY uk_sale_glass (sale_id, glass_id),
    
    CONSTRAINT fk_saledetail_sale
        FOREIGN KEY (sale_id)
        REFERENCES Sale (sale_id)
        ON UPDATE CASCADE ON DELETE CASCADE,
        
    CONSTRAINT fk_saledetail_glass
        FOREIGN KEY (glass_id)
        REFERENCES Glass (glass_id)
        ON UPDATE CASCADE ON DELETE RESTRICT
);