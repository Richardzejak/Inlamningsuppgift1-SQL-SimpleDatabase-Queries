SELECT * FROM Customers -- Titta på alla regristrerade användare

SELECT * FROM Movies
WHERE genre LIKE "Comedy"; -- Kolla vilka Sci-Fi filmer som finns

SELECT * FROM Movies
WHERE stock > 0; -- Kolla vilka filmer som finns i lager

SELECT * FROM Movies
WHERE genre LIKE "action" AND stock > 0; -- Kolla vilka actionfilmer som finns samt finns i lager

SELECT order_id, Rentals.customer_id, Customers.username, Movies.movie_id, Movies.movie_title, Movies.Stock FROM Rentals
JOIN Customers ON Rentals.customer_id = Customers.customer_id
JOIN Movies ON Rentals.movie_id = Movies.movie_id
WHERE movie_title LIKE "Die Hard"; -- Kolla vilka som hyrt Die Hard

SELECT Customers.customer_id, Customers.username, Rentals.order_id FROM Rentals
JOIN Customers ON Rentals.customer_id = Customers.customer_id
JOIN Movies ON Rentals.movie_id = Movies.movie_id
ORDER BY Customers.username; -- Kolla vilka användare som hyrt filmer och sortera dom efter användare i bokstavsordning så man enkelt kan se hur många filmer dom hyrt.