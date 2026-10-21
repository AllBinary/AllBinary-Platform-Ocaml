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
(* package org.allbinary.game.input.motion.action *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class gameKeyCompleteMotionGestureInputEventFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable eventList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method eventList = eventList
    method set_eventList value' = eventList <- value'
    

    method add : 'any1. 'any1 -> unit = fun (gameKeyCompleteMotionGestureInputEvent) ->
        let gameKeyCompleteMotionGestureInputEvent = Obj.repr gameKeyCompleteMotionGestureInputEvent in
        begin
        ignore (eventList#add ((Obj.magic gameKeyCompleteMotionGestureInputEvent)))
        end [@@warning "-20"]
    

    method updateAll () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#appendint ((eventList#size ()))))), self, "updateAll"));
        for index = ((eventList#size ()) - 1) downto 0 do
            let gameKeyCompleteMotionGestureInputEvent : Obj.t ref = ref ((Obj.repr (Obj.magic eventList#objectArray.(index)))) in ();
            ignore ((Obj.magic !gameKeyCompleteMotionGestureInputEvent)#update ())
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        eventList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameKeyCompleteMotionGestureInputEventFactory" (fun arguments -> Obj.repr (new gameKeyCompleteMotionGestureInputEventFactory (Obj.obj arguments)))

let sINGLETON = (new gameKeyCompleteMotionGestureInputEventFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "GameKeyCompleteMotionGestureInputEventFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "GameKeyCompleteMotionGestureInputEventFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


