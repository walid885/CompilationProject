# Define compiler and flags
CC = gcc
CFLAGS = -Wall 

# Define targets
.PHONY: all clean

all: projet

# Compile Bison grammar
myparser.tab.c: myparser.y
    $(CC) $(CFLAGS) -d -o myparser.tab.c myparser.y

# Compile Flex scanner
lex.yy.c: lex.l
    flex lex.l

# Compile program with generated files
projet: myparser.tab.c lex.yy.c 
    $(CC) $(CFLAGS) -o projet myparser.tab.c lex.yy.c -lfl

# Clean intermediate files
clean:
    rm -f myparser.tab.c lex.yy.c projet
