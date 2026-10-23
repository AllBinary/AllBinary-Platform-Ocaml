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
(* import org.allbinary.layer.AllBinaryLayerManager *)

class scrollMapDownGameInputProcessor (scrollMapPlayerGameInput) =
  object (self)
    inherit ScrollMapGameInputProcessor.scrollMapGameInputProcessor (scrollMapPlayerGameInput)
    
    

    method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _gameKeyEvent) ->
        begin
        ignore ((self#scrollMapPlayerGameInput)#down ())
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ScrollMapDownGameInputProcessor" (fun arguments -> Obj.repr (new scrollMapDownGameInputProcessor (Obj.obj arguments)))


