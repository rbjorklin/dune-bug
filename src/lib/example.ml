open Lwt.Infix

let call uri =
      Cohttp_lwt_unix.Client.call `GET uri >>= fun (_, rsp_body) ->
          Cohttp_lwt.Body.to_string rsp_body >|= fun body -> Ok body

let google () =
  let uri = Uri.of_string "https://www.google.com" in
  call uri
