#!/bin/bash 

#This hack is so that neo4j has the chance to start
sleep 10

echo 'Loading EPGM data into neo4j.'
start=$SECONDS
cat ./stellar-search-neo4j-client/CreateNodes.cypher | cypher-shell -a bolt://db:7687 -u neo4j
cat ./stellar-search-neo4j-client/CreateEdges.cypher | cypher-shell -a bolt://db:7687 -u neo4j
duration=$(( SECONDS - start ))
echo 'Completed loading EPGM data in ' ${duration} 'seconds'