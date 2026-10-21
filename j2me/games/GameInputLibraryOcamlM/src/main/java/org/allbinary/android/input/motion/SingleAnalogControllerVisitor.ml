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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.analog.AnalogLocationInput *)
(* import org.allbinary.game.input.analog.AnalogLocationInputFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class singleAnalogControllerVisitor ((playerInputId_arg : int)) =
  object
    inherit AnalogControllerVisitor.analogControllerVisitor ()
    val mutable playerInputId : int = 0
    method playerInputId = playerInputId
    method set_playerInputId value' = playerInputId <- value'
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayerManager, analogLocationInputProcessor) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let analogLocationInputProcessor = Obj.repr analogLocationInputProcessor in
        begin
        let analogLocationInput : AnalogLocationInput.analogLocationInput ref = ref ((((AnalogLocationInputFactory.getInstance ())#getInstanceForPlayer (playerInputId)) :> AnalogLocationInput.analogLocationInput)) in ();
        ignore ((Obj.magic analogLocationInputProcessor)#process ((Obj.magic allbinaryLayerManager), !analogLocationInput))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        playerInputId <- playerInputId_arg
      end
  end
let () = java_register_constructor "SingleAnalogControllerVisitor" (fun arguments -> Obj.repr (new singleAnalogControllerVisitor (Obj.obj arguments)))


