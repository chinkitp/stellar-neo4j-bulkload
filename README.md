# Neo4j Bulkload JSON data exploration

## Approach 1 - Summary

## Approach 2 - Summary

## Lessons Learned

- Bulk import tool is deprecated instead use [neo4j-admin import](https://neo4j.com/docs/operations-manual/current/tools/import/syntax/) command 

- Avoid a Cartesian product 

```sql
MATCH (a),(b)
--This query builds a cartesian product between disconnected patterns.
```

- Create index on the nodes before loading edges. Use neo4j's easy to use query [profiling](https://neo4j.com/docs/developer-manual/current/cypher/query-tuning/how-do-i-profile-a-query/)

```sql
EXPLAIN MATCH (n) WHERE n.Id = "someValue" RETURN n;
PROFILE MATCH (n) WHERE n.Id = "someValue" RETURN n;
```

- Plugin needs to be in plugin folder of the docker containers root 

- There is no easy way to run custome script POST neo4j container start up

- Loading data using URI ie file path gave error 

- CLI neo4j status gives incorrect information 

- Neo4j:3.3.4 gives an error while doing bulkimport 

- Swapping the .db file is not working in the container 

## Running Approach 1

## Running Approach 2

## References

- [Effective Bulk Data Import into Neo4j](https://neo4j.com/blog/bulk-data-import-neo4j-3-0/)
- [Neo4j in a Docker container](https://neo4j.com/docs/operations-manual/current/installation/docker/)
- [Neo4j bulk import tool](https://neo4j.com/docs/operations-manual/current/tools/import/)
- [Importing CSV Data into Neo4j](https://neo4j.com/developer/guide-import-csv/)
- [How to import CSV data into Neo4j and solutions to potential issues that might arise during this process.](https://neo4j.com/developer/guide-import-csv/#_super_fast_batch_importer_for_huge_datasets)