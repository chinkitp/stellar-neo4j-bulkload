WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/src/Resources/all-answers.json' AS url
CALL apoc.load.json(url) YIELD value as answer
 CREATE(p:answer:Lr41MAakQRqPwVuj3j4jCg) SET 
                    p.id = answer.id, 
                    p.created = answer.props.created, 
                    p.description = answer.props.description, 
                    p.vote = answer.props.vote 
;

WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/src/Resources/all-questions.json' AS url
CALL apoc.load.json(url) YIELD value as question
 CREATE(p:question:Lr41MAakQRqPwVuj3j4jCg) SET    
                    p.id = question.id, 
                    p.created = question.props.created, 
                    p.question = question.props.question, 
                    p.description = question.props.description, 
                    p.vote = question.props.vote 
;

WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/src/Resources/all-users.json' AS url
CALL apoc.load.json(url) YIELD value as user
 CREATE (p:user:Lr41MAakQRqPwVuj3j4jCg)  SET
                    p.id = user.id, 
                    p.created = user.props.created, 
                    p.dbo = user.props.dob, 
                    p.email = user.props.email,
                    p.firstName = user.props.firstName, 
                    p.gender = user.props.gender, 
                    p.lastName = user.props.lastName, 
                    p.passport.number = user.props.passport.number
;