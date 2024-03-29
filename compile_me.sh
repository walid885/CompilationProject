bison -d sql_parser.y ;
flex sql_lex.l;
gcc lex.yy.c sql_parser.tab.c -o  projet -lm ;

#executing the project :   ./projet < iheb.txt   