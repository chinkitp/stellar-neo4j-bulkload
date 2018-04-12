FROM neo4j:3.3.3
ENV dbms.active_database=epgmdata.db
ADD . ./stellar-search-neo4j-client

RUN chmod +x ./stellar-search-neo4j-client/bulkload.sh

#ENTRYPOINT ["./stellar-search-neo4j-client/bulkload.sh"]