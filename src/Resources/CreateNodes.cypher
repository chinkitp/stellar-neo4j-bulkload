WITH 'https://raw.githubusercontent.com/data61/stellar-storage-eval/master/neo4j/src/main/resources/step1/nodes.json/label%3Danswer/part-00000-24cee670-6299-4516-b956-5fb2fc6e3e07.c000.json' AS url

CALL apoc.load.json(url) YIELD value as answer

MERGE (p:answer {id:answer.id})
   ON CREATE SET p.id = answer.id, p.noOfProps = answer.props.Description
   
   
   
   