SELECT * FROM Genres ORDER BY genre_id;
SELECT * FROM Movies ORDER BY movie_id;
SELECT * FROM Theaters ORDER BY theater_id;
SELECT * FROM Showtimes ORDER BY showtime_id;
SELECT * FROM Tickets ORDER BY ticket_id;
SELECT
    s.showtime_id,
    m.title AS movie_title,
    g.genre_name,
    t.theater_name,
    t.location_city,
    t.location_state,
    s.show_date,
    s.show_time,
    s.auditorium_number,
    tk.ticket_id,
    tk.ticket_type,
    tk.ticket_price,
    tk.availability_status
FROM Showtimes s
JOIN Movies m ON s.movie_id = m.movie_id
JOIN Genres g ON m.genre_id = g.genre_id
JOIN Theaters t ON s.theater_id = t.theater_id
JOIN Tickets tk ON s.showtime_id = tk.showtime_id
ORDER BY s.showtime_id, tk.ticket_id;
