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
[@@@warning "-20"]
(* import org.allbinary.android.AndroidInfoFactory *)
(* import org.allbinary.android.input.api1.VirtualKeyboardAPI1 *)
(* import org.allbinary.android.input.api3.VirtualKeyboardAPI3 *)
(* import android.app.Activity *)

let virtualKeyboard : VirtualKeyboard.virtualKeyboard ref = ref (((VirtualKeyboard.get_nULL_VIRTUAL_KEYBOARD ()) :> VirtualKeyboard.virtualKeyboard))
let get_virtualKeyboard () = !virtualKeyboard
let set_virtualKeyboard value' = virtualKeyboard := value'
let () = java_register_static "VirtualKeyboardFactory.get_virtualKeyboard" (fun _ -> Obj.repr (get_virtualKeyboard ()))

let init : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION <= 2) then begin
            virtualKeyboard := (new VirtualKeyboardAPI1.virtualKeyboardAPI1 ((Obj.magic activity)))
        end else begin
            virtualKeyboard := (new VirtualKeyboardAPI3.virtualKeyboardAPI3 ((Obj.magic activity)))
        end
        end [@@warning "-20"]

and getInstance () : VirtualKeyboard.virtualKeyboard =
        begin
        (!virtualKeyboard :> VirtualKeyboard.virtualKeyboard)
        end

let () = java_register_static "VirtualKeyboardFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "VirtualKeyboardFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class virtualKeyboardFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "VirtualKeyboardFactory" (fun arguments -> Obj.repr (new virtualKeyboardFactory (Obj.obj arguments)))


