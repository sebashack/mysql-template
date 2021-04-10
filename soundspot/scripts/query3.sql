USE soundspot_db;

-- Query the number of featuring artists in the album 'Liberty in America'

SELECT COUNT(*) as total_ft_artists
FROM album a
INNER JOIN musical_piece mp ON (a.id  = mp.album_id)
INNER JOIN featuring_artist fa ON (mp.id = fa.musical_piece_id)
WHERE a.name = 'Liberty in America';
