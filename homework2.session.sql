-- @block
USE homework2;

-- @block
CREATE TABLE librarian (
    fname VARCHAR(255),
    lname VARCHAR(255),
    librarian_num int NOT NULL,
    phone int,
    SSN int,
    PRIMARY KEY (librarian_num)
);

-- @block
CREATE TABLE address (
    ID int NOT NULL, 
    street_num int,
    state VARCHAR(255),
    street_name VARCHAR(255),
    ZIP int,
    PRIMARY KEY (ID) 
);

-- @block
CREATE TABLE section (
    name VARCHAR(255),
    section_num int NOT NULL,
    librarian_num INT NOT NULL,
    description VARCHAR(500),
    PRIMARY KEY (section_num),
    FOREIGN KEY (librarian_num) REFERENCES librarian(librarian_num) 
);

-- @block
CREATE TABLE member (
    birthday DATE, 
    phone_number INT, 
    dr_license_num INT, 
    membership_num INT NOT NULL,
    PRIMARY KEY (membership_num)
);

-- @block
CREATE TABLE author (
    ID INT NOT NULL , 
    sex VARCHAR(255),
    fname VARCHAR(255),
    lname VARCHAR(255),
    PRIMARY KEY (ID)
);

-- @block
CREATE TABLE book (
    title VARCHAR(255),
    ISBN INT NOT NULL,
    call_number INT,
    book_yr YEAR,
    publisher VARCHAR(255),
    section_num int NOT NULL,
    PRIMARY KEY (ISBN),
    FOREIGN KEY (section_num) REFERENCES section(section_num) 
);

-- @block
CREATE TABLE bookCopy (
    ID INT NOT NULL, 
    ISBN INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN)
);

-- @block
CREATE TABLE has (
    librarian_number INT,
    address_ID INT,
    membership_num INT,
    PRIMARY KEY (librarian_number, address_ID, membership_num),
    FOREIGN KEY (librarian_number) REFERENCES librarian(librarian_num),
    FOREIGN KEY (address_ID) REFERENCES address(ID),
    FOREIGN KEY (membership_num) REFERENCES member(membership_num),
    CONSTRAINT uc_librarian_number UNIQUE (librarian_number)
);

-- @block
CREATE TABLE borrow(
    membership_num INT,
    librarian_num INT,
    due_date TIME,
    borrow_date TIME,
    book_copy_id INT,
    PRIMARY KEY(membership_num, librarian_num, book_copy_id),
    FOREIGN KEY (membership_num) REFERENCES member(membership_num),
    FOREIGN KEY (librarian_num) REFERENCES librarian(librarian_num),
    FOREIGN KEY (book_copy_id) REFERENCES bookCopy(ID)
);

-- @block
CREATE TABLE hold(
    book_copy_id INT,
    membership_num INT,
    hold_date DATE,
    PRIMARY KEY(book_copy_id, membership_num),
    FOREIGN KEY(book_copy_id) REFERENCES bookCopy(ID),
    FOREIGN KEY(membership_num) REFERENCES member(membership_num)
);

-- @block
CREATE TABLE written_by(
    book_id INT,
    author_id INT,
    PRIMARY KEY(book_id, author_id),
    FOREIGN KEY(book_id) REFERENCES book(ISBN),
    FOREIGN KEY(author_id) REFERENCES author(ID)
);








