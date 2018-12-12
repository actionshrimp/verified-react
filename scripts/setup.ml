let set_imandra_node_process : Node.Child_process.spawnResult -> unit = [%raw fun x -> "{global.imandraNodeProcess = x}"]

let default = fun () ->
  let open Imandra_client in
  Imandra_client.start (imandraOptions ~serverCmd:"imandra-http-server-dev" ())
  |> Js.Promise.then_ (fun (np, isi) ->
      match (Js.Json.stringifyAny isi) with
      | None ->
        Js.Promise.reject (Failure "couldn't serialise JSON for .imandra-server-info");
      | Some j_str ->
        Node.Fs.writeFileSync ".imandra-server-info" j_str `utf8;
        set_imandra_node_process np;
        Js.Promise.resolve ()
    )
