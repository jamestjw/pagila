# Pagila

Are you someone who is new to SQL? Perhaps you would like to practice writing some SQL queries, but you just can't seem to find a dataset that is sufficiently big/complex for you to really learn what you need. Well I am here to help you install PostgreSQL locally and load a database already filled with data!

Taking the data from [here](https://github.com/devrimgunduz/pagila), I have ever so slightly modified the SQL statements to work with latest versions of PostgreSQL. On top of that, I have written a bash script to help you set up your PostgreSQL with this dummy data!

To get started, you will first need Git installed.

`sudo apt install git-all`

Then, you can clone this repository,

```
git clone https://github.com/jamestjw/pagila.git
cd pagila
chmod +x ./psql.sh
sudo ./psql.sh
```

And with that you are done!  To connect to your database locally, just run

`psql -U postgres pagila`

The password is also `postgres` but you can change it!