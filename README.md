# The Lahman Baseball Database (PostgreSQL)

Conversion of the Lahman Baseball Database to PostgreSQL. All tables have been separated to allow for only importing wanted tables.

Current version: `lahman-sql_2013-12-10`

## Importing

`psql -d YOUR_DATABASE < individual/*.sql`

Or pick and choose which files you want.

## Things To Do

 * Optimize, database needs more indexes.
 * Create advanced statistics table instead of calculating for each query (things like ISO, FIP, etc).

## Copyright Notice & Limited Use License

This database is copyright 1996-2013 by Sean Lahman.

This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License. For details see: http://creativecommons.org/licenses/by-sa/3.0/


For licensing information or further information, contact Sean Lahman
at: seanlahman@gmail.com
