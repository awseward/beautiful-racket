# [Why Make Languages](https://beautifulracket.com/stacker/why-make-languages.html)

## Notes

* A programming language enables translation of our ideas into terms the computer understands

* Compiler or interpreter not necessarily written in language in operates on

* Fits pattern of `input -> some sort of device -> output` seen throughout programming.
  * => Function-like

* Language sets ground rules for program behavior, so a language can be a tool for discovering new ways to program.

> A language that doesn’t affect the way you think about program­ming is not worth knowing.
>
> — Alan Perlis

* Languages don't need to be limited to large and general purpose.

### DLSs hiding in plain sight:

* SQL
* Regex
* CSS/HTML
* awk
* bash
* make
* ...

### Benefits

* Enlarge/control the solution space
* "Better glue" - small pieces to fit in holes in larger toolchains
* Simpler interface around more complex code
* Augment mainstream programming techniques

* New language / DSL isn't the solution to _every_ problem.

* Steps to implement and use Racket-based DSL:
  1. Design notation and behavior
  2. Write Racket program to translate new language to equivalent Racket program
  3. Run resulting Racket program normally

  * Step 2 above is essentially building a transpiler
    * => Racket is designed to facilitate this step

* A Racket-based DSL can do anything that Racket can
