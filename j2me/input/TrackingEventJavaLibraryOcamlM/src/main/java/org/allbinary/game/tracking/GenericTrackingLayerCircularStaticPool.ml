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
(* package org.allbinary.game.tracking *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayerCircularPool *)

class genericTrackingLayerCircularStaticPool () =
  object
    inherit AllBinaryLayerCircularPool.allBinaryLayerCircularPool ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericTrackingLayerCircularStaticPool" (fun arguments -> Obj.repr (new genericTrackingLayerCircularStaticPool (Obj.obj arguments)))

let sINGLETON = ref ((new genericTrackingLayerCircularStaticPool ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "GenericTrackingLayerCircularStaticPool.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "GenericTrackingLayerCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


