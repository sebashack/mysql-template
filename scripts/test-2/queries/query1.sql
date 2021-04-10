USE soundspot_db;

-- Query all second season's participants of show 'Marriage Life'

SELECT DISTINCT p.name AS participant FROM participant p, podcast_episode pe, `show` s
WHERE s.name = 'Marriage Life'
  AND pe.season_number = 2
  AND p.podcast_episode_id = pe.id
  AND s.id = pe.show_id;
