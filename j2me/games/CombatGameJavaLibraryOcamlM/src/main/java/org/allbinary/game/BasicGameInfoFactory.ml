(* Generated Code Do Not Modify *)
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]

class basicGameInfoFactory () =
  object
    val mutable currentReleaseIndex : int = 0
    method currentReleaseIndex = currentReleaseIndex
    method set_currentReleaseIndex value' = currentReleaseIndex <- value'
    val mutable currentDestroyIndex : int = 0
    method currentDestroyIndex = currentDestroyIndex
    method set_currentDestroyIndex value' = currentDestroyIndex <- value'
    val mutable total : int = 0
    method total = total
    method set_total value' = total <- value'
    
    

    method init ((total_arg : int)) : unit =
        begin
        currentReleaseIndex <- 0;
        currentDestroyIndex <- 0;
        total <- total_arg
        end
    

    method isPeaked () : bool =
        try
        begin
        if (currentDestroyIndex >= total) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method howManyLeft () : int =
        begin
        (total - currentDestroyIndex)
        end

    initializer
      begin
        currentReleaseIndex <- 0;
        currentDestroyIndex <- 0;
        total <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "BasicGameInfoFactory" (fun arguments -> Obj.repr (new basicGameInfoFactory (Obj.obj arguments)))

let sINGLETON = (new basicGameInfoFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "BasicGameInfoFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "BasicGameInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


