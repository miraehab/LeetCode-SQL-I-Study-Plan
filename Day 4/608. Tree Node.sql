SELECT id, 'Root' as type 
FROM Tree
WHERE p_id IS NULL

UNION

SELECT id, 'Inner' as type 
FROM Tree
/*means that the node is a parent which means that it's an inner node*/
WHERE id IN (SELECT DISTINCT
            p_id
        FROM
            tree
        WHERE
            p_id IS NOT NULL)
        AND p_id IS NOT NULL

UNION

SELECT id, 'Leaf' as type 
FROM Tree
/*means that the node doesn't have childs which means it's a leaf*/
WHERE id NOT IN (SELECT DISTINCT
            p_id
        FROM
            tree
        WHERE
            p_id IS NOT NULL)
        AND p_id IS NOT NULL
