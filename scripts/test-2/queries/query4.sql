USE soundspot_db;

-- For each podcast episode which is "child friendly" query its id, title and the number of pariticipants.

SELECT pe.id, pe.title, COUNT(*) as total_participants
FROM podcast_episode pe
INNER JOIN participant p ON (pe.id = p.podcast_episode_id)
WHERE pe.is_child_friendly = true
GROUP BY pe.id;
