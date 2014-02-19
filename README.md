simple-db-migration-tool
========================

## Setup

Change values in ./variables.sh

* DIR: location where migration files will be created
* DBNAME: database name
* DBUSER: database user


## Create new migration

    ./create-empty-migration.sh migrationName
    
This will create migration file in specified directory. Edit migration file with SQL queries, separated and ended with semicolon ";".

## Run migrations

When migrations files are deployed to server or picked up from versioning system, run:

    ./run-migrations.sh
    
This will run all new migrations.
