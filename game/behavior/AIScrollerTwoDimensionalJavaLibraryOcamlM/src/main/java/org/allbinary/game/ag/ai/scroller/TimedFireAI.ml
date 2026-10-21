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
(* package org.allbinary.game.ag.ai.scroller *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

let tIME : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (1))
let get_tIME () = tIME
let () = java_register_static "TimedFireAI.get_tIME" (fun _ -> Obj.repr (get_tIME ()))
class timedFireAI ((delay_arg : int), (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable maxFireDelayTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method maxFireDelayTimeHelper = maxFireDelayTimeHelper
    method set_maxFireDelayTimeHelper value' = maxFireDelayTimeHelper <- value'
    val mutable delay : int = 0
    method delay = delay
    method set_delay value' = delay <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let timeFiredInterface : TimeFiredInterface.timeFiredInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> TimeFiredInterface.timeFiredInterface)) in ();
        if ((maxFireDelayTimeHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) && (((!timeFiredInterface#getLastFireTime ()) + maxFireDelayTimeHelper#delay) < (maxFireDelayTimeHelper#getStartTime ()))) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))));
            maxFireDelayTimeHelper#set_delay (delay)
        end
        end [@@warning "-7-20"]

    initializer
      begin
        maxFireDelayTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        delay <- delay_arg
      end
  end
let () = java_register_constructor "TimedFireAI" (fun arguments -> Obj.repr (new timedFireAI (Obj.obj arguments)))


