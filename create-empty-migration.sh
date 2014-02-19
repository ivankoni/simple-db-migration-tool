#!/bin/sh
BASEDIR=$(dirname $0)
. $BASEDIR/variables.sh

DAT=$(date +"%Y%m%d%H%M%S")
touch $MIGRATION_DIR/$DAT-$1.sql
