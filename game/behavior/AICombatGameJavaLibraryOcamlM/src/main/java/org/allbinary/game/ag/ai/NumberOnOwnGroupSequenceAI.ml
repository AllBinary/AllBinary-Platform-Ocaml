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
(* import org.allbinary.game.ag.ai.sequence.SequenceAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.layer.identification.GroupLayerManagerListener *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class numberOnOwnGroupSequenceAI ((numberOnSameTeam_arg : int array), (artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit SequenceAI.sequenceAI (artificialIntelligenceInterface, ownerLayerInterface, gameInput) as super
    val mutable numberOnSameTeam : int array = (Obj.magic 0)
    method numberOnSameTeam = numberOnSameTeam
    method set_numberOnSameTeam value' = numberOnSameTeam <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let index : int ref = ref ((self#getIndex ())) in ();
        if ((Array.length numberOnSameTeam) > !index) then begin
            let size : int ref = ref (((GroupLayerManagerListener.getInstance ())#getGroupSizeFromInterface (!layerInterface))) in ();
            if ((numberOnSameTeam.(!index)#intValue ()) > !size) then begin
                ignore (self#next ())
            end
        end;
        ignore (super#processAI ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        numberOnSameTeam <- numberOnSameTeam_arg
      end
  end
let () = java_register_constructor "NumberOnOwnGroupSequenceAI" (fun arguments -> Obj.repr (new numberOnOwnGroupSequenceAI (Obj.obj arguments)))


