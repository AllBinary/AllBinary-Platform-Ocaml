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
[@@@warning "-20"]

class scrollMapGameInputProcessor (scrollMapPlayerGameInput_arg) =
  object
    inherit GameInputProcessor.gameInputProcessor ()
    val mutable scrollMapPlayerGameInput : Obj.t = Obj.repr 0
    method scrollMapPlayerGameInput : 'r. 'r = Obj.magic scrollMapPlayerGameInput
    method set_scrollMapPlayerGameInput : 'v. 'v -> unit = fun value' -> scrollMapPlayerGameInput <- Obj.repr value'
    

    initializer
      begin
        ();
        ();
        scrollMapPlayerGameInput <- Obj.repr (scrollMapPlayerGameInput_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScrollMapGameInputProcessor" (fun arguments -> Obj.repr (new scrollMapGameInputProcessor (Obj.obj arguments)))


