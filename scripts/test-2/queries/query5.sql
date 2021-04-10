USE soundspot_db;

-- For each podcast episode which is "child friendly" query the number of participants pariticipants and its title.
-- Additionally show the names of participants separated by ", ".

CREATE OR REPLACE VIEW participants_in_child_friendly_episode
AS
SELECT pe.title, COUNT(*) as num_participants, GROUP_CONCAT(CONCAT(p.name) SEPARATOR ', ') as episode_description
FROM podcast_episode pe
INNER JOIN participant p ON (pe.id = p.podcast_episode_id)
WHERE pe.is_child_friendly = true
GROUP BY pe.id;

SELECT * FROM participants_in_child_friendly_episode;
