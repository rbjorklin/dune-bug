
```
docker build -t bug-reproduce .
docker run --rm -ti bug-reproduce /bin/bash
eval $(opam env)
dune utop
Example.google ();;
```

With `#require "cohttp-lwt-unix";;` in `~/.ocamlinit` `dune utop` is broken
however `dune exec -- utop` and `dune exec -- utop-full` both work.
