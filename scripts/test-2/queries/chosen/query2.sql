USE soundspot_db;

-- Query 1 = CHOSEN
-- Query all second season's participants by 'Mariana Shostakovich'

SELECT DISTINCT c.name AS host, p.name AS participant FROM participant p, podcast_episode pe, `show` s, content_creator c
WHERE c.name = 'Mariana Shostakovich'
  AND pe.season_number = 2
  AND p.podcast_episode_id = pe.id
  AND s.content_creator_id = c.id
  AND s.id = pe.show_id;
