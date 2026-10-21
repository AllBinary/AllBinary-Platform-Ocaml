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
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.ABHashtable *)

let nULL_AI : NullAI.nullAI ref = ref (((new NullAI.nullAI ()) :> NullAI.nullAI))
let get_nULL_AI () = !nULL_AI
let set_nULL_AI value' = nULL_AI := value'
let () = java_register_static "NullAIFactory.get_nULL_AI" (fun _ -> Obj.repr (get_nULL_AI ()))

(* Java overload getInstance() is not converted: OCaml has one method per name *)
class nullAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (_hashtable, _ownerLayerInterface, _gameInput) ->
        begin
        (!nULL_AI :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullAIFactory" (fun arguments -> Obj.repr (new nullAIFactory (Obj.obj arguments)))


