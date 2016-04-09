# The Lahman Baseball Database (PostgreSQL)

Conversion of the Lahman Baseball Database structure to PostgreSQL.

## Changes

Postgres doesn't like columns that begin with numbers without switching to quoted column names. So all `2B` and `3B` columns have been converted to `H2B` and `H3B`.

## Importing

Download the CSV files from [SeanLahman.com](http://www.seanlahman.com/baseball-archive/statistics/), or pull the latest download from [chadwickbureau/baseballdatabank](https://github.com/chadwickbureau/baseballdatabank).

Once you have the CSV files downloaded, open the appropriate year folder and run the `lahman_structure.sql` file. You can then modify the `import.sql` file to point to the location of your files.

## Copyright Notice & Limited Use License

This database is copyright 1996-2016 by Sean Lahman.

This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License.  For details see: http://creativecommons.org/licenses/by-sa/3.0/

Thanks to Ted Turocy of the Chadwick Baseball Bureau, who did the heavy lifting to make the 2015 update possible. Ted also hosts a version of the data at github, for folks who are inclined to interface with it that way. Adam McIntosh created the SQL version.
