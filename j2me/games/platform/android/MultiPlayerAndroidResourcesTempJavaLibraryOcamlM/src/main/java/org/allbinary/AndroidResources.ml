(* Generated Code Do Not Modify *)
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.testgamedemo.R *)

class androidResources () =
  object
    val mutable drawable : Obj.t = Obj.repr 0
    method drawable : 'r. 'r = Obj.magic drawable
    method set_drawable : 'v. 'v -> unit = fun value' -> drawable <- Obj.repr value'
    val mutable id : Obj.t = Obj.repr 0
    method id : 'r. 'r = Obj.magic id
    method set_id : 'v. 'v -> unit = fun value' -> id <- Obj.repr value'
    val mutable layout : Obj.t = Obj.repr 0
    method layout : 'r. 'r = Obj.magic layout
    method set_layout : 'v. 'v -> unit = fun value' -> layout <- Obj.repr value'
    val mutable raw : Obj.t = Obj.repr 0
    method raw : 'r. 'r = Obj.magic raw
    method set_raw : 'v. 'v -> unit = fun value' -> raw <- Obj.repr value'
    val mutable string : Obj.t = Obj.repr 0
    method string : 'r. 'r = Obj.magic string
    method set_string : 'v. 'v -> unit = fun value' -> string <- Obj.repr value'

    initializer
      begin
        drawable <- (Obj.repr (new drawable.drawable ()));
        id <- (Obj.repr (new id.id ()));
        layout <- (Obj.repr (new layout.layout ()));
        raw <- (Obj.repr (new raw.raw ()));
        string <- (Obj.repr (new string.string ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidResources" (fun arguments -> Obj.repr (new androidResources (Obj.obj arguments)))

let instance = (new androidResources ())
let get_instance () = instance
let () = java_register_static "AndroidResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AndroidResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


