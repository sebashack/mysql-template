USE soundspot_db;

-- Make sure tables are blank before rerunning this script
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE `show`;
TRUNCATE TABLE album;
TRUNCATE TABLE content_creator;
TRUNCATE TABLE featuring_artist;
TRUNCATE TABLE music_like;
TRUNCATE TABLE musical_piece;
TRUNCATE TABLE participant;
TRUNCATE TABLE podcast_episode;
TRUNCATE TABLE podcast_like;
TRUNCATE TABLE user;
SET FOREIGN_KEY_CHECKS = 1;

-- Content creator 1
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(1, 'Michael Heart', 'mheart@gmail.com', 'mheart', 'Musician', now(), 'english', 'south africa', 'pretoria', '1991-04-03');

INSERT INTO album
(id, created_at, name, release_date, content_creator_id, cover_image_link)
VALUES(1, now(), 'Dark Heart', '2016-05-01', 1, 'https://somecdn.com');

INSERT INTO musical_piece
(id, title, duration, album_id, cover_image_link, is_child_friendly, is_free, rights_owner, created_at)
VALUES (1, 'Broken Hearts', 185, 1, 'https://somecdn.com', true, true, "MHeart Records", now()),
       (2, 'Broken Souls', 195, 1, 'https://somecdn.com', true, false, "MHeart Records", now()),
       (3, 'Broken Tears', 241, 1, 'https://somecdn.com', false, false, "MHeart Records", now()),
       (4, 'Hope', 251, 1, 'https://somecdn.com', true, false, "MHeart Records", now()),
       (5, 'After the storm', 260, 1, 'https://somecdn.com', true, false, "MHeart Records", now());

-- Content creator 2
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(2, 'Xavier Rodriguez', 'xrod@gmail.com', 'xrod', 'Podcaster', now(), 'english', 'united states of america', 'new york', '1987-08-03');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(1, 'Productivity flow', 'A show to boost your productivity', 2, 'https://somecdn.com', '2019-03-01 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (1, 'Make the most of your day', 1, true, 3600, 'Some tips to make the most of your day', true, 1, 1, now()),
       (2, 'Productivity Routines', 1, false, 3700, 'Let us assess the best daily routines', true, 1, 2, now()),
       (3, 'Successful people routines', 1, true, 3800, 'Peeking into successful routines', true, 1, 3, now());

-- Content creator 3
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(3, 'Gwern Branwen', 'gwern@gmail.com', 'gwern', 'Both', now(), 'english', 'united kingdom', 'london', '1992-06-02');

INSERT INTO album
(id, created_at, name, release_date, content_creator_id, cover_image_link)
VALUES(2, now(), 'Past Ghosts', '2017-05-01', 3, 'https://somecdn.com');

INSERT INTO musical_piece
(id, title, duration, album_id, cover_image_link, is_child_friendly, is_free, rights_owner, created_at)
VALUES (6, 'Ghosts', 300, 2, 'https://somecdn.com', true, true, "Alternative Records", now()),
       (7, 'Walking in the desert', 285, 2, 'https://somecdn.com', true, false, "Alternative Records", now()),
       (8, 'Look at the stars', 280, 2, 'https://somecdn.com', true, false, "Alternative Records", now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(2, 'Alternative Life', 'A show for those who love alternative music', 3, 'https://somecdn.com', '2019-02-01 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (4, 'Alternative Life opening', 2, true, 1800, 'The first episode of our podcast', true, 1, 1, now()),
       (5, 'What is indie music?', 2, false, 3660, 'What the heck is indie music?', true, 1, 2, now()),
       (6, 'Alternative Eroticism', 2, true, 3700, 'How to love alternatively?', false, 1, 3, now());

-- Content creator 4
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(4, 'Kayleigh mcenany', 'kmce@gmail.com', 'kmce', 'Musician', now(), 'english', 'united states of america', 'nashville', '1994-03-03');

INSERT INTO album
(id, created_at, name, release_date, content_creator_id, cover_image_link)
VALUES(3, now(), 'Liberty in America', '2018-05-01', 4, 'https://somecdn.com');

INSERT INTO musical_piece
(id, title, duration, album_id, cover_image_link, is_child_friendly, is_free, rights_owner, created_at)
VALUES (9, 'I love America', 190, 3, 'https://somecdn.com', true, true, "American Records", now()),
       (10, 'Arkansas evenings', 230, 3, 'https://somecdn.com', true, false, "American Records", now()),
       (11, 'Nights in Las Vegas', 220, 3, 'https://somecdn.com', true, false, "American Records", now()),
       (12, 'Yesterday I saw an eagle', 365, 3, 'https://somecdn.com', false, false, "American Records", now());

-- Content creator 5
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(5, 'Mariana Shostakovich', 'mashos@gmail.com', 'mashos', 'Podcaster', now(), 'english', 'united kingdom', 'oxford', '1990-04-03');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(3, 'Marriage Life', 'A show for those who are married', 5, 'https://somecdn.com', '2019-04-01 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (7, 'Marriage Life inauguration', 3, true, 1810, 'First episode!!', true, 1, 1, now()),
       (8, 'Marriage problems', 3, false, 3660, 'Some common marriage problems', false, 1, 2, now()),
       (9, 'Did you marriage the wrong person?', 3, false, 4000, 'How to know if I did not make a mistake?', false, 1, 3, now()),
       (10, 'First episode of second season!', 3, true, 1880, 'Second season inauguration!', true, 2, 1, now()),
       (11, 'What to do when children act out?', 3, true, 3677, 'Some tips to take control over your naughty children', false, 2, 2, now()),
       (12, 'I cheated on my spouse', 3, true, 3677, 'What to do if you cheated ...', false, 2, 3, now());

-- Content creator 6
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(6, 'Malcom Gladwell', 'malglad@gmail.com', 'malglad', 'Both', now(), 'english', 'united states of america', 'nasvhille', '1989-05-03');

INSERT INTO album
(id, created_at, name, release_date, content_creator_id, cover_image_link)
VALUES(4, now(), 'Intellectual powder', '2020-04-01', 6, 'https://somecdn.com');

INSERT INTO musical_piece
(id, title, duration, album_id, cover_image_link, is_child_friendly, is_free, rights_owner, created_at)
VALUES (13, 'Roots', 310, 4, 'https://somecdn.com', true, true, "Nashville Records", now()),
       (14, 'Death and Chaos', 290, 4, 'https://somecdn.com', false, false, "Nashville Records", now()),
       (15, 'Detachment', 300, 4, 'https://somecdn.com', true, false, "Nashville Records", now()),
       (16, 'Works of destiny', 450, 4, 'https://somecdn.com', true, false, "Nashville Records", now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(4, 'Intellectual Life', 'A show for those who are intellectual', 6, 'https://somecdn.com', '2019-04-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (13, 'First episode', 4, true, 1900, 'Inauguration of our podcast', true, 1, 1, now()),
       (14, 'Books that I read', 4, true, 3630, 'I will let you know my books', true, 1, 2, now()),
       (15, 'Postmodernisim a critical view', 4, true, 7200, 'Delving deeper into the concept of postmodernism', false, 1, 3, now());


-- Additional shows

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(5, 'Gourment Life', 'A show for those who like cooking', 5, 'https://somecdn.com', '2019-09-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (16, 'First episode', 5, true, 1834, 'Inauguration of our podcast', true, 1, 1, now()),
       (17, 'Things I cook', 5, true, 4630, 'I will let you know my recipes', true, 1, 2, now()),
       (18, 'Cooking, a critical view', 5, false, 7200, 'Delving deeper into the concept of postmodernism cooking', false, 1, 5, now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(6, 'Anime trip', 'A show for those who like anime', 2, 'https://somecdn.com', '2019-08-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (19, 'First episode', 6, true, 2000, 'Inauguration of our podcast', true, 1, 1, now()),
       (20, 'Things I watch', 6, true, 5030, 'I will let you know what I watch', true, 1, 2, now()),
       (21, 'Anime, a critical view', 6, false, 6000, 'Delving deeper into the concept of Naruto', false, 1, 6, now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(7, 'Travellers', 'A show for those who like travelling', 2, 'https://somecdn.com', '2019-02-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (22, 'First episode', 7, true, 2000, 'Inauguration of our podcast', true, 1, 1, now()),
       (23, 'Where I go', 7, true, 5030, 'I will let you know where I go', true, 1, 2, now()),
       (24, 'Travelling, a critical view', 7, false, 6000, 'Delving deeper into the concept of travelling', false, 1, 7, '2019-08-12 00:00:00');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(8, 'Wild Life', 'A show for those who like wild life', 5, 'https://somecdn.com', now());

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (25, 'First episode', 8, true, 2300, 'Inauguration of our podcast', true, 1, 1, now()),
       (26, 'Where I go in the wild', 8, true, 3680, 'I will let you know where I go', true, 1, 2, now()),
       (27, 'Wild life, a critical view', 8, true, 4000, 'Delving deeper into the concept of travelling', false, 1, 8, '2019-03-12 00:00:00');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(9, 'City Life', 'A show for those who like city life', 5, 'https://somecdn.com', '2019-07-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (28, 'First episode', 9, true, 1800, 'Inauguration of our podcast', true, 1, 1, now()),
       (29, 'Where I go in the city', 9, true, 3680, 'I will let you know where I go', true, 1, 2, now()),
       (30, 'City life, a critical view', 9, true, 4000, 'Delving deeper into the concept of city', false, 1, 8, '2019-08-12 00:00:00');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(10, 'Rusty Life', 'A show for those who like rusty life', 2, 'https://somecdn.com', '2019-08-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (31, 'First episode', 10, true, 1800, 'Inauguration of our podcast', true, 1, 6, now()),
       (32, 'Where I go in the rust', 10, false, 3680, 'I will let you know where I go with Rust', true, 1, 7, now()),
       (33, 'Rusty life, a critical view', 10, false, 7000, 'Delving deeper into the concept of Rust', false, 1, 8, now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(11, 'Rusty Life II', 'A show for those who like rusty life', 2, 'https://somecdn.com', '2019-03-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (34, 'First episode', 11, true, 1800, 'Inauguration of our podcast', true, 1, 6, now()),
       (35, 'Where I go in the rust', 11, true, 3680, 'I will let you know where I go with Rust', true, 1, 7, now()),
       (36, 'Rusty life, a critical view', 11, true, 7000, 'Delving deeper into the concept of Rust', false, 1, 8, now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(12, 'City Life II', 'A show for those who like city life', 5, 'https://somecdn.com', '2019-08-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (37, 'First episode', 12, true, 1800, 'Inauguration of our podcast', true, 1, 1, now()),
       (38, 'Where I go in the city', 12, false, 3680, 'I will let you know where I go', true, 1, 2, now()),
       (39, 'City life, a critical view', 12, false, 4000, 'Delving deeper into the concept of city', false, 1, 8, now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(13, 'Wild Life II', 'A show for those who like wild life', 5, 'https://somecdn.com', '2019-07-12 00:00:00');

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (40, 'First episode', 13, true, 2300, 'Inauguration of our podcast', true, 1, 1, now()),
       (41, 'Where I go in the wild', 13, false, 3680, 'I will let you know where I go', true, 1, 2, now()),
       (42, 'Wild life, a critical view', 13, false, 4000, 'Delving deeper into the concept of travelling', false, 1, 8, now());


-- Users
INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
VALUES (1, 'Rick Sanchez', 'ricksan@gmail.com', 'ricksan', 'south africa', 'pretoria', 'english', 'DebitCard', true, '1994-04-03', now()),
       (2, 'Mordecai Smith', 'morsmith@gmail.com', 'morsmith', 'united states of america', 'new york', 'english', 'CreditCard', true, '2000-04-03', now()),
       (3, 'Toni Abasi', 'tonasi@gmail.com', 'tonasi', 'united states of america', 'nashville', 'english', 'CreditCard', true, '1999-04-03', now()),
       (4, 'Sean Mendez', 'seamen@gmail.com', 'seamen', 'united kingdom', 'london', 'english', 'DebitCard', false, '2001-02-03', now()),
       (5, 'Marie Courtier', 'macour@gmail.com', 'macour', 'united states of america', 'compton city', 'english', 'DebitCard', false, '1998-02-03', now()),
       (6, 'Claudia Courier', 'clacour@gmail.com', 'clacour', 'united united kingdom', 'oxford', 'english', 'CreditCard', false, '1999-03-03', now());

INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
SELECT 7, 'Pedro Morales', 'pemo@gmail.com', 'pemor', country, city, preferred_language, payment_method, is_premium, '2004-05-06', now()
FROM user
WHERE id = 1;

INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
SELECT 8, 'Serena Williams', 'saldali@gmail.com', 'saldali', country, city, preferred_language, payment_method, is_premium, '1990-03-06', now()
FROM user
WHERE id = 3;

INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
SELECT 9, 'Winona Ryder', 'wiry@gmail.com', 'wiry', country, city, preferred_language, payment_method, is_premium, '1983-03-06', now()
FROM user
WHERE id = 4;

INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
SELECT 10, 'Pablo Moe', 'pamoe@gmail.com', 'pamoe', country, city, preferred_language, payment_method, is_premium, '1993-03-06', now()
FROM user
WHERE id = 6;

INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
SELECT 11, 'Antonino Dinatelli', 'antodi@gmail.com', 'antodi', country, city, preferred_language, payment_method, is_premium, '1998-03-06', now()
FROM user
WHERE id = 3;

-- Music Likes User 1
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (1, 1, false, now()),
       (1, 2, false, now()),
       (1, 14, false, now()),
       (1, 16, false, now());

-- Music Likes User 2
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (2, 1, false, now()),
       (2, 2, false, now()),
       (2, 3, false, now()),
       (2, 14, false, now());

-- Music Likes User 3
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (3, 1, false, now()),
       (3, 2, false, now()),
       (3, 3, false, now()),
       (3, 4, false, now()),
       (3, 5, false, now()),
       (3, 6, false, now()),
       (3, 2, false, now()),
       (3, 13, false, now());

-- Music Likes User 4
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (4, 4, false, now()),
       (4, 5, false, now()),
       (4, 6, false, now()),
       (4, 11, false, now()),
       (4, 12, false, now());

-- Music Likes User 5
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (5, 1, false, now()),
       (5, 7, false, now()),
       (5, 8, false, now()),
       (5, 9, false, now());

-- Music Likes User 6
INSERT INTO music_like
(user_id, musical_piece_id, is_unliked, created_at)
VALUES (6, 1, false, now()),
       (6, 2, false, now()),
       (6, 3, false, now()),
       (6, 10, false, now()),
       (6, 11, false, now()),
       (6, 12, false, now());

-- Podcast Likes User 1
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (1, 1, false, now()),
       (1, 3, false, now()),
       (1, 4, false, now()),
       (1, 6, false, now()),
       (1, 21, false, now()),
       (1, 22, false, now()),
       (1, 23, false, now()),
       (1, 24, false, now()),
       (1, 25, false, now()),
       (1, 26, false, now()),
       (1, 27, false, now()),
       (1, 28, false, now()),
       (1, 29, false, now()),
       (1, 30, false, now()),
       (1, 31, false, now()),
       (1, 32, false, now()),
       (1, 33, false, now());

-- Podcast Likes User 2
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (2, 7, false, now()),
       (2, 8, false, now()),
       (2, 9, false, now()),
       (2, 3, false, now()),
       (1, 21, false, now()),
       (1, 22, false, now()),
       (1, 23, false, now()),
       (1, 24, false, now()),
       (1, 25, false, now()),
       (1, 26, false, now()),
       (1, 27, false, now()),
       (1, 28, false, now()),
       (1, 29, false, now()),
       (1, 30, false, now());

-- Podcast Likes User 3
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (3, 2, false, now()),
       (3, 3, false, now()),
       (3, 4, false, now()),
       (3, 5, false, now()),
       (3, 6, false, now()),
       (3, 7, false, now()),
       (3, 8, false, now()),
       (3, 28, false, now()),
       (3, 29, false, now()),
       (3, 30, false, now());

-- Podcast Likes User 4
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (4, 9, false, now()),
       (4, 10, false, now()),
       (4, 11, false, now()),
       (4, 15, false, now()),
       (4, 28, false, now()),
       (4, 29, false, now()),
       (4, 30, false, now()),
       (4, 17, false, now()),
       (4, 31, false, now()),
       (4, 33, false, now()),
       (4, 34, false, now()),
       (4, 37, false, now()),
       (4, 38, false, now()),
       (4, 39, false, now());

-- Podcast Likes User 5
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (5, 1, false, now()),
       (5, 2, false, now()),
       (5, 12, false, now()),
       (5, 13, false, now()),
       (5, 14, false, now()),
       (5, 17, false, now()),
       (5, 31, false, now()),
       (5, 33, false, now()),
       (5, 34, false, now()),
       (5, 37, false, now()),
       (5, 38, false, now()),
       (5, 39, false, now());

-- Podcast Likes User 6
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (6, 1, false, now()),
       (6, 4, false, now()),
       (6, 5, false, now()),
       (6, 15, false, now()),
       (6, 17, false, now()),
       (6, 31, false, now()),
       (6, 32, false, now()),
       (6, 33, false, now()),
       (6, 34, false, now()),
       (6, 36, false, now()),
       (6, 37, false, now()),
       (6, 38, false, now()),
       (6, 39, false, now());

-- Podcast Likes User 7
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (7, 1, false, now()),
       (7, 2, false, now()),
       (7, 3, false, now()),
       (7, 4, false, now()),
       (7, 5, false, now()),
       (7, 16, false, now()),
       (7, 12, false, now());

-- Podcast Likes User 8
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (8, 16, false, now()),
       (8, 17, false, now()),
       (8, 18, false, now()),
       (8, 19, false, now()),
       (8, 20, false, now()),
       (8, 21, false, now()),
       (8, 22, false, now()),
       (8, 23, false, now()),
       (8, 24, false, now()),
       (8, 25, false, now()),
       (8, 26, false, now()),
       (8, 27, false, now()),
       (8, 28, false, now()),
       (8, 29, false, now()),
       (8, 30, false, now()),
       (8, 31, false, now()),
       (8, 32, false, now()),
       (8, 33, false, now());

-- Podcast Likes User 9
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (9, 1, false, now()),
       (9, 2, false, now()),
       (9, 3, false, now()),
       (9, 4, false, now()),
       (9, 4, false, now()),
       (9, 5, false, now()),
       (9, 6, false, now()),
       (9, 7, false, now()),
       (9, 8, false, now()),
       (9, 9, false, now()),
       (9, 10, false, now()),
       (9, 11, false, now());


-- Podcast Likes User 10
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (10, 1, false, now()),
       (10, 2, false, now()),
       (10, 3, false, now()),
       (10, 6, false, now()),
       (10, 7, false, now()),
       (10, 8, false, now()),
       (10, 9, false, now()),
       (10, 10, false, now());

-- Podcast Likes User 11
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (11, 1, false, now()),
       (11, 2, false, now()),
       (11, 3, false, now()),
       (11, 6, false, now()),
       (11, 7, false, now()),
       (11, 8, false, now()),
       (11, 9, false, now()),
       (11, 10, false, now());


-- Featuring Artists song 1
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (1, "Monica Howard", 1, now()),
       (2, "Pamela Desmonds", 1, now());

-- Featuring Artists song 3
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (3, "Lil Future", 3, now()),
       (4, "Pamela Hurtado", 3, now());

-- Featuring Artists song 10
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (5, "Lil Baby", 10, now()),
       (6, "Pam Richardson", 10, now());

-- Featuring Artists song 11
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (7, "Jenifer Aniston", 11, now()),
       (8, "Ramon Hernandez", 11, now()),
       (9, "Selena Gomez", 11, now());

-- Featuring Artists song 12
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (10, "Miranda Bloom", 12, now()),
       (11, "Drake", 12, now());

-- Featuring Artists song 13
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES(12, "Drake", 13, now());

-- Featuring Artists song 14
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (13, "Sean Mendez", 14, now()),
       (14, "Cristina Aguilera", 14, now());

-- Participant episode 1
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (1, "David Smith", 1, now()),
       (2, "Ramon Diaz", 1, now());

-- Participant episode 2
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES(3, "Richard Bird", 2, now());

-- Participant episode 5
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (4, "Carol Richards", 5, now()),
       (5, "Peter Jordanson", 5, now());

-- Participant episode 6
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (6, "Jordan Peterson", 6, now()),
       (7, "Mikaila Peterson", 6, now());

-- Participant episode 9
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (8, "Ramon Cajal", 9, now()),
       (9, "Augusto Moreau", 9, now());

-- Participant episode 10
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (10, "The doo", 10, now()),
       (11, "Pewdie Pie", 10, now()),
       (12, "Steve Terreberry", 10, now()),
       (13, "Tierra Wack", 10, now());

-- Participant episode 11
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (14, "Logan Paul", 11, now()),
       (15, "Richard Sanders", 11, now()),
       (16, "Carl Stevens", 11, now()),
       (17, "Steve Terreberry", 11, now());


-- Participant episode 12
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (18, "Maria Carey", 12, now()),
       (19, "Ariana Grande", 12, now()),
       (20, "The bald guy", 10, now()),
       (21, "Justin Bieber", 12, now());

-- Participant episode 13
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES(22, "Kmac 2021", 13, now());

-- Participant episode 15
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (23, "David504", 15, now()),
       (24, "Goldlink", 15, now());

-- Additional participants
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (25, "David504", 3, now()),
       (26, "Smith", 4, now()),
       (27, "Link", 5, now()),
       (28, "Rhett", 6, now()),
       (29, "Jonas", 7, now()),
       (30, "Isaac", 11, now()),
       (31, "Roberto", 12, now()),
       (32, "Juan Milano", 13, now()),
       (33, "Martin", 14, now()),
       (34, "Robert Goom", 15, now()),
       (35, "Ghost Hunter", 16, now()),
       (36, "Bucket Head", 17, now()),
       (37, "Ronald", 18, now());
