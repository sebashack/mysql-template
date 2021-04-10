USE soundspot_db;

-- Query podcast shows where the episode with the max number of likes is greater than 3;

CREATE OR REPLACE VIEW pe_total_likes
AS
SELECT s.id AS show_id, pe.id AS episode_id, pe.title AS title, COUNT(*) AS total_likes
FROM podcast_episode pe
INNER JOIN podcast_like pl ON (pe.id = pl.podcast_episode_id)
INNER JOIN `show` s ON (s.id = pe.show_id)
GROUP BY pe.id;

SELECT s.id AS show_id, s.name, MAX(tl.total_likes) AS most_likes_in_episode
FROM `show` s
INNER JOIN pe_total_likes tl ON (tl.show_id = s.id)
WHERE ( SELECT MAX(t.total_likes) FROM pe_total_likes t WHERE t.show_id = s.id ) > 3
GROUP BY s.id;
