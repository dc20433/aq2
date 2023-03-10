echo on
cd \pro\aq1
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%

set SUBFILENAME=backup_%CUR_YYYY%%CUR_MM%%CUR_DD%

set PGPASSWORD=oM5e5OcjUHlstkl
pg_dump -p 15432 -h localhost -U postgres -c -f %SUBFILENAME% -d aq2

cd \Users\dc204\OneDrive\reach\aq2
copy \pro\aq1\%SUBFILENAME%
cd \pro\aq1
