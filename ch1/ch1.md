# Chapter 1
- `ghc` - Glasgow Haskell Compiler
- `ghci` - REPL for `ghc`
    - `ghci` or `Prelude` is the name give to the module that provides access to all the methods in the standard library
    - Starting the `ghci` shows a list of all the modules loaded
- `putStrLn` - print a string with a new line at the end; other types need to be converted to string first
- `putStr` - print a string without a new line at the end
- `show` - convert a value / variable to string
- `putStrLn (show (1, 2))` - print a tuple by first converting it to string
- `print` - combines `show` and `putStrLn` in one 
- `[1..3]` - returns `[1,2,3]`
- `[1,5..16]` - returns `[1,5,9,13]`
- List - can contain any numer of elements; all elements must of be of same type. Syntax: `[1, 2]`
- Tuple - can contain any combination of type of elements; size is fixed at the time of creation. Syntax: `(1, 2)`
    - `fst` function - get the first element of the tuple; `fst tupleName`
    - `snd` function - get the second element of the tuple; `snd tupleName`
- Apply a function - calling a function; no parens required unless feeding the output of one function to another
- Tuples and lists can be arbitrarily nested
- `runhaskell`
- `ghc Main`
    - Compiling a program lists out `Main` which is the name given to all of the built-in things available by default from Haskell's standard library
    - Compiling will list out all the modules that you have loaded
- `:load`

## Formatting
- Haskell is whitespace sensitive language like Python but unlike Python, the number of spaces used for indentation is not fixed. We just need to be consistent.
- No curly braces or semicolons

## Variables
- Variable names must start with lower case char
- They can contain letters, numbers, underscore, single quote
- Prefer camelCase for variable names
- Variable names can be re-used 
    - **doesn't this break immutability?**
    - What is the problem with `two = two + one`?
    - Reusing variable names in the same scope is not allowed
- Variables can be created without any keyword

## Operators
- `<>` - used to join things e.g., strings; new; preferred
- `++` - used to join things e.g., strings and lists; legacy

## Functions
- Function definition: `functionName arg1 arg2 ... = function definition`
- The value of expression in function is return value ??
- Anonymous / Lambda functions - Functions without a name
    - Syntax for lambda functions: `\arg1 arg2 ... -> function body`
- Functions close over the values that are in scope when they are defined, meaning that the variables that were in scope when you defined the function are also in scope inside of the function. That means you can also nest anonymous functions. --> **What does it mean?**
- Fully saturated function - A function that receives all of its arguments and can return a value that is not a function
- Partially applied function - A function that doesn't receive all of its arguments and will return a function (on its own, we don't need to do anything)
- eta reduction - idiomatic in Haskell
- eta expansion
- Operators like +, - etc. are infix and functions in themselves
    - What are infix operators?
    - they can also be partially applied
        - We need to put parentheses around the expression
```haskell
module Main where
addOne = (+1)
print (addOne 2)
```  