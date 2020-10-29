DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Rentals;

CREATE TABLE Movies(
			movie_id INTEGER PRIMARY KEY,
			movie_title TEXT,
			stock TEXT,
			genre TEXT);
			
			
CREATE TABLE Customers(
			customer_id INTEGER NOT NULL PRIMARY KEY,
			username TEXT UNIQUE,
			password TEXT,
			email TEXT UNIQUE);

CREATE TABLE Rentals(
			order_id INTEGER PRIMARY KEY,
			customer_id INTEGER,
			movie_id INTEGER,
			FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
			FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
			);
		
INSERT INTO Movies(movie_title, stock, genre)
VALUES
("Die Hard", "3", "Action"),
("Empire Strikes back", "2", "Sci-Fi"),
("Spirited Away", "0", "Anime"),
("The Shining", "5", "Horror");

INSERT INTO Customers(username, password, email)
VALUES
("John", "Doe", "Johndoe@hotmail.com"),
("Robert","Jonsen","Robbyjoe@hotmail.com");