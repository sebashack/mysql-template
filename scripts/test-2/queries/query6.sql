USE soundspot_db;

-- Query which users have more than 1 like for a podcast episode that is free. Display the id, name of each user
-- and the total number of likes.

SELECT u.id, u.name, COUNT(*) as total_likes
FROM user u
INNER JOIN podcast_like pl ON (u.id = pl.user_id)
INNER JOIN podcast_episode pe ON (pe.id = pl.podcast_episode_id)
WHERE pe.is_free = true
GROUP BY u.id
HAVING total_likes > 1;
