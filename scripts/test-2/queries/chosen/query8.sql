USE soundspot_db;

-- Query 2 = CHOSEN
-- Query podcast shows where the episode with the max number of likes is greater than 2;

CREATE OR REPLACE VIEW pe_total_likes
AS
SELECT s.id AS show_id, pe.id AS episode_id, pe.title AS title, COUNT(*) as total_likes
FROM podcast_episode pe
INNER JOIN podcast_like pl ON (pe.id = pl.podcast_episode_id)
INNER JOIN `show` s ON (s.id = pe.show_id)
GROUP BY pe.id;

SELECT s.id, s.name, tl.total_likes
FROM `show` s
INNER JOIN pe_total_likes tl ON (tl.show_id = s.id)
WHERE ( SELECT MAX(tl.total_likes) FROM show_total_likes WHERE tl.show_id = s.id ) > 2
GROUP BY s.id;
