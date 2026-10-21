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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.util.BasicArrayListD *)

class noPlayerGameInput () =
  object
    inherit PlayerGameInput.playerGameInput ((new BasicArrayListD.basicArrayListD ()), (new BasicArrayListD.basicArrayListD ()), (-1))
    
    

    method onDownGameKeyEvent : 'any1. 'any1 -> unit = fun (_gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onUpGameKeyEvent : 'any1. 'any1 -> unit = fun (_gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoPlayerGameInput" (fun arguments -> Obj.repr (new noPlayerGameInput (Obj.obj arguments)))

let sINGLETON = (new noPlayerGameInput ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NoPlayerGameInput.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NoPlayerGameInput.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


