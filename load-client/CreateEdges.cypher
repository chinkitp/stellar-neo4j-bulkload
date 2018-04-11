
//============ Loading Edges : asked =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-asked.json' AS url
CALL apoc.load.json(url) YIELD value as asked
 MATCH (a),(b) 
 WHERE a.id = asked.src AND b.id = asked.dst 
 CREATE (a)-[r:asked]->(b) SET 
                    r.id = asked.id
;

//============ Loading Edges : gave =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-gave.json' AS url
CALL apoc.load.json(url) YIELD value as gave
 MATCH (a),(b) 
 WHERE a.id = gave.src AND b.id = gave.dst 
 CREATE (a)-[r:gave]->(b) SET 
                    r.id = gave.id
;

//============ Loading Edges : made =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-made.json' AS url
CALL apoc.load.json(url) YIELD value as made
 MATCH (a),(b) 
 WHERE a.id = made.src AND b.id = made.dst 
 CREATE (a)-[r:made]->(b) SET 
                    r.id = gave.id
;

//============ Loading Edges : on =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-on.json' AS url
CALL apoc.load.json(url) YIELD value as on
 MATCH (a),(b) 
 WHERE a.id = on.src AND b.id = on.dst 
 CREATE (a)-[r:on]->(b) SET 
                    r.id = on.id
;

//============ Loading Edges : to =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-to.json' AS url
CALL apoc.load.json(url) YIELD value as to
 MATCH (a),(b) 
 WHERE a.id = to.src AND b.id = to.dst 
 CREATE (a)-[r:to]->(b) SET 
                    r.id = on.id
;