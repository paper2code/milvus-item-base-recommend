# Using multiple databases with the official MySQL Docker image

## Usage


Pass the `MYSQL_MULTIPLE_DATABASES` environment variable
to the container:

    myapp-mysql:
        image: theplant/mysqlmd:5
        environment:
            - MYSQL_MULTIPLE_DATABASES=db1,db2
            - MYSQL_ROOT_PASSWORD=123

