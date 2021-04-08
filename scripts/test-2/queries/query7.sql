USE soundspot_db;

-- Query the average number of featuring artists for albums whose content creator has "nashville" as city.

CREATE OR REPLACE VIEW ft_artist_count
AS
SELECT COUNT(*) as total_ft_artists
FROM album a
INNER JOIN content_creator c ON (a.content_creator_id = c.id)
INNER JOIN musical_piece mp ON (mp.album_id = a.id)
INNER JOIN featuring_artist fa ON (fa.musical_piece_id = mp.id)
WHERE c.city = 'nashville'
GROUP BY a.id;

SELECT AVG(t.total_ft_artists) FROM (SELECT * FROM ft_artist_count) as t;
