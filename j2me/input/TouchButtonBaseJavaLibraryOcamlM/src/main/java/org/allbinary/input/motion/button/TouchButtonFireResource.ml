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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]

class touchButtonFireResource () =
  object
    inherit TouchButtonResource.touchButtonResource ("/touch_button_fire_64_by_64.png", "/touch_button_fire_hint_64_by_64.png")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TouchButtonFireResource" (fun arguments -> Obj.repr (new touchButtonFireResource (Obj.obj arguments)))

let instance : TouchButtonResource.touchButtonResource = ((new touchButtonFireResource ()) :> TouchButtonResource.touchButtonResource)
let get_instance () = instance
let () = java_register_static "TouchButtonFireResource.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : TouchButtonResource.touchButtonResource =
        begin
        (instance :> TouchButtonResource.touchButtonResource)
        end
let () = java_register_static "TouchButtonFireResource.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


