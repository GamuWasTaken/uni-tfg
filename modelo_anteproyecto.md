# Titles:

[en] Paip lang: A pipeline based programming language designed for easy transpilation

[es] Paip lang: Lenguaje de programación basado en pipelines diseñado para fácil transpilación

[gl] Paip lang: Linguaxe de programación baseada en pipelines deseñada para facilitar a transpilación

# Brief description:

The current status quo is for functions to receive their arguments after the function name.

3 + 4 turns into `print(add(3, 4))`

This approach makes it hard to compose functions in a clean way.

(3 + 4) * 5 turns into `print(mul(add(3,4), 5))`

The longer the expression, the harder it becomes to read and understand its meaning.

To that end I propose a novel syntax where the function acts as an infix operator.

(3 + 4) * 5 turns into `3.add 4 .mul 5 .print`

Making function composition a natural chaining of functions greatly improves readability.

As the implementation of such a syntax in other languages is improbable, I'll also propose a mechanism by which to transpile Paip lang to other langs by implementing a reduced set of functions in the target language.

# Objectives:

Main objective is the design and implementation of
- a typed functional programming language
- a modular standard library
- a mechanism for transpiling to any language

In addition (and in order of probability),
- demo for a language transpilation
- documentation of the language and tools around it
- tests suite to check everything is working
- sintax highlighting (tree-sitter grammar)
- language server

All this elements are to be done in an FOSS manner allowing anyone to contribute to the project.

As the main goal of the project is to gain experience with designing and implementing languages, all the objectives are to be implemented at the lowest level possible, that is, without using off the shelf full solutions like Bison or ANTLR, but opting for smaller libraries for complex algorithms and data structures such as LR/LL parsers or trees.

# Metodology:

Incremental and iterative, employing common a git develompent flow, with conventional commits. 

# Main phases:

1. Exploration and tech selection
2. Design of the language
3. Implementation of the lexer and parser
4. Implementation of an interpreter
5. Implementation of the transpiler
6. Testing and documentation

# Required materials:

Personal computer
Text editor
Rust and Cargo
Git

# Category:

Proposed by the student 
