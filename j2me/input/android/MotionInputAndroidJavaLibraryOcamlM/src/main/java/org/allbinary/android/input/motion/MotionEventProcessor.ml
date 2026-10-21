(*

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
(* import android.view.MotionEvent *)

class motionEventProcessor () =
  object
    
    

    method process : 'any1. 'any1 -> unit = fun (_motionEvent) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MotionEventProcessor" (fun arguments -> Obj.repr (new motionEventProcessor (Obj.obj arguments)))


