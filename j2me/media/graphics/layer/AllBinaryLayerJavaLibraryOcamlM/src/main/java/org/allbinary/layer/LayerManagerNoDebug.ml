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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]

class layerManagerNoDebug () =
  object
    inherit LayerManagerLoggingBase.layerManagerLoggingBase ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LayerManagerNoDebug" (fun arguments -> Obj.repr (new layerManagerNoDebug (Obj.obj arguments)))

let instance = (new layerManagerNoDebug ())
let get_instance () = instance
let () = java_register_static "LayerManagerNoDebug.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerManagerNoDebug.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


