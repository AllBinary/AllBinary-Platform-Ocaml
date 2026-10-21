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
(* package org.allbinary.game.ag.ai.tactical *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.ag.ai.InputProbability *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.util.ABHashtable *)

class basicRandomAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (hashtable, ownerLayerInterface, gameInput) ->
        let hashtable = Obj.repr hashtable in
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        begin
        let visitor : Visitor.visitor ref = ref (((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (BasicAI.get_aI_VISITOR ()))))) :> Visitor.visitor)) in ();
        if (!visitor == (Obj.magic 0)) then begin
            raise (Failure ("No Visitor Provided"))
        end;
        let inputProbability : InputProbability.inputProbability ref = ref (((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (InputProbability.get_iNPUT_PROBABILITY ()))))) :> InputProbability.inputProbability)) in ();
        ((new BasicRandomAI.basicRandomAI ((Obj.magic ownerLayerInterface), (Obj.magic gameInput), !inputProbability, !visitor)) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicRandomAIFactory" (fun arguments -> Obj.repr (new basicRandomAIFactory (Obj.obj arguments)))


