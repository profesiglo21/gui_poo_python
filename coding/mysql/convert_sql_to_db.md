https://stackoverflow.com/questions/53366793/how-to-create-a-db-file-from-sql

In your terminal, dump DATABASE into a SQL file
$> mysqldump --skip-add-locks --skip-comments --skip-opt DATABASENAME > DATABASENAME.sql