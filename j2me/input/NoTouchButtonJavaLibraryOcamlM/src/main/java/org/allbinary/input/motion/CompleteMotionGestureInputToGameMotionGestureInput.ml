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
(* package org.allbinary.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class completeMotionGestureInputToGameMotionGestureInput () =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method init () : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("No Touch Button = No Compound Motion Gestures", self, commonStrings#iNIT))))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "CompleteMotionGestureInputToGameMotionGestureInput" (fun arguments -> Obj.repr (new completeMotionGestureInputToGameMotionGestureInput (Obj.obj arguments)))

let instance = (new completeMotionGestureInputToGameMotionGestureInput ())
let get_instance () = instance
let () = java_register_static "CompleteMotionGestureInputToGameMotionGestureInput.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CompleteMotionGestureInputToGameMotionGestureInput.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


