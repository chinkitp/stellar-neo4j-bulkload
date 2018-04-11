WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/src/Resources/all-answers.json' AS url
CALL apoc.load.json(url) YIELD value as answer
WITH answer.graphs as g, answer
 CREATE(p:answer:g) SET 
                    p.id = answer.id, 
                    p.graphs = answer.graphs,
                    p.created = answer.props.created, 
                    p.description = answer.props.description, 
                    p.vote = answer.props.vote 
;

WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/src/Resources/all-questions.json' AS url
CALL apoc.load.json(url) YIELD value as question
MERGE (p:question {id:question.id})
   ON CREATE SET    p.id = question.id, 
                    p.graphs = question.graphs,
                    p.created = question.props.created, 
                    p.question = question.props.question, 
                    p.description = question.props.description, 
                    p.vote = question.props.vote 
;


CALL apoc.load.json(url) YIELD value as user
MERGE (p:user {id:user.id})
   ON CREATE SET    p.id = user.id, 
                    p.graphs = user.graphs,
                    p.created = question.props.created, 
                    p.question = question.props.question, 
                    p.description = question.props.description, 
                    p.vote = question.props.vote 
;