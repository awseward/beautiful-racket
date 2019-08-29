# [Setup](https://beautifulracket.com/stacker/setup.html)

## Notes

* Components of a Racket-based language:
  1. reader : `string of characters -> Racket-style parenthesized forms (S-expressions)`
  2. expander : determines how to correspond S-expressions to real Racket expressions

* Readers sometimes written from scratch, somtimes imported

* Every Racket source file begins with a `#lang line`

* `#lang line` tells Racket where to find the `reader`

### Racket basics

#### S-expression

Can be:
* a single value, like `2` or `"blue"`
* a variable, like `edge`
* a list of values, like `(list 2 "blue" edge)`
* a function call, like `(* 21 2)`

* Function calls go between parentheses, w/ name at first position inside them (prefix notation)

* S-expr is evaluated to produce a value

* S-expr can be nested to any depth

* True and false: `#t` and `#f`

* In conditionals, *_only_* `#f` ever evaluates to false; everything else (even `0`, `null`, etc) evaluates to true

* Whitespace is not significant

* Square brackets mean same thing as parentheses, sometimes used for readability
