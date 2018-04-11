FROM neo4j:3.3.3

ADD . ./stellar-search-neo4j-client

RUN chmod +x ./stellar-search-neo4j-client/bulkload.sh

ENTRYPOINT ["./stellar-search-neo4j-client/bulkload.sh"]