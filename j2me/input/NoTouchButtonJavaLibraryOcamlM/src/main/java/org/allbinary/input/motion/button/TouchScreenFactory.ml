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
[@@@warning "-20"]

class touchScreenFactory () =
  object
    val mutable multiTouch : bool = false
    method multiTouch = multiTouch
    method set_multiTouch value' = multiTouch <- value'
    val mutable touch : bool = false
    method touch = touch
    method set_touch value' = touch <- value'
    val mutable touchScreenType : TouchScreenType.touchScreenType = (Obj.magic 0)
    method touchScreenType = touchScreenType
    method set_touchScreenType value' = touchScreenType <- value'
    
    

    method isMultiTouch () : bool =
        begin
        multiTouch
        end
    

    method setTouch ((_touch_arg : bool)) : unit =
        begin
        ()
        end
    

    method isTouch () : bool =
        begin
        touch
        end
    

    method getTouchScreenType () : TouchScreenType.touchScreenType =
        begin
        (touchScreenType :> TouchScreenType.touchScreenType)
        end

    initializer
      begin
        multiTouch <- false;
        touch <- false;
        touchScreenType <- ((TouchScreenTypesFactory.getInstance ())#nOTOUCH :> TouchScreenType.touchScreenType);
        ();
        ()
      end
  end
let () = java_register_constructor "TouchScreenFactory" (fun arguments -> Obj.repr (new touchScreenFactory (Obj.obj arguments)))

let sINGLETON = (new touchScreenFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "TouchScreenFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "TouchScreenFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


