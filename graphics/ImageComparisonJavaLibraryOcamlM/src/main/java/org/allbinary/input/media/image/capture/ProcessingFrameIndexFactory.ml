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
(* package org.allbinary.input.media.image.capture *)

open Allbinary_java [@@warning "-33"]

let currentFrame : int ref = ref (0)
let get_currentFrame () = !currentFrame
let set_currentFrame value' = currentFrame := value'
let () = java_register_static "ProcessingFrameIndexFactory.get_currentFrame" (fun _ -> Obj.repr (get_currentFrame ()))

let next () : int =
        begin
        (let value = !currentFrame in currentFrame := !currentFrame + 1; value)
        end

let () = java_register_static "ProcessingFrameIndexFactory.next" (fun arguments -> Obj.repr (next (Obj.obj arguments)))
class processingFrameIndexFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ProcessingFrameIndexFactory" (fun arguments -> Obj.repr (new processingFrameIndexFactory (Obj.obj arguments)))


