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
(* package org.allbinary.android.input.api1 *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.android.input.VirtualKeyboard *)
(* import org.allbinary.input.event.VirtualKeyboardEventListenerInterface *)
(* import android.app.Activity *)

let mIN_API : int ref = ref (1)
let get_mIN_API () = !mIN_API
let set_mIN_API value' = mIN_API := value'
let () = java_register_static "VirtualKeyboardAPI1.get_mIN_API" (fun _ -> Obj.repr (get_mIN_API ()))
let mAX_API : int ref = ref (2)
let get_mAX_API () = !mAX_API
let set_mAX_API value' = mAX_API := value'
let () = java_register_static "VirtualKeyboardAPI1.get_mAX_API" (fun _ -> Obj.repr (get_mAX_API ()))
class virtualKeyboardAPI1 (_activity) =
  object
    inherit VirtualKeyboard.virtualKeyboard ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "VirtualKeyboardAPI1" (fun arguments -> Obj.repr (new virtualKeyboardAPI1 (Obj.obj arguments)))


