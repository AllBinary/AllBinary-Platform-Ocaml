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
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class spinnerAI ((direction_arg : int array), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable isEven : bool = false
    method isEven = isEven
    method set_isEven value' = isEven <- value'
    val mutable direction : int array = (Obj.magic 0)
    method direction = direction
    method set_direction value' = direction <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        if isEven then begin
            ignore (super#processKeyAI (direction.(0)));
            isEven <- false
        end else begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))));
            isEven <- true
        end
        end [@@warning "-7-20"]

    initializer
      begin
        isEven <- false;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        direction <- direction_arg
      end
  end
let () = java_register_constructor "SpinnerAI" (fun arguments -> Obj.repr (new spinnerAI (Obj.obj arguments)))


