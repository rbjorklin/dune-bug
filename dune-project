(lang dune 2.9)
(generate_opam_files true)
(maintainers "N/A")
(name example)
(package
 (name example)
 (synopsis "bug report")
 (depends
  (utop
   (>= 2.9.0))
  (dune
   (>= 2.7.1))
  (core
   (>= v0.14.1))
  (lwt
   (>= 5.3.0))
  (conf-libev
   (>= 4-11))
  (conf-libssl
   (>= 3))
  (lwt_ssl
   (>= 1.1.3))
  (cohttp-lwt-unix
   (>= 2.5.4))
  (lwt_ppx
   (>= 2.0.1))
  ))
