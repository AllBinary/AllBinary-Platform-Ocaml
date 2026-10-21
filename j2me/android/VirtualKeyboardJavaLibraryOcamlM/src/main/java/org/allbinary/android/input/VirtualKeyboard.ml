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
(* package org.allbinary.android.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.event.VirtualKeyboardEvent *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class virtualKeyboard () =
  object (self)
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onVirtualKeyboardEvent : 'any1. 'any1 -> unit = fun (_virtualKeyboardEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method forceHide () : unit =
        begin
        ()
        end
    

    method hide () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "VirtualKeyboard" (fun arguments -> Obj.repr (new virtualKeyboard (Obj.obj arguments)))

let nULL_VIRTUAL_KEYBOARD = (new virtualKeyboard ())
let get_nULL_VIRTUAL_KEYBOARD () = nULL_VIRTUAL_KEYBOARD
let () = java_register_static "VirtualKeyboard.get_nULL_VIRTUAL_KEYBOARD" (fun _ -> Obj.repr (get_nULL_VIRTUAL_KEYBOARD ()))


