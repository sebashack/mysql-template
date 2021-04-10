USE soundspot_db;

-- Query the non-free song with the most number of likes and whose content creator has pretoria as city.
-- Return its id, title and number of likes.

SELECT mp.id, mp.title, COUNT(*) as total_likes
FROM musical_piece mp
INNER JOIN album a ON (a.id = mp.album_id)
INNER JOIN content_creator c ON (c.id = a.content_creator_id)
INNER JOIN music_like ml ON (mp.id = ml.musical_piece_id)
WHERE mp.is_free = false AND c.city = 'pretoria'
GROUP BY mp.id
ORDER BY total_likes DESC
LIMIT 1;
