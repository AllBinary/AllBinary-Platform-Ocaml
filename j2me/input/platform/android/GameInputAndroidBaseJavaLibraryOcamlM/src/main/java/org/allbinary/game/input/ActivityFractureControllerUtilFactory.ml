(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.android.AndroidInfoFactory *)


let getInstance () : AndroidKeyFactory.androidKeyFactory =
        try
        begin
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION <= 8) then begin
            raise (Java_return (Obj.repr ((AndroidAPI1KeyFactory.getInstance ()))))
        end else if (!sDK_VERSION <= 11) then begin
            raise (Java_return (Obj.repr ((AndroidAPI9KeyFactory.getInstance ()))))
        end else begin
            raise (Java_return (Obj.repr ((AndroidAPI12KeyFactory.getAPI12Instance ()))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "ActivityFractureControllerUtilFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class activityFractureControllerUtilFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureControllerUtilFactory" (fun arguments -> Obj.repr (new activityFractureControllerUtilFactory (Obj.obj arguments)))


