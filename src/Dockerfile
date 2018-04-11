FROM neo4j:3.3.3

ADD . ./stellar-search 
ADD ./Resources/data.json ./import

RUN chmod +x ./stellar-search/bulkload.sh
RUN ./stellar-search/bulkload.sh