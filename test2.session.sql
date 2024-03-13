-- @block
CREATE DATABASE Library;

-- @block
CREATE TABLE librarian(
    fname VARCHAR(255),
    lname VARCHAR(255),
    librarian_id int NOT NULL,
    phone int,
    SSN int NOT NULL,
    PRIMARY KEY(librarian_id, phone) 
);

CREATE TABLE address(
    ID int NOT NULL,
    city VARCHAR(255),
    street_number int,
    state_of VARCHAR(255),
    street_name VARCHAR(255),
    ZIP int,
    PRIMARY KEY(ID)
);

CREATE TABLE member(
    membership_number int NOT NULL,
    drivers_license_num int,
    phone_number int,
    birthday DATE,
    PRIMARY KEY(membership_number)
);

CREATE TABLE author(
    ID int NOT NULL,
    sex VARCHAR(255),
    fname VARCHAR(255),
    lname VARCHAR(255),
    PRIMARY KEY(ID)
);

CREATE TABLE book(
    title VARCHAR(255),
    ISBN int NOT NULL,
    call_num int,
    year_published int,
    publisher VARCHAR(255),
    PRIMARY KEY(ISBN)
);

CREATE TABLE section(
    section_name VARCHAR(255),
    section_number int NOT NULL,
    section_description VARHCAR(500),
    PRIMARY KEY(section_number)
);








