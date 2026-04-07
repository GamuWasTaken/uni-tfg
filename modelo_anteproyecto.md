# Titles:

[en] Paip lang: A pipeline based programming language designed for easy transpilation

[es] Paip lang: Lenguaje de programación basado en pipelines diseñado para fácil transpilación

[gl] Paip lang: Linguaxe de programación baseada en pipelines deseñada para facilitar a transpilación

# Brief description:
The normal way of calling functions currently is to pass all the arguments after the function name. While it works fine for simple expressions, it does not scale well for more complex ones, producing nesting.

This nesting of function calls inverts the logical order of operations, turning the logic from linear left to right to nonlinear inside out, which makes the reader jump all over the expression in order to parse it correctly.

The proposed solution is that instead of this:

3 + 4 turning into `print(add(3, 4))`

Which does not scale well with complexity:

(3 + 4) * 5 turns into `print(mul(add(3,4), 5))`

We instead do the following:

(3 + 4) * 5 turns into 

```
3
 .add 4 
 .mul 5 
 .print
```

Making function composition a natural chaining of functions and greatly improving readability.

As the implementation of such a syntax in other languages is improbable, a mechanism by which to transpile Paip lang to other langs will be provided by implementing a reduced set of functions in the target language.

The language will be built on top of a set of core built-in operations that the user can compose to produce a desired output. This makes it simple to transpile to any language that can implement this core set of built-in functions, as the rest of the language is just combinations and compositions of them.

# Objectives:

Main objective is the design and implementation of
- a typed functional programming language
- a modular standard library
- demo for a language transpilation

In addition (and in order of probability),
- documentation of the language and tools around it
- sintax highlighting (tree-sitter grammar)
- a mechanism for transpiling to any language
- tests suite to check everything is working
- language server

All this elements will be done in an FOSS manner allowing anyone to contribute to the project.

As the main goal of the project is to gain experience with designing and implementing languages, all the objectives are to be implemented at the lowest level possible, that is, without using off the shelf full solutions like Bison or ANTLR, but opting for smaller libraries for complex algorithms and data structures such as LR/LL parsers or trees.

# Metodology:

Incremental and iterative, employing a common git develompent flow, with conventional commits. 

# Main phases:

1. Exploration and tech selection
2. Design of the language
3. Implementation of the lexer and parser
4. Implementation of an interpreter
5. Implementation of the transpiler
6. Testing and documentation

# Required materials:

- Personal computer
- Text editor
- Rust and Cargo
- Git

# Category:

Proposed by the student 
