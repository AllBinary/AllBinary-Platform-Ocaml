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
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.game.ai.BasicAI *)

class arrayAI ((artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable artificialIntelligenceInterfaceArray : ArtificialIntelligenceInterface.artificialIntelligenceInterface array = (Obj.magic 0)
    method artificialIntelligenceInterfaceArray = artificialIntelligenceInterfaceArray
    method set_artificialIntelligenceInterfaceArray value' = artificialIntelligenceInterfaceArray <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let size : int ref = ref ((Array.length artificialIntelligenceInterfaceArray)) in ();
        for index = 0 to !size - 1 do
            ignore (artificialIntelligenceInterfaceArray.(index)#processAI ((Obj.magic allBinaryLayerManager)))
        done
        end [@@warning "-7-20"]
    

    method getArtificialIntelligenceInterface () : ArtificialIntelligenceInterface.artificialIntelligenceInterface array =
        begin
        artificialIntelligenceInterfaceArray
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        artificialIntelligenceInterfaceArray <- artificialIntelligenceInterface
      end
  end
let () = java_register_constructor "ArrayAI" (fun arguments -> Obj.repr (new arrayAI (Obj.obj arguments)))


