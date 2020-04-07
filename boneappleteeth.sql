CREATE TABLE users (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
    username VARCHAR(45) NOT NULL UNIQUE,
    password VARCHAR(45) NOT NULL,
    email_address VARCHAR(45) NOT NULL,
    zip_code INT NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE restaurant (
	restaurant_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	rest_name VARCHAR(45) NOT NULL,
	rest_address VARCHAR(45) NOT NULL,
	food_type VARCHAR(45) NOT NULL,
	food_price INT NOT NULL,
	food_rating INT NOT NULL,
	accomodation VARCHAR(45) NOT NULL,
	deals VARCHAR(45) NOT NULL,
	approved BOOL
);

CREATE TABLE contact (
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	company_name VARCHAR(45) NOT NULL,
	email_address VARCHAR(45) NOT NULL,
	message VARCHAR(200) NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_review (
	review_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(45) NOT NULL,
	last_name VARCHAR(45) NOT NULL,
	rating INT NOT NULL,
	review VARCHAR(200) NOT NULL,
	restaurant_id INT NOT NULL,
	user_id INT NOT NULL,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_bookmark (
	restaurant_id INT NOT NULL,
	user_id INT NOT NULL,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id)
);
