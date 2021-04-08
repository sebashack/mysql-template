USE soundspot_db;

-- Query the top 3 creators with the most likes. Return their id and number of likes.

CREATE OR REPLACE VIEW creator_like_podcast_count
AS
SELECT c.id, c.name, COUNT(*) as total_likes
FROM content_creator c
INNER JOIN `show` s ON (s.content_creator_id = c.id)
INNER JOIN podcast_episode pe ON (s.id = pe.show_id)
INNER JOIN podcast_like pl ON (pe.id = pl.podcast_episode_id)
GROUP BY c.id;

CREATE OR REPLACE VIEW creator_like_album_count
AS
SELECT c.id, c.name, COUNT(*) as total_likes
FROM content_creator c
INNER JOIN album a ON (a.content_creator_id = c.id)
INNER JOIN musical_piece mp ON (a.id = mp.album_id)
INNER JOIN music_like ml ON (mp.id = ml.musical_piece_id)
GROUP BY c.id;

SELECT t.id, SUM(t.total_likes) as all_likes FROM (
  SELECT id, name, total_likes FROM creator_like_podcast_count
  UNION
  SELECT id, name, total_likes FROM creator_like_album_count
) as t
GROUP BY t.id
ORDER BY all_likes DESC
LIMIT 3;
