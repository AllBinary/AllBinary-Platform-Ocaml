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

class comboSequenceAI ((artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit SequenceAI.sequenceAI (artificialIntelligenceInterface, ownerLayerInterface, gameInput) as super
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface.artificialIntelligenceInterface array ref = ref ((self#getArtificialIntelligenceInterface ())) in ();
        let size : int ref = ref ((Array.length !artificialIntelligenceInterfaceArray)) in ();
        for index = 0 to !size - 1 do
            ignore (self#setIndex (index));
            ignore (super#processAI ((Obj.magic allBinaryLayerManager)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ComboSequenceAI" (fun arguments -> Obj.repr (new comboSequenceAI (Obj.obj arguments)))


