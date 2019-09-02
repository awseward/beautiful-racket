# [The Expander](https://beautifulracket.com/stacker/the-expander.html)

## Notes

* Expander will do its work with the help of macros

* Macros happen at compile time, not run time

### Example Macro

```
(and cond-a cond-b cond-c)
```

gets expanded at compile time to:

```
(if cond-a
    (if cond-b
        cond-c
        #f)
    #f)
```

These nested `if` conditionals are what's actually executed at run time.

---

* A macro doesn't evaluate the code it gets as input, but implements a template
  to put items into certain positions.

* Macro just "rewrites" the code

### Three Golden Rules of Macros

1. At compile time, a macro takes one code fragment as input, and converts it
   to a new code fragment. The input & output code fragments are each packaged
   inside a syntax object.

2. Because compile time happens before run time, all macros operate before any
   run-time functions.

3. A macro can only treat its input code as a literal syntactic entity. It
   can't evaluate arguments or expressions within that code, because those
   values are only available at run time (which happens after compile time).

---

* Arguments and expressions within a code fragment passed to a macro don't
  exist yet, so cannot be used in any way.

* Because of restricted interface, macros less versatile than run time
  functions; a macro is not the tool of first resort.

* Macro system is Racket's crown jewel

* If the reader was responsible for the form of the code, we could say the
  expander is responsible for its meaning. The expander’s job is to prepare the
  code so Racket can evaluate it.

* Once an `identifier` has a `binding`, it becomes a `variable`

### Techniques within expander

1. Define macros to rewrite certain code as other code @ compile time

2. Define functions to be invoked @ run time

3. Import bindings from existing Racket modules (can include both macros and
   functions)

---

Expander needs to

1. Provide bindings for `handle`, `+`, and `*`

2. Implement a stack

3. Provide a special macro called `#%module-begin` (conventional)

---

* `#%module-begin` is like an analog to `read-syntax`
