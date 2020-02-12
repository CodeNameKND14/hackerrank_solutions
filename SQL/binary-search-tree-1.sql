-- github.com/CodeNameKND14

SELECT CASE WHEN P is NULL THEN CONCAT(N, ' Root)
            WHEN N in (SELECT DISTINCT P FROM BST) THEN CONCAT(N, ' Inner')
            ELSE CONCAT(N, ' Leaf')
            END
FROM BST
ORDER BY N ASC;
-- If any the value in P is Null then that is the root 
-- If any of the nodes in column 'N' are in Parent column 'P' it will be treated as an inner node. 
-- else, it will be a leaf node as the entry in 'N' column is not a parent to any other node.
            
