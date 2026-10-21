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

class touchButtonsBuilderFactory () =
  object
    

    method getInstance () : BaseTouchInput.baseTouchInput =
        begin
        ((NoButtonsTouchInputFactory.getInstance ()) :> BaseTouchInput.baseTouchInput)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchButtonsBuilderFactory" (fun arguments -> Obj.repr (new touchButtonsBuilderFactory (Obj.obj arguments)))

let nO_TOUCH_BUTTON_BUILDER_FACTORY = (new touchButtonsBuilderFactory ())
let get_nO_TOUCH_BUTTON_BUILDER_FACTORY () = nO_TOUCH_BUTTON_BUILDER_FACTORY
let () = java_register_static "TouchButtonsBuilderFactory.get_nO_TOUCH_BUTTON_BUILDER_FACTORY" (fun _ -> Obj.repr (get_nO_TOUCH_BUTTON_BUILDER_FACTORY ()))


