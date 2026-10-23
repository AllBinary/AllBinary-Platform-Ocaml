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
[@@@warning "-20"]
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class special5GameInputInterfaceProcessor ((collidableDestroyableDamageableLayer : SpecialGameInputInterface.specialGameInputInterface)) =
  object (self)
    inherit SpecialGameInputInterfaceProcessor.specialGameInputInterfaceProcessor (collidableDestroyableDamageableLayer)
    
    

    method processEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayerManager, gameKeyEvent) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore ((self#specialGameInputInterface)#special5 ((Obj.magic allbinaryLayerManager), (Obj.magic gameKeyEvent)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "Special5GameInputInterfaceProcessor" (fun arguments -> Obj.repr (new special5GameInputInterfaceProcessor (Obj.obj arguments)))


