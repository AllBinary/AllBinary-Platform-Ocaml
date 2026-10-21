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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class specialAnalogLeftGameInputProcessor ((collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) =
  object
    inherit SpecialGameInputProcessor.specialGameInputProcessor (collidableDestroyableDamageableLayer)
    
    

    method processAnalog : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_allbinaryLayerManager, _gameKeyEvent, (xAnalogValue : int)) ->
        begin
        ignore (collidableDestroyableDamageableLayer#leftAnalog (xAnalogValue))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SpecialAnalogLeftGameInputProcessor" (fun arguments -> Obj.repr (new specialAnalogLeftGameInputProcessor (Obj.obj arguments)))


