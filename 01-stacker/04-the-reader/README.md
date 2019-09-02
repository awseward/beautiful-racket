# [The Reader](https://beautifulracket.com/stacker/the-reader.html)

## Notes

### A peek into the future

```
4
8
+
3
*
```
naively parenthesizes to
```
(4)
(8)
(+)
(3)
(*)
```
but this is not useful and will produce errors.

To actually do something, consider a `handle` function, like so:
```
(handle 4)
(handle 8)
(handle +)
(handle 3)
(handle *)
```

In the `stacker` example, there are two cases for `handle`:

1. `(handle 4)`: it will push a number onto the stack

2. `(handle +)`: it will get the top two arguments from the stack and apply the fn (`+`).

The `handle` function is where the `expander` comes into play.

### Summary

Implemented `read-syntax` to wrap everything in a call to `handle`.

Without an expander, though, results in syntax error, since `handle` not defined.

In order to inspect / debug despite this, added a second layer of quoting around each `handle`-wrapped term.

This looks a bit like this:

```diff
- (define src-datums (format-datums '(handle ~a) src-lines))
+ (define src-datums (format-datums ''(handle ~a) src-lines))
```

As a result of this, the `br` expander we're using for now (instead of our own) just unquotes into a singly-quoted set of "datums" instead of unquoting them to actual code to try and execute.

Actual expander implementation comes in the next chapter.
