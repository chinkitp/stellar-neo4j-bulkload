FROM neo4j:3.3.3

ADD . ./stellar-search-neo4j

RUN apk add --no-cache --quiet \
    jq \
    curl 

RUN chmod +x ./stellar-search-neo4j/setup.sh
#RUN ./stellar-search-neo4j/setup.sh
