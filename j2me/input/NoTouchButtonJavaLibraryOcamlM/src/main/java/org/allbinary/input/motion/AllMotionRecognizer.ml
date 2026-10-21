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

let index : int ref = ref (0)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "AllMotionRecognizer.get_index" (fun _ -> Obj.repr (get_index ()))
class allMotionRecognizer () =
  object
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

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
    

    method processMovedMotionEvent ((_x : int), (_y : int), (_deviceId : int), (_modifiers : int)) : unit =
        begin
        ()
        end
    

    method processScrolledMotionEvent ((_x : int), (_y : int), (_deviceId : int), (_modifiers : int)) : unit =
        begin
        ()
        end
    

    method getId () : int =
        begin
        id
        end

    initializer
      begin
        ();
        ();
        id <- (let value = !index in index := !index + 1; value)
      end
  end
let () = java_register_constructor "AllMotionRecognizer" (fun arguments -> Obj.repr (new allMotionRecognizer (Obj.obj arguments)))


