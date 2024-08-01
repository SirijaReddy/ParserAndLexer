# Switch Case Parser and Lexer

This repository provides a basic parser and lexer for a simple programming language that handles `switch` and `case` constructs, as well as other related syntax. The tools are implemented using Yacc (Yet Another Compiler Compiler) and Lex (Lexical Analyzer Generator).

## Overview

The parser (`w.y`) defines the grammar for the language, focusing on the `switch` statement, `case` labels, `default` cases, and other syntax elements. The lexer (`w.l`) tokenizes the input into recognized symbols such as keywords, operators, and identifiers.

## Files

- **`w.y`**: Yacc file defining the grammar rules for the parser.
- **`w.l`**: Lex file specifying the lexical analysis rules for tokenization.

## Features

- **Switch Case Handling**: Parses `switch` statements and their associated `case` labels.
- **Default Case Support**: Handles `default` cases within `switch` statements.
- **Token Recognition**: Identifies keywords, operators, and identifiers.

## Prerequisites

Ensure you have Yacc and Lex installed on your system. You will also need a C compiler such as GCC.

## Build Instructions

1. **Generate Yacc and Lex files:**

   ```sh
   yacc -d w.y
   lex w.l
2. **Compile the generated C files:**

    ```sh
      gcc y.tab.c lex.yy.c -o parser
3. **Run the Parser**

    ```sh
    ./parser
