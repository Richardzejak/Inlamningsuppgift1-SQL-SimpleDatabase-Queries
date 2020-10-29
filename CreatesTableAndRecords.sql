DROP TABLE IF EXISTS Rentals;
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Customers;

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
("The Shining", "5", "Horror"),
("Pulp Fiction","1","Crime"),
("Titanic","2","Romance"),
("Escape from New York","0","Action"),
("Gladiator","2","Adventure"),
("Scarface","2","Crime"),
("Cross of Iron","1","War"),
("The Evil Dead","0","Horror"),
("The Terminator","1","Action"),
("The Fault in our Stars","4","Drama"),
("Jackass: The Movie","3","Comedy"),
("Ace Ventura: Pet Detective","0","Comedy"),
("Trailer Park Boys The Movie","1","Comedy");

INSERT INTO Customers(username, password, email)
VALUES
("PerfectGringo", "Amigo245", "John.doe@hotmail.com"),
("Robert13","Jonsen441","Robbyjoe@hotmail.com"),
("MovieReviewer","Cyborg12","Furiousfighter29@hotmail.com"),
("Staffan", "Stalledräng", "Lovelucia2020@hotmail.com"),
("Tankman13","Shieldidiot34","Tank_player13@gmail.com"),
("Deeppurple455","s213sqsetx213x","jason_j@hotmail.com"),
("Movielover555","Larry233","LarryLord@hotmail.com"),
("pleaseenterusername","password123","imafunnyguy12@gmail.com"),
("Rhinosaur","Sweden10","Rhinosaur@hotmail.com"),
("Enchantedarcher443","Ladyfire124","@enchantedarcher@hotmail.com"),
("horrorwatcher","Theomen1","Lucasw@hotmail.com"),
("Superman30","Clark115","superman3030@gmail.com"),
("Rollnrock","drums123","rollnrock@live.com"),
("gorrilatlas","Santa1123","gorrilatlas@hotmail.com");

INSERT INTO Rentals(customer_id, movie_id)
VALUES
("1","2"),
("2","2"),
("3","1"),
("2","3"),
("4","1");