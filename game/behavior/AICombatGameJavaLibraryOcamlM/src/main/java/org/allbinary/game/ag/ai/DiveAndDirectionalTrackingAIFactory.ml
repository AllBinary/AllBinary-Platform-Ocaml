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
(* import org.allbinary.game.ag.ai.tactical.BasicRandomAIFactory *)
(* import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.util.ABHashtable *)

class diveAndDirectionalTrackingAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (hashtable, ownerLayerInterface, gameInput) ->
        let hashtable = Obj.repr hashtable in
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        begin
        let visitorCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get ((Obj.magic (BasicAI.get_aI_VISITOR ())))))) in ();
        if (!visitorCanBeNull == (Obj.magic 0)) then begin
            visitorCanBeNull := (ThrustAIVisitorFactory.getInstance ())
        end;
        let hashtable2 : Obj.t ref = ref ((Obj.repr ((new BasicProbabilityAIDataFactory.basicProbabilityAIDataFactory ())#getInstance ()))) in ();
        ignore ((Obj.magic !hashtable2)#put ((BasicAI.get_aI_VISITOR ()), (LastKeyAIVisitorFactory.getInstance ())));
        let artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface ref = ref ((((new BasicRandomAIFactory.basicRandomAIFactory ())#getInstance ((Obj.magic !hashtable2), (Obj.magic ownerLayerInterface), (Obj.magic gameInput))) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)) in ();
        ((new DiveAndDirectionalTrackingAI.diveAndDirectionalTrackingAI ((Obj.magic ownerLayerInterface), !artificialIntelligenceInterface, (Obj.magic gameInput), (Obj.magic !visitorCanBeNull))) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DiveAndDirectionalTrackingAIFactory" (fun arguments -> Obj.repr (new diveAndDirectionalTrackingAIFactory (Obj.obj arguments)))


