(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]

class noScoreable () =
  object
    inherit Scoreable.scoreable (0)
    
    

    method addPoints ((_points : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method removePoints ((_points : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoScoreable" (fun arguments -> Obj.repr (new noScoreable (Obj.obj arguments)))

let sINGLETON = (new noScoreable ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NoScoreable.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NoScoreable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


