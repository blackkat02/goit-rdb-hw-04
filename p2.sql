-- Змінюємо тип даних стовпця publication_year на VARCHAR(4) для можливості 
-- зберігання дати раніше 1900 року
ALTER TABLE Books
MODIFY COLUMN publication_year VARCHAR(4);

INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('Arthur Conan Doyle');

INSERT INTO Genres (genre_name) VALUES
('Fantasy'),
('Detective');

INSERT INTO Books (title, publication_year, author_id, genre_id) VALUES
('Harry Potter and the Philosopher''s Stone', '1997', 1, 1),
('Harry Potter and the Chamber of Secrets', '1998', 1, 1),
('A Study in Scarlet', '1887', 2, 2), -- Тепер це буде працювати з VARCHAR
('The Adventures of Sherlock Holmes', '1892', 2, 2); -- Тепер це буде працювати з VARCHAR

INSERT INTO Users (username, email) VALUES
('S. Holmes', 's.holmes@example.com'),
('Dr. Watson', 'dr.watson@example.com');

INSERT INTO Borrowed_Books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-05-10', '2024-05-25'),
(3, 2, '2024-06-01', NULL);


