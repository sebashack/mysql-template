USE soundspot_db;

-- Query albums and shows that were created by "content creators" who are both musicians and podcasters. Return
-- the name of the album/show, the name of the creator and their type.

SELECT c.id, c.name, c.type, s.name, a.name
FROM content_creator c
INNER JOIN album a ON (c.id = a.content_creator_id)
INNER JOIN `show` s ON (c.id = s.content_creator_id)
WHERE c.type = 'Both';
