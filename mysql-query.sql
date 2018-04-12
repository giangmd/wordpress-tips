-- phpMyAdmin SQL 
-- version 4.7.7
--
-- PHP Version: 7.1.9

-- --------------------------------------------------------

--
-- Delete all post with none term have been setting.
--

DELETE a,c 
FROM wp_posts a 
LEFT JOIN wp_postmeta c ON ( a.ID = c.post_id ) 
WHERE NOT EXISTS ( 
	SELECT * 
	FROM wp_term_relationships 
	WHERE a.ID =wp_term_relationships.object_id 
) AND a.post_type="document"

-- End
-- --------------------------------------------------------