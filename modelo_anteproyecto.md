# Titles:

[en] Paip lang: a pipeline based programming language designed for easy transpilation

[es] Paip lang: un lenguaje de programación basado en pipelines diseñado para fácil transpilación

[gl] Paip lang: unha linguaxe de programación baseada en pipelines deseñada para a transpilación sinxela

# Brief description:

One of the goals a high-level programming language should have is to make it easy to represent complex ideas in a simple way, that is one of the reasons to justify all the abstractions they bring. From this, one would assume that simple ideas should then also be simple to represent, function composition is as simple as passing the output of a function as the input of another, and yet, most languages achieve this by twisting the flow of the program. In most of the C syntax languages, for example, in JavaScript, the way to call functions is to pass all the arguments after the function name inside parentheses. 

`log("Hello")`

While it works fine for simple expressions, when composition is used, it does not scale well, producing nesting.

`log( mulitply( add( 6, 7 ), 8 )`

This nesting of function calls inverts the logical order of operations, turning the logic flow from linear left to right to nonlinear inside out, which makes the reader jump all over the expression in order to parse it correctly.

Paip solves this by, instead of passing all the parameters after the name, the first parameter of the function comes before the name, this way, the flow does not get bent inside out:

Going from this: `log( mulitply( add( 6, 7 ), 8 )`
To this:
```
6
 .add 7 
 .multiply 8 
 .log
```
This change makes function composition a natural chaining of functions and greatly improves readability. Also, the focus on function composition makes it easy for modular code to emerge, making it so not only it is easy to read but also easy to understand.

This kind of syntax is not new, it is often called the builder pattern and emerges from the fact that methods receive as their first argument the object they are being called from. The `this` keyword in Java, for example, is no more than sugar for referencing the first argument of the function, other languages make it more explicit, for example, Python with the `self` parameter.

In another way, this syntax also comes from the pipe operator. There are some languages like Bash `|`, Elixir `|>` or Ocaml `|>` that have it, although it usually comes with limitations either in context or expressivity. The proposed solution is the main way of calling functions, putting function composition as a keystone of the language, and leveraging the syntax to make it expressive yet readable.

As the implementation of such a syntax in other languages is improbable, because it would require a full rework of the language, a mechanism by which to transpile Paip lang to other langs will be provided, making it easy to write Paip in any codebase and allowing for portability between languages.

To achieve this, the language will be built on top of a set of core built-in operations that the user can compose to produce a desired output. This makes it simple to transpile to other languages that are able to implement this core set of built-in functions, as the rest of the language is just combinations and compositions of them.

Making it transpilable not only makes it portable but also brings the possibility to add typechecking to codebases that normally could not have it. Even better, it gives the language the ability to be embedable in other languages due to Paip also being a simple yet powerful language.

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

The methodology used for the development of the project will be an incremental and iterative one, based on the Agile principles, to allow a gradual evolution of the project while maintaining a flexible set of objectives with a fixed core.

From the technical perspective, a standardized Git flow will be used, this includes:
- Feature branching, to avoid instability in the main branch, features will first be completed in their own branch and merged into main.
- Conventional commits, a fixed set of categories, and a brief but complete description in the message of every commit.
- Continuous integration, tests will be run on each commit to ensure correctness.

# Main phases:

1. Design of the language
2. Exploration and tech selection
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
