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
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.ag.ai.InputProbability *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)

class basicRandomAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput), (inputProbability_arg : InputProbability.inputProbability), (visitor_arg : Visitor.visitor)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable i_random : int = 0
    method i_random = i_random
    method set_i_random value' = i_random <- value'
    val mutable inputProbability : InputProbability.inputProbability = (Obj.magic 0)
    method inputProbability = inputProbability
    method set_inputProbability value' = inputProbability <- value'
    val mutable visitor : Visitor.visitor = (Obj.magic 0)
    method visitor = visitor
    method set_visitor value' = visitor <- value'
    val mutable keyArray : int array = (Obj.magic 0)
    method keyArray = keyArray
    method set_keyArray value' = keyArray <- value'
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        if ((inputProbability#getTimeDelayHelper ())#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            i_random <- (myRandomFactory#getAbsoluteNextInt ((inputProbability#getMax ())));
            let repeat : bool ref = ref (false) in ();
            let repeatLikelyhoodIntegerArray : int array ref = ref ((inputProbability#getRepeatLikelyhoodIntegerArray ())) in ();
            if (((self#getLastKey ()) != (-1)) && ((!repeatLikelyhoodIntegerArray.((self#getLastKey ()))#intValue ()) >= i_random)) then begin
                repeat := true
            end;
            if (not !repeat) then begin
                let likelyhoodIntegerArray : int array array ref = ref ((inputProbability#getLikelyhoodIntegerArray ())) in ();
                i_random <- (myRandomFactory#getAbsoluteNextInt ((inputProbability#getMax ())));
                let size : int ref = ref ((Array.length keyArray)) in ();
                let likelyhoodIntegerKeyArray : int array ref = ref ((Obj.magic 0)) in ();
                for index = 0 to !size - 1 do
                    let key : int ref = ref (keyArray.(index)) in ();
                    likelyhoodIntegerKeyArray := !likelyhoodIntegerArray.(!key);
                    if (((Array.length !likelyhoodIntegerArray) >= !key) && (!likelyhoodIntegerKeyArray.(0) != (Obj.magic 0))) then begin
                        if ((i_random >= (!likelyhoodIntegerKeyArray.(0)#intValue ())) && (i_random < (!likelyhoodIntegerKeyArray.(1)#intValue ()))) then begin
                            ignore (self#setLastKey (!key));
                            raise Java_break
                        end
                    end
                done
            end;
            ignore (visitor#visit (self))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        i_random <- 0;
        ();
        ();
        keyArray <- [| (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))) |];
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        ();
        (* super(...) is the inherit clause *) ();
        inputProbability <- inputProbability_arg;
        visitor <- visitor_arg
      end
  end
let () = java_register_constructor "BasicRandomAI" (fun arguments -> Obj.repr (new basicRandomAI (Obj.obj arguments)))


