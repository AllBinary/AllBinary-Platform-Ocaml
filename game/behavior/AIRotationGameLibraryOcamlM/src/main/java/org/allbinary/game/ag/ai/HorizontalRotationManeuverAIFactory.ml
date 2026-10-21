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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.ABHashtable *)

class horizontalRotationManeuverAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (_hashtable, ownerLayerInterface, gameInput) ->
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        begin
        ((new HorizontaRotationManeuverAI.horizontaRotationManeuverAI ((Obj.magic ownerLayerInterface), (Obj.magic gameInput))) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HorizontalRotationManeuverAIFactory" (fun arguments -> Obj.repr (new horizontalRotationManeuverAIFactory (Obj.obj arguments)))


