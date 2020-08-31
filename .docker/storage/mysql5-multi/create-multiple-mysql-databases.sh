#!/bin/bash

function create_database() {
	local database=$1
	echo "  Creating database '$database'"
	mysql -u root --password=$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE $database"
}

if [ -n "$MYSQL_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $MYSQL_MULTIPLE_DATABASES"
	for db in $(echo $MYSQL_MULTIPLE_DATABASES | tr ',' ' '); do
		create_database $db
	done
	echo "Multiple databases created"
fi
