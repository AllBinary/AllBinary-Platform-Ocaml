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
(* package org.allbinary.game.input.mapping.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class inputMappingEvent ((anyType : Obj.t)) =
  object
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    
    

    method setInputToGameKeyMapping : 'any1. 'any1 -> unit = fun (inputToGameKeyMapping_arg) ->
        let inputToGameKeyMapping_arg = Obj.repr inputToGameKeyMapping_arg in
        begin
        inputToGameKeyMapping <- (Obj.magic inputToGameKeyMapping_arg)
        end [@@warning "-7-20"]
    

    method getInputToGameKeyMapping () : InputToGameKeyMapping.inputToGameKeyMapping =
        begin
        (inputToGameKeyMapping :> InputToGameKeyMapping.inputToGameKeyMapping)
        end [@@warning "-7"]

    initializer
      begin
        inputToGameKeyMapping <- ((InputToGameKeyMapping.getNullInstance ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "InputMappingEvent" (fun arguments -> Obj.repr (new inputMappingEvent (Obj.obj arguments)))


