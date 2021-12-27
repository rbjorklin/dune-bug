open Core

let main () = 
    match%lwt Example.google () with
    | Ok x -> 
    Lwt.return (Printf.printf "%s\n" x)
    | _ -> Lwt.return ()

let () =
  Lwt_main.run (main ())
