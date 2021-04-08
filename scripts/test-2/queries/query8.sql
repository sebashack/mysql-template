USE soundspot_db;

-- Query the podcast show with the most number of likes in its episodes. Also return the id and the name of the show.

SELECT s.id, s.name, COUNT(*) as total_likes
FROM `show` s
INNER JOIN podcast_episode pe ON (s.id = pe.show_id)
INNER JOIN podcast_like pl ON (pe.id = pl.podcast_episode_id)
GROUP BY s.id
ORDER BY total_likes DESC
LIMIT 1;
