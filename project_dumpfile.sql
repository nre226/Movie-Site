CREATE TABLE movies (movie_id INT(8) NOT NULL AUTO_INCREMENT, movie_pic VARCHAR(40) NOT NULL, title VARCHAR(40), description VARCHAR(64000), release INT(8), duration INT(3), language VARCHAR(40), PRIMARY KEY (movie_id));

CREATE TABLE user (user_id INT(8) NOT NULL AUTO_INCREMENT, email VARCHAR(40) NOT NULL, gender CHAR(1), type VARCHAR(20) NOT NULL, dob DATE, pass VARCHAR(30) NOT NULL, fname VARCHAR(40), mname VARCHAR(40), lname VARCHAR(40), PRIMARY KEY (user_id));

CREATE TABLE crew (crew_id INT(8) NOT NULL, first_name VARCHAR(40), middle_name VARCHAR(40), last_name VARCHAR(40), PRIMARY KEY (crew_id));

CREATE TABLE genre (genre VARCHAR(40), movie_id INT(8) NOT NULL, PRIMARY KEY (genre, movie_id));

CREATE TABLE roles (role VARCHAR(40), movie_id INT(8) NOT NULL, crew_id INT(8) NOT NULL, PRIMARY KEY (role, movie_id, crew_id));

CREATE TABLE tag (tag VARCHAR(40), movie_id INT(8) NOT NULL, PRIMARY KEY (tag, movie_id));

CREATE TABLE rating (user_id INT(8) NOT NULL, movie_id INT(8) NOT NULL, rating INT(2), review VARCHAR(64000), PRIMARY KEY (user_id, movie_id) );

CREATE TABLE watchlist (user_id INT(8) NOT NULL, movie_id INT(8) NOT NULL, PRIMARY KEY (user_id, movie_id));

