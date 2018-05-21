
*git init 

*git add .

*git commit -m "first commit" 

*git remote add origin https://github.com/Teslenko/Evtushenko.git

*git push -u origin master

-------------

*heroku git:remote -a Evtushenko

*git add .

*git commit -am "make it better"

*git push heroku master

--------------------

heroku pg:psql 

SELECT * FROM candidates;

UPDATE candidates SET name = 'Ремень' WHERE ID = 1;

DELETE FROM candidates WHERE ID = 1;

--------------------

Стереть БД, но потом снова надо создать

heroku pg:reset DATABASE - стереть БД, но потом снова надо создать

heroku addons:create heroku-postgresql:hobby-dev

heroku run rails db:migrate

--------------------

rake db:reset 

rake db:migrate

--------------------
If "git pull..."

git clean  -d  -fx "Commit"

git push --force

--------------------

If you use the command: git fetch --all and git reset --hard origin/master -  it is the enter next command to restore

*git reset --merge ORIG_HEAD*

--------------------

http://aakinshin.net/ru/blog/post/git-log/ - View the Git Logs

--------------------

Changing a remote's URL:

git remote -v

git remote set-url origin https://github.com/USERNAME/REPOSITORY.git

git remote -v

--------------------

git rm --cached -r public/

rm -rf tmp/*

rm -rf public/assets/*

RAILS_ENV='production' rake assets:precompile

bundle exec rake assets:precompile

rake assets:clean && rake assets:clobber && rake assets:precompile

heroku run rake css:rebuild

--------------------

.backup ?DB? FILE      Backup DB (default "main") to FILE

.bail ON|OFF           Stop after hitting an error.  Default OFF

.databases             List names and files of attached databases

.dump ?TABLE? ...      Dump the database in an SQL text format
                         If TABLE specified, only dump tables matching                         
                         LIKE pattern TABLE.
                         
.echo ON|OFF           Turn command echo on or off

.exit                  Exit this program

.explain ?ON|OFF?      Turn output mode suitable for EXPLAIN on or off.
                         With no args, it turns EXPLAIN on.
                         
.header(s) ON|OFF      Turn display of headers on or off
.help                  Show this message

.import FILE TABLE     Import data from FILE into TABLE

.indices ?TABLE?       Show names of all indices
                         If TABLE specified, only show indices for tables                     
                         matching LIKE pattern TABLE.
                         
.load FILE ?ENTRY?     Load an extension library

.log FILE|off          Turn logging on or off.  FILE can be stderr/stdout

.mode MODE ?TABLE?     Set output mode where MODE is one of:

                         csv      Comma-separated values
                         
                         column   Left-aligned columns.  (See .width)
                         
                         html     HTML <table> code
                         
                         insert   SQL insert statements for TABLE
                         
                         line     One value per line
                         
                         list     Values delimited by .separator string
                         
                         tabs     Tab-separated values
                         
                         tcl      TCL list elements
                         
.nullvalue STRING      Use STRING in place of NULL values

.open ?FILENAME?       Close existing database and reopen FILENAME

.output FILENAME       Send output to FILENAME

.output stdout         Send output to the screen

.print STRING...       Print literal STRING

.prompt MAIN CONTINUE  Replace the standard prompts

.quit                  Exit this program

.read FILENAME         Execute SQL in FILENAME

.restore ?DB? FILE     Restore content of DB (default "main") from FILE

.schema ?TABLE?        Show the CREATE statements
                         If TABLE specified, only show tables matching
                         LIKE pattern TABLE.
                         
.separator STRING      Change separator used by output mode and .import

.show                  Show the current values for various settings

.stats ON|OFF          Turn stats on or off

.tables ?TABLE?        List names of tables
                         If TABLE specified, only list tables matching
                         LIKE pattern TABLE.
                         
.timeout MS            Try opening locked tables for MS milliseconds

.trace FILE|off        Output each SQL statement as it is run

.vfsname ?AUX?         Print the name of the VFS stack

.width NUM1 NUM2 ...   Set column widths for "column" mode

.timer ON|OFF          Turn the CPU timer measurement on or off

