#!/bin/bash

set -e

echo 'Installing neo4j apoc (plugins)..'

cd ./stellar-search-neo4j

start=$SECONDS
#load answers 
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-answers.json' | jq -r '. | [.id, .props.description, .props.created, .props.vote] | @csv ' > all-answers.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-comments.json' | jq -r '. | [.id, .props.description, .props.created, .props.vote] | @csv ' > all-comments.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-questions.json' | jq -r '. | [.id, .question, .props.description, .props.created, .props.vote] | @csv ' > all-questions.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-users.json' | jq -r '. | [.id, .props.dbo, .props.email, .props.firstName, .props.gender, .props.lastName, .props.passport.number] | @csv ' > all-users.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-asked.json' | jq -r '. | [.src, .id, .dst] | @csv ' > all-asked.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-gave.json' | jq -r '. | [.src, .id, .dst] | @csv ' > all-gave.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-made.json' | jq -r '. | [.src, .id, .dst] | @csv ' > all-made.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-on.json' | jq -r '. | [.src, .id, .dst] | @csv ' > all-on.csv
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/edges/all-to.json' | jq -r '. | [.src, .id, .dst] | @csv ' > all-to.csv

neo4j-admin import \
    --nodes:answers:Lr41MAakQRqPwVuj3j4jCg="answers-header.csv,all-answers.csv" \
    --nodes:comments:Lr41MAakQRqPwVuj3j4jCg="comments-header.csv,all-comments.csv" \
    --nodes:questions:Lr41MAakQRqPwVuj3j4jCg="questions-header.csv,all-questions.csv" \
    --nodes:users:Lr41MAakQRqPwVuj3j4jCg="users-header.csv,all-users.csv" \
    --relationships:asked="relationship-header.csv,all-asked.csv" \
    --relationships:gave="relationship-header.csv,all-gave.csv" \
    --relationships:made="relationship-header.csv,all-made.csv" \
    --relationships:on="relationship-header.csv,all-on.csv" \
    --relationships:to="relationship-header.csv,all-to.csv" 
    
duration=$(( SECONDS - start ))
echo 'Completed loading EPGM data in ' ${duration} 'seconds'


#curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-answers.json' | jq -r '. | [.id, .props.description, .props.created, .props.vote, "answers", .graphs[0]] | @csv ' > all-answers.csv
#wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.3.0.2/apoc-3.3.0.2-all.jar




