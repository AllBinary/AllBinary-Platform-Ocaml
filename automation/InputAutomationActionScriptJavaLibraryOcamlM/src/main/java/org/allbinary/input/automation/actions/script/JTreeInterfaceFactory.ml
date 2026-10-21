(*
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.input.automation.actions.script *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class jTreeInterfaceFactory () =
  object
    val mutable jTreeInterface : JTreeInterface.jTreeInterface = (Obj.magic 0)
    method jTreeInterface = jTreeInterface
    method set_jTreeInterface value' = jTreeInterface <- value'
    

    method set : 'any1. 'any1 -> unit = fun (jTreeInterface_arg) ->
        let jTreeInterface_arg = Obj.repr jTreeInterface_arg in
        begin
        jTreeInterface <- (Obj.magic jTreeInterface_arg)
        end [@@warning "-20"]
    

    method getJTreeInterface () : JTreeInterface.jTreeInterface =
        begin
        (jTreeInterface :> JTreeInterface.jTreeInterface)
        end

    initializer
      begin
        jTreeInterface <- ((Obj.magic 0) :> JTreeInterface.jTreeInterface);
        ()
      end
  end
let () = java_register_constructor "JTreeInterfaceFactory" (fun arguments -> Obj.repr (new jTreeInterfaceFactory (Obj.obj arguments)))

let instance = (new jTreeInterfaceFactory ())
let get_instance () = instance
let () = java_register_static "JTreeInterfaceFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "JTreeInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


