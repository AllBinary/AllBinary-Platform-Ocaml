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
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.ABHashtable *)

class keyPressesAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (hashtable, ownerLayerInterface, gameInput) ->
        let hashtable = Obj.repr hashtable in
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        try
        begin
        let isSingleKeyProcessing : bool ref = ref (((InputFeatureFactory.getInstance ())#isSingleKeyProcessing ())) in ();
        if !isSingleKeyProcessing then begin
            raise (Java_return (Obj.repr ((new KeyPressesAI.keyPressesAI ((Obj.magic hashtable), (Obj.magic ownerLayerInterface), (Obj.magic gameInput))))))
        end else begin
            raise (Java_return (Obj.repr ((new MultiKeyPressesAI.multiKeyPressesAI ((Obj.magic hashtable), (Obj.magic ownerLayerInterface), (Obj.magic gameInput))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "KeyPressesAIFactory" (fun arguments -> Obj.repr (new keyPressesAIFactory (Obj.obj arguments)))


