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
VALUES (1, 'Broken Hearts', 185, 1, 'https://somecdn.com', false, true, "MHeart Records", now()),
       (2, 'Broken Souls', 195, 1, 'https://somecdn.com', false, false, "MHeart Records", now()),
       (3, 'Broken Tears', 241, 1, 'https://somecdn.com', false, false, "MHeart Records", now()),
       (4, 'Hope', 251, 1, 'https://somecdn.com', true, false, "MHeart Records", now()),
       (5, 'After the storm', 260, 1, 'https://somecdn.com', false, false, "MHeart Records", now());

-- Content creator 2
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(2, 'Xavier Rodriguez', 'xrod@gmail.com', 'xrod', 'Podcaster', now(), 'english', 'united states of america', 'new york', '1987-08-03');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(1, 'Productivity flow', 'A show to boost your productivity', 2, 'https://somecdn.com', now());

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (1, 'Make the most of your day', 1, true, 3600, 'Some tips to make the most of your day', true, 1, 1, now()),
       (2, 'Productivity Routines', 1, false, 3700, 'Let us assess the best daily routines', true, 1, 2, now()),
       (3, 'Successful people routines', 1, false, 3800, 'Peeking into successful routines', true, 1, 3, now());

-- Content creator 3
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(3, 'Gwern Branwen', 'gwern@gmail.com', 'gwern', 'Both', now(), 'english', 'united kingdom', 'london', '1992-06-02');

INSERT INTO album
(id, created_at, name, release_date, content_creator_id, cover_image_link)
VALUES(2, now(), 'Past Ghosts', '2017-05-01', 3, 'https://somecdn.com');

INSERT INTO musical_piece
(id, title, duration, album_id, cover_image_link, is_child_friendly, is_free, rights_owner, created_at)
VALUES (6, 'Ghosts', 300, 2, 'https://somecdn.com', false, true, "Alternative Records", now()),
       (7, 'Walking in the desert', 285, 2, 'https://somecdn.com', true, false, "Alternative Records", now()),
       (8, 'Look at the stars', 280, 2, 'https://somecdn.com', true, false, "Alternative Records", now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(2, 'Alternative Life', 'A show for those who love alternative music', 3, 'https://somecdn.com', now());

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (4, 'Alternative Life opening', 2, true, 1800, 'The first episode of our podcast', true, 1, 1, now()),
       (5, 'What is indie music?', 2, false, 3660, 'What the heck is indie music?', true, 1, 2, now()),
       (6, 'Alternative Eroticism', 2, false, 3700, 'How to love alternatively?', false, 1, 3, now());

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
       (10, 'Arkansas evenings', 230, 3, 'https://somecdn.com', false, false, "American Records", now()),
       (11, 'Nights in Las Vegas', 220, 3, 'https://somecdn.com', false, false, "American Records", now()),
       (12, 'Yesterday I saw an eagle', 365, 3, 'https://somecdn.com', false, false, "American Records", now());

-- Content creator 5
INSERT INTO content_creator
(id, name, email, nickname, type, created_at, preferred_language, country, city, birthdate)
VALUES(5, 'Mariana Shostakovich', 'mashos@gmail.com', 'mashos', 'Podcaster', now(), 'english', 'united kingdom', 'oxford', '1990-04-03');

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(3, 'Marriage Life', 'A show for those who are married', 5, 'https://somecdn.com', now());

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (7, 'Marriage Life inauguration', 3, true, 1810, 'First episode!!', true, 1, 1, now()),
       (8, 'Marriage problems', 3, false, 3660, 'Some common marriage problems', false, 1, 2, now()),
       (9, 'Did you marriage the wrong person?', 3, false, 4000, 'How to know if I did not make a mistake?', false, 1, 3, now()),
       (10, 'First episode of second season!', 3, true, 1880, 'Second season inauguration!', true, 2, 1, now()),
       (11, 'What to do when children act out?', 3, false, 3677, 'Some tips to take control over your naughty children', false, 2, 2, now()),
       (12, 'I cheated on my spouse', 3, false, 3677, 'What to do if you cheated ...', false, 2, 3, now());

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
       (15, 'Detachment', 300, 4, 'https://somecdn.com', false, false, "Nashville Records", now()),
       (16, 'Works of destiny', 450, 4, 'https://somecdn.com', true, false, "Nashville Records", now());

INSERT INTO `show`
(id, name, description, content_creator_id, cover_image_link, created_at)
VALUES(4, 'Intellectual Life', 'A show for those who are intellectual', 6, 'https://somecdn.com', now());

INSERT INTO podcast_episode
(id, title, show_id, is_free, duration, description, is_child_friendly, season_number, episode_number, created_at)
VALUES (13, 'First episode', 4, true, 1900, 'Inauguration of our podcast', true, 1, 1, now()),
       (14, 'Books that I read', 4, false, 3630, 'I will let you know my books', true, 1, 2, now()),
       (15, 'Postmodernisim a critical view', 4, false, 7200, 'Delving deeper into the concept of postmodernism', false, 1, 3, now());

-- Users
INSERT INTO user
(id, name, email, nickname, country, city, preferred_language, payment_method, is_premium, birthdate, created_at)
VALUES (1, 'Rick Sanchez', 'ricksan@gmail.com', 'ricksan', 'south africa', 'pretoria', 'english', 'DebitCard', true, '1994-04-03', now()),
       (2, 'Mordecai Smith', 'morsmith@gmail.com', 'morsmith', 'united states of america', 'new york', 'english', 'CreditCard', true, '2000-04-03', now()),
       (3, 'Toni Abasi', 'tonasi@gmail.com', 'tonasi', 'united states of america', 'nashville', 'english', 'CreditCard', true, '1999-04-03', now()),
       (4, 'Sean Mendez', 'seamen@gmail.com', 'seamen', 'united kingdom', 'london', 'english', 'DebitCard', false, '2001-02-03', now()),
       (5, 'Marie Courtier', 'macour@gmail.com', 'macour', 'united states of america', 'compton city', 'english', 'DebitCard', false, '1998-02-03', now()),
       (6, 'Claudia Courier', 'clacour@gmail.com', 'clacour', 'united united kingdom', 'oxford', 'english', 'CreditCard', false, '1999-03-03', now());

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
       (1, 6, false, now());

-- Podcast Likes User 2
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (2, 7, false, now()),
       (2, 8, false, now()),
       (2, 9, false, now());

-- Podcast Likes User 3
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (3, 4, false, now()),
       (3, 5, false, now()),
       (3, 6, false, now()),
       (3, 7, false, now());

-- Podcast Likes User 4
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (4, 9, false, now()),
       (4, 10, false, now()),
       (4, 11, false, now());

-- Podcast Likes User 5
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (5, 1, false, now()),
       (5, 2, false, now()),
       (5, 12, false, now()),
       (5, 13, false, now()),
       (5, 14, false, now());

-- Podcast Likes User 6
INSERT INTO podcast_like
(user_id, podcast_episode_id, is_unliked, created_at)
VALUES (6, 4, false, now()),
       (6, 5, false, now()),
       (6, 15, false, now());

-- Featuring Artists song 1
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (1, "Monica Howard", 1, now()),
       (2, "Pamela Hurtado", 1, now());

-- Featuring Artists song 3
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (3, "Lil Future", 3, now()),
       (4, "Pamela Hurtado", 3, now());

-- Featuring Artists song 10
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (5, "Lil Baby", 10, now()),
       (6, "Pamela Hurtado", 10, now());

-- Featuring Artists song 11
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (7, "Jenifer Aniston", 11, now()),
       (8, "Ramon Diaz", 11, now()),
       (9, "Selena Gomez", 11, now());

-- Featuring Artists song 12
INSERT INTO featuring_artist
(id, name, musical_piece_id, created_at)
VALUES (10, "Miranda", 12, now()),
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
       (5, "Jordan Peterson", 5, now());

-- Participant episode 6
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (6, "Jordan Peterson", 6, now()),
       (7, "Mikaila Peterson", 6, now());

-- Participant episode 9
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (8, "Ramon Diaz", 9, now()),
       (9, "Augusto Moreau", 9, now());

-- Participant episode 10
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (10, "The doo", 10, now()),
       (11, "Pewdie Pie", 10, now()),
       (12, "Steve Terreberry", 10, now());

-- Participant episode 13
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES(13, "Pewdie Pie", 13, now());

-- Participant episode 15
INSERT INTO participant
(id, name, podcast_episode_id, created_at)
VALUES (14, "Cristina Aguilera", 15, now()),
       (15, "Goldlink", 15, now());
