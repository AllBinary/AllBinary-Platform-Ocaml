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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]

class nullInitUpdatePaintable () =
  object
    inherit InitUpdatePaintable.initUpdatePaintable ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullInitUpdatePaintable" (fun arguments -> Obj.repr (new nullInitUpdatePaintable (Obj.obj arguments)))

let sINGLETON = (new nullInitUpdatePaintable ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NullInitUpdatePaintable.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : InitUpdatePaintable.initUpdatePaintable =
        begin
        (sINGLETON :> InitUpdatePaintable.initUpdatePaintable)
        end
let () = java_register_static "NullInitUpdatePaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


