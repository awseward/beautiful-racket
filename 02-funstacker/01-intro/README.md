# [Intro](https://beautifulracket.com/funstacker/intro.html)

## Notes

* Implementation of stack in prev exercise could be better

### Techniques discourage in Racket (used in previous `stacker` exercise)

1. Relying on variable (`stack`) in `handle`

2. Stateful mutation (`push-stack!` and `pop-stack!` mutate `stack` in place)

---

* Should prefer functional programming techniques (designing functions to be
  self-contained)

* FP dovetails with expression-based structure

* Increased composability by nature of being expression-based

* Provability of a pure function much simpler

* Don't need to use FP techniques 100% of the time (sometimes more
  efficient/readable to use state or mutation)
