@ --block
CREATE TABLE users(
    user_id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio VARCHAR(250) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_id)
);
