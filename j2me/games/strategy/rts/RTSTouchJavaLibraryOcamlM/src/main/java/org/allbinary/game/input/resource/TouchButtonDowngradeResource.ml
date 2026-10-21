(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.resource *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.motion.button.TouchButtonBlankResource *)
(* import org.allbinary.input.motion.button.TouchButtonResource *)

class touchButtonDowngradeResource () =
  object
    inherit TouchButtonResource.touchButtonResource ("/touch_button_downgrade_64_by_64.png", "/touch_button_downgrade_hint_64_by_64.png")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TouchButtonDowngradeResource" (fun arguments -> Obj.repr (new touchButtonDowngradeResource (Obj.obj arguments)))

let instance : TouchButtonResource.touchButtonResource = ((new touchButtonDowngradeResource ()) :> TouchButtonResource.touchButtonResource)
let get_instance () = instance
let () = java_register_static "TouchButtonDowngradeResource.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : TouchButtonResource.touchButtonResource =
        begin
        (instance :> TouchButtonResource.touchButtonResource)
        end
let () = java_register_static "TouchButtonDowngradeResource.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


