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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonSeps *)

class mouseStrings () =
  object
    val mutable mOUSE_PRESSED : string = ""
    method mOUSE_PRESSED = mOUSE_PRESSED
    method set_mOUSE_PRESSED value' = mOUSE_PRESSED <- value'
    val mutable mOUSE_RELEASED : string = ""
    method mOUSE_RELEASED = mOUSE_RELEASED
    method set_mOUSE_RELEASED value' = mOUSE_RELEASED <- value'
    val mutable mOUSE_CLICKED : string = ""
    method mOUSE_CLICKED = mOUSE_CLICKED
    method set_mOUSE_CLICKED value' = mOUSE_CLICKED <- value'
    val mutable mOUSE_DRAGGED : string = ""
    method mOUSE_DRAGGED = mOUSE_DRAGGED
    method set_mOUSE_DRAGGED value' = mOUSE_DRAGGED <- value'
    val mutable mOUSE_MOVED : string = ""
    method mOUSE_MOVED = mOUSE_MOVED
    method set_mOUSE_MOVED value' = mOUSE_MOVED <- value'
    val mutable mOUSE_PRESSED_LABEL : string = ""
    method mOUSE_PRESSED_LABEL = mOUSE_PRESSED_LABEL
    method set_mOUSE_PRESSED_LABEL value' = mOUSE_PRESSED_LABEL <- value'
    val mutable mOUSE_RELEASED_LABEL : string = ""
    method mOUSE_RELEASED_LABEL = mOUSE_RELEASED_LABEL
    method set_mOUSE_RELEASED_LABEL value' = mOUSE_RELEASED_LABEL <- value'
    val mutable mOUSE_CLICKED_LABEL : string = ""
    method mOUSE_CLICKED_LABEL = mOUSE_CLICKED_LABEL
    method set_mOUSE_CLICKED_LABEL value' = mOUSE_CLICKED_LABEL <- value'
    val mutable mOUSE_DRAGGED_LABEL : string = ""
    method mOUSE_DRAGGED_LABEL = mOUSE_DRAGGED_LABEL
    method set_mOUSE_DRAGGED_LABEL value' = mOUSE_DRAGGED_LABEL <- value'
    val mutable mOUSE_MOVED_LABEL : string = ""
    method mOUSE_MOVED_LABEL = mOUSE_MOVED_LABEL
    method set_mOUSE_MOVED_LABEL value' = mOUSE_MOVED_LABEL <- value'

    initializer
      begin
        mOUSE_PRESSED <- "mousePressed";
        mOUSE_RELEASED <- "mouseReleased";
        mOUSE_CLICKED <- "mouseClicked";
        mOUSE_DRAGGED <- "mouseDragged";
        mOUSE_MOVED <- "mouseMoved";
        mOUSE_PRESSED_LABEL <- ("MousePressed" ^ java_string_of (Obj.repr ((CommonSeps.getInstance ())#cOLON_SEP)));
        mOUSE_RELEASED_LABEL <- ("MouseReleased" ^ java_string_of (Obj.repr ((CommonSeps.getInstance ())#cOLON_SEP)));
        mOUSE_CLICKED_LABEL <- ("MouseClicked" ^ java_string_of (Obj.repr ((CommonSeps.getInstance ())#cOLON_SEP)));
        mOUSE_DRAGGED_LABEL <- ("MouseDragged" ^ java_string_of (Obj.repr ((CommonSeps.getInstance ())#cOLON_SEP)));
        mOUSE_MOVED_LABEL <- ("MouseMoved" ^ java_string_of (Obj.repr ((CommonSeps.getInstance ())#cOLON_SEP)));
        ()
      end
  end
let () = java_register_constructor "MouseStrings" (fun arguments -> Obj.repr (new mouseStrings (Obj.obj arguments)))

let instance = (new mouseStrings ())
let get_instance () = instance
let () = java_register_static "MouseStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MouseStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


