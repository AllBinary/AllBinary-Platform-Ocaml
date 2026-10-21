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
(* package org.allbinary.game.ag.ai.sequence *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class numberLayersSequenceAI ((numberOfEnemiesLeft : int), (artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit SequenceAI.sequenceAI (artificialIntelligenceInterface, ownerLayerInterface, gameInput) as super
    val mutable numberOfLayersLeft : int = 0
    method numberOfLayersLeft = numberOfLayersLeft
    method set_numberOfLayersLeft value' = numberOfLayersLeft <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if ((self#getIndex ()) == 0) then begin
            if (((Obj.magic allBinaryLayerManager)#getSize ()) < numberOfLayersLeft) then begin
                ignore (self#setIndex (1))
            end
        end;
        ignore (super#processAI ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        numberOfLayersLeft <- numberOfEnemiesLeft
      end
  end
let () = java_register_constructor "NumberLayersSequenceAI" (fun arguments -> Obj.repr (new numberLayersSequenceAI (Obj.obj arguments)))


