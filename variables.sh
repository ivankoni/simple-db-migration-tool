#!/bin/sh

DIR="../docs/db/migrations"  # path where migration files reside, relative to script location
DBNAME=database_name
DBUSER=database_user

BASEDIR=$(dirname $0)
MIGRATION_DIR=$BASEDIR/$DIR
