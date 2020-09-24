# MariaDB Docker image for ARM

This Docker image is based on the minimal Alpine Linux with MariaDB (MySQL Compatible) database server.

# Environment Variables:

`MYSQL_CHARSET` - default charset 'utf-8'  
`MYSQL_COLLATION` - default collation 'utf8_general_ci'  
`MYSQL_DATABASE` - specify the name of the database  
`MYSQL_USER` - specify the user name for the database  
`MYSQL_PASSWORD` - specify the user password for the database  
`MYSQL_ROOT_PASSWORD` - specify the root password for MariaDB. If not set, then will be auto generated and show in logs.  

# Create an instance
```
docker run -it --name mysql -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql -e MYSQL_DATABASE=database -e MYSQL_USER=user -e MYSQL_PASSWORD=FAX56AkjYaBtRVpW -e MYSQL_ROOT_PASSWORD=MDa7kaKdLeP9q335 sepludowski/docker-mariadb-arm
```

# Docker compose example
```
mysql:
  image: sepludowski/docker-mariadb-arm
  environment:
    MYSQL_ROOT_PASSWORD: MDa7kaKdLeP9q335
    MYSQL_DATABASE: database
    MYSQL_USER: user
    MYSQL_PASSWORD: FAX56AkjYaBtRVpW
  ports:
    - "3306:3306"
  volumes:
    - /data/mysql:/var/lib/mysql
  restart: always
```

# Links

[Alpine Linux](https://alpinelinux.org "Alpine Linux")  
[MariaDB](https://mariadb.org "MariaDB")
