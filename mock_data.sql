INSERT INTO Genres (genre_id, genre_name, genre_description) VALUES
(1, 'Drama', 'Character-driven stories centered on emotional conflict and personal growth.'),
(2, 'Action', 'Fast-paced films featuring chases, combat, and high-stakes conflict.'),
(3, 'Comedy', 'Lighthearted stories designed to entertain with humor and wit.'),
(4, 'Science Fiction', 'Speculative stories involving advanced technology and imagined futures.');

INSERT INTO Movies (movie_id, title, genre_id, runtime, release_date, imdb_rating) VALUES
(1, 'Harbor Lights', 1, 112, '2023-03-17', 7.8),
(2, 'Skyline Pursuit', 2, 129, '2024-07-12', 7.1),
(3, 'Second Cup', 3, 98, '2022-11-04', 6.9),
(4, 'Orbit Line', 4, 141, '2025-02-21', 8.4),
(5, 'Ashes of Summer', 1, 124, '2021-08-20', 7.3),
(6, 'Signal Beyond', 4, 133, '2024-09-27', 8.7);

INSERT INTO Theaters (theater_id, theater_name, location_city, location_state, number_of_screens) VALUES
(1, 'Campus View Cinema', 'College Park', 'MD', 10),
(2, 'Harbor East Movies', 'Baltimore', 'MD', 14),
(3, 'Capital Screenworks', 'Washington', 'DC', 12);

INSERT INTO Showtimes (showtime_id, movie_id, theater_id, show_date, show_time, auditorium_number) VALUES
(1, 1, 1, '2026-04-18', '13:00:00', 2),
(2, 2, 1, '2026-04-18', '16:30:00', 5),
(3, 4, 2, '2026-04-18', '19:00:00', 6),
(4, 3, 2, '2026-04-19', '15:45:00', 3),
(5, 5, 3, '2026-04-19', '13:15:00', 4),
(6, 6, 3, '2026-04-19', '19:30:00', 7);

INSERT INTO Tickets (ticket_id, showtime_id, ticket_price, ticket_type, availability_status) VALUES
(1, 1, 11.50, 'Adult', 'Available'),
(2, 1, 9.00, 'Child', 'Available'),
(3, 2, 15.00, 'Adult', 'Available'),
(4, 2, 12.00, 'Senior', 'Limited'),
(5, 3, 14.50, 'Adult', 'Available'),
(6, 3, 11.00, 'Student', 'Limited'),
(7, 4, 10.50, 'Adult', 'Available'),
(8, 4, 8.75, 'Child', 'Available'),
(9, 5, 12.50, 'Adult', 'Available'),
(10, 5, 10.00, 'Senior', 'Available'),
(11, 6, 16.00, 'Adult', 'Available'),
(12, 6, 13.00, 'Student', 'Limited');
