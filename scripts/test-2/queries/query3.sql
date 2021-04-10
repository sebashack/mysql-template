USE soundspot_db;

-- Query the all podcast shows where the average duration of an episode is between 40min (2400 secs) and 1h 30m (5400 secs)
-- and the creation date is between '2019-01-01' and '2021-01-01'.

CREATE OR REPLACE VIEW pe_avg_duration
AS
SELECT s.id, s.name, AVG(pe.duration) as avg_duration
FROM`show` s
LEFT JOIN podcast_episode pe ON (s.id = pe.show_id)
GROUP BY s.id;

SELECT s.id, s.name, av.avg_duration
FROM `show` s
LEFT JOIN pe_avg_duration av ON (av.id = s.id)
WHERE    ( SELECT DISTINCT t.avg_duration FROM pe_avg_duration t WHERE t.id = s.id ) BETWEEN 2400 AND 5400
      AND s.created_at BETWEEN '2019-01-01' AND '2021-01-01';
