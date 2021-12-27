FROM fedora:35

RUN dnf install -y \
    opam \
    gmp-devel \
    libev-devel \
    openssl-devel \
    rsync \
    git

RUN opam init\
    --disable-sandboxing\
    --auto-setup\
    --compiler ocaml-base-compiler.4.13.1

ADD ocamlinit /root/.ocamlinit
ADD . /bug
WORKDIR /bug

RUN opam install --yes .
