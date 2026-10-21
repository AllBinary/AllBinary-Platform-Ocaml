(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "AndroidAPI1KeyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class androidAPI1KeyFactory () =
  object
    inherit AndroidKeyFactory.androidKeyFactory ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AndroidAPI1KeyFactory" (fun arguments -> Obj.repr (new androidAPI1KeyFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new androidAPI1KeyFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "AndroidAPI1KeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


