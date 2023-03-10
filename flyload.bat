echo on
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%

set SUBFILENAME=backup_%CUR_YYYY%%CUR_MM%%CUR_DD%

set PGPASSWORD=11Danielz$#@!
psql -U postgres db_active < %SUBFILENAME%