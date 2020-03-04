#!/bin/bash
apt update -y
apt install postgresql postgresql-contrib -y
psqlver=$(psql -V | egrep -o '[0-9]{1,}\.[0-9]{1,}')
echo $psqlver
echo "host    all             all           0.0.0.0/0         md5" >>  /etc/postgresql/"$psqlver"/main/pg_hba.conf
echo "listen_addresses = '*'" >> /etc/postgresql/"$psqlver"/main/postgresql.conf

service postgresql start
su - postgres -c "createdb pagila"
su - postgres -c "psql -d pagila -f ${PWD}/pagila-schema.sql"
su - postgres -c "psql -d pagila -f ${PWD}/pagila-insert-data.sql"
sudo -u postgres psql -c "ALTER ROLE postgres WITH password 'postgres';"
