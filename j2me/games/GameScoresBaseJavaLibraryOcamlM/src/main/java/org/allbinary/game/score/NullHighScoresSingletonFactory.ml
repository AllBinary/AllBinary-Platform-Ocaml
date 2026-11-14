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
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)

let sINGLETON_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_sINGLETON : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !sINGLETON_cell with Lazy.Undefined -> java_null)
let set_sINGLETON value' = sINGLETON_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "NullHighScoresSingletonFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
let () = java_register_static "NullHighScoresSingletonFactory.set_sINGLETON" (fun value' -> set_sINGLETON value'; Obj.repr ())
class nullHighScoresSingletonFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullHighScoresSingletonFactory" (fun arguments -> Obj.repr (new nullHighScoresSingletonFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_sINGLETON ()))))
        end
let () = java_register_static "NullHighScoresSingletonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = sINGLETON_cell := lazy (Obj.repr ((Obj.obj (java_new "HighScores" (Obj.repr ((CommonStrings.getInstance ())#lOADING, "High Scores Not Loaded", (CommonStrings.getInstance ())#pERIODS))))))


