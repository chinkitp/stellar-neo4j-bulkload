
//============ Loading Nodes : answer =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-answers.json' AS url
CALL apoc.load.json(url) YIELD value as answer
 CREATE(p:answer:Lr41MAakQRqPwVuj3j4jCg) SET 
                    p.id = answer.id, 
                    p.created = answer.props.created, 
                    p.description = answer.props.description, 
                    p.vote = answer.props.vote 
;

//============ Loading Nodes : comment =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-comments.json' AS url
CALL apoc.load.json(url) YIELD value as comment
 CREATE(p:comment:Lr41MAakQRqPwVuj3j4jCg) SET 
                    p.id = comment.id, 
                    p.created = comment.props.created, 
                    p.description = comment.props.description, 
                    p.vote = comment.props.vote 
;

//============ Loading Nodes : Question =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-questions.json' AS url
CALL apoc.load.json(url) YIELD value as question
 CREATE(p:question:Lr41MAakQRqPwVuj3j4jCg) SET    
                    p.id = question.id, 
                    p.created = question.props.created, 
                    p.question = question.props.question, 
                    p.description = question.props.description, 
                    p.vote = question.props.vote 
;

//============ Loading Nodes : User =====================
WITH 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-users.json' AS url
CALL apoc.load.json(url) YIELD value as user
 CREATE (p:user:Lr41MAakQRqPwVuj3j4jCg)  SET
                    p.id = user.id, 
                    p.created = user.props.created, 
                    p.dbo = user.props.dob, 
                    p.email = user.props.email,
                    p.firstName = user.props.firstName, 
                    p.gender = user.props.gender, 
                    p.lastName = user.props.lastName, 
                    p.passportNumber = user.props.passport.number
;

CREATE INDEX ON :answer(id);
CREATE INDEX ON :user(id);
CREATE INDEX ON :question(id);
CREATE INDEX ON :comment(id);