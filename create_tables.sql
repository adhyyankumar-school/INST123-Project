CREATE TABLE Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50),
    genre_description VARCHAR(255)
);

CREATE TABLE Movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre_id INT,
    runtime INT,
    release_date DATE,
    imdb_rating DECIMAL(3,1),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Theaters (
    theater_id SERIAL PRIMARY KEY,
    theater_name VARCHAR(100),
    location_city VARCHAR(50),
    location_state VARCHAR(50),
    number_of_screens INT
);

CREATE TABLE Showtimes (
    showtime_id SERIAL PRIMARY KEY,
    movie_id INT,
    theater_id INT,
    show_date DATE,
    show_time TIME,
    auditorium_number INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (theater_id) REFERENCES Theaters(theater_id)
);

CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    showtime_id INT,
    ticket_price DECIMAL(5,2),
    ticket_type VARCHAR(20),
    availability_status VARCHAR(20),
    FOREIGN KEY (showtime_id) REFERENCES Showtimes(showtime_id)
);