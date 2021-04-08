USE soundspot_db;

-- Query albums that have more than 2 likes and are not free. For each one return the number of likes,
-- its id and its name.

SELECT a.id, a.name, COUNT(*) as total_likes
FROM album a
INNER JOIN musical_piece mp ON (a.id = mp.album_id)
INNER JOIN music_like ml ON (mp.id = ml.musical_piece_id)
WHERE mp.is_free = false
GROUP BY a.id
HAVING total_likes > 2;
