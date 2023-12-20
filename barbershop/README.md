sinatra-bootstrap-clean
=======================

Cleaned version of https://github.com/bootstrap-ruby/sinatra-bootstrap

# Database
Use with "DB Browser for SQLite"
```
CREATE TABLE IF NOT EXISTS "Users" (
	"id"	INTEGER,
	"username"	TEXT,
	"phone"	TEXT,
	"datestamp"	TEXT,
	"barber"	TEXT,
	"color"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
```
