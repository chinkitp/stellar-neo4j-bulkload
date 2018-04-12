#stellar-neo4j-bulkload

##Approach 1 - Summary 

##Approach 2 - Summary 

##Lessons Learned 
- Bulk import tool is deprecated instead use [neo4j-admin import](https://neo4j.com/docs/operations-manual/current/tools/import/syntax/) command 
- Avoid a Cartesian product 
- Create index on the nodes before loading edges 
- Loaded data using LOAD JSON & APOC 
- Plugin needs to be in plugin folder for the docker containers root 
- There is no easy way to ‘on post container’ start of neo4j 
- EXPLAIN keyword in CYPHER gives the query plan - use it 
- Loading data using URI ie file path gave error 
- CLI neo4j status = gives incorrect information 
- Neo4j:3.3.4 gives an error

- Loaded data using neo4j-admin import command 
- Swapping the .db file is not working in the container 

##Running Approach 1 

##Running Approach 2 


#References
- [Effective Bulk Data Import into Neo4j](https://neo4j.com/blog/bulk-data-import-neo4j-3-0/)
- [Neo4j in a Docker container](https://neo4j.com/docs/operations-manual/current/installation/docker/)
- [Neo4j bulk import tool](https://neo4j.com/docs/operations-manual/current/tools/import/) 
- [Importing CSV Data into Neo4j](https://neo4j.com/developer/guide-import-csv/)
- [How to import CSV data into Neo4j and solutions to potential issues that might arise during this process.](https://neo4j.com/developer/guide-import-csv/#_super_fast_batch_importer_for_huge_datasets)

