DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Rentals;

CREATE TABLE Movies(
			movie_title TEXT NOT NULL PRIMARY KEY,
			stock TEXT,
			genre TEXT,
			director TEXT,
			main_actor TEXT);

CREATE TABLE Customer(
			customer_id TEXT NOT NULL PRIMARY KEY,
			username TEXT,
			password TEXT,
			email TEXT);

CREATE TABLE Rentals(
			order_id TEXT NOT NULL PRIMARY KEY,
			customer_id TEXT,
			movie_title TEXT,
			FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
			FOREIGN KEY (movie_title) REFERENCES Movies(movie_title)
			);