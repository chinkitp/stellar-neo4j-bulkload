#!/bin/bash

set -e

echo 'Installing neo4j apoc (plugins)..'

cd ./stellar-search-neo4j
curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-answers.json' | jq -r '. | [.id, .props.description, .props.created, .props.vote] | @csv ' > all-answers.csv
neo4j-admin import --nodes:answers:Lr41MAakQRqPwVuj3j4jCg="answers-header.csv,all-answers.csv"

#curl 'https://raw.githubusercontent.com/chinkitp/stellar-neo4j-bulkload/master/Resources/nodes/all-answers.json' | jq -r '. | [.id, .props.description, .props.created, .props.vote, "answers", .graphs[0]] | @csv ' > all-answers.csv
#wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.3.0.2/apoc-3.3.0.2-all.jar




