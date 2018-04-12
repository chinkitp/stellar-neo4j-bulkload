
//============ Loading Edges : asked =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-asked.json' AS url
CALL apoc.load.json(url) YIELD value as asked
match (a:Lr41MAakQRqPwVuj3j4jCg) where a.id=asked.src 
match (b:Lr41MAakQRqPwVuj3j4jCg) where b.id=asked.dst
  CREATE (a)-[r:asked]->(b) SET 
                    r.id = asked.id;

//============ Loading Edges : gave =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-gave.json' AS url
CALL apoc.load.json(url) YIELD value as gave
match (a:Lr41MAakQRqPwVuj3j4jCg) where a.id=gave.src 
match (b:Lr41MAakQRqPwVuj3j4jCg) where b.id=gave.dst
  CREATE (a)-[r:gave]->(b) SET 
                    r.id = gave.id;

//============ Loading Edges : made =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-made.json' AS url
CALL apoc.load.json(url) YIELD value as made
match (a:Lr41MAakQRqPwVuj3j4jCg) where a.id=made.src 
match (b:Lr41MAakQRqPwVuj3j4jCg) where b.id=made.dst
  CREATE (a)-[r:made]->(b) SET 
                    r.id = made.id;

//============ Loading Edges : on =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-on.json' AS url
CALL apoc.load.json(url) YIELD value as on
match (a:Lr41MAakQRqPwVuj3j4jCg) where a.id=on.src 
match (b:Lr41MAakQRqPwVuj3j4jCg) where b.id=on.dst
  CREATE (a)-[r:on]->(b) SET 
                    r.id = on.id;

//============ Loading Edges : to =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-to.json' AS url
CALL apoc.load.json(url) YIELD value as to
match (a:Lr41MAakQRqPwVuj3j4jCg) where a.id=to.src 
match (b:Lr41MAakQRqPwVuj3j4jCg) where b.id=to.dst
  CREATE (a)-[r:to]->(b) SET 
                    r.id = to.id;
