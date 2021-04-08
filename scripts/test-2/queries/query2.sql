USE soundspot_db;

-- Query all participants in first episode of second season by 'Mariana Shostakovich'

SELECT p.id, p.name
FROM participant p
INNER JOIN podcast_episode pe ON (p.podcast_episode_id = pe.id)
INNER JOIN `show` s ON (s.id = pe.show_id)
INNER JOIN content_creator c ON (c.id = s.content_creator_id)
WHERE c.name = 'Mariana Shostakovich' AND pe.season_number = 2 AND pe.episode_number = 1;
