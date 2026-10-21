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

class motionRecognizer () =
  object
    

    method processStartMotionEvent ((_x : int), (_y : int), (_deviceId : int), (_modifiers : int)) : unit =
        begin
        ()
        end
    

    method processEndMotionEvent ((_x : int), (_y : int), (_deviceId : int), (_modifiers : int)) : unit =
        begin
        ()
        end
    

    method processDraggedMotionEvent ((_x : int), (_y : int), (_deviceId : int), (_modifiers : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MotionRecognizer" (fun arguments -> Obj.repr (new motionRecognizer (Obj.obj arguments)))


