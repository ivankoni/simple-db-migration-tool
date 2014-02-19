#!/bin/sh
BASEDIR=$(dirname $0)
. $BASEDIR/variables.sh

LAT=`cat "$BASEDIR"/latest.lock`
#PWD=`cat "$BASEDIR"/pwd`
find $MIGRATION_DIR/ -type f | sort | awk -v lat="$LAT" '$0 > lat' | xargs cat | mysql -u $DBUSER -p $DBNAME
find $MIGRATION_DIR/ -type f | sort | awk -v lat="$LAT" '$0 > lat'
find $MIGRATION_DIR/ -type f | sort | awk '$0 > "$MIGRATION_DIR/$LAT"' | tail -n 1 > "$BASEDIR"/latest.lock
