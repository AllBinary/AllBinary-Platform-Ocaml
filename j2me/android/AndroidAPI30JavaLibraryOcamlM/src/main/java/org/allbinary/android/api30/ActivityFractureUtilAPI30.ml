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
(* package org.allbinary.android.api30 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.view.Window *)
(* import androidx.core.view.WindowCompat *)
(* import androidx.core.view.WindowInsetsCompat *)
(* import androidx.core.view.WindowInsetsControllerCompat *)
(* import org.allbinary.android.api5.ActivityFractureUtilAPI5 *)

class activityFractureUtilAPI30 () =
  object
    inherit ActivityFractureUtilAPI5.activityFractureUtilAPI5 ()
    

    method setFullScreen : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        let window : Obj.t ref = ref ((Obj.repr ((Obj.magic activity)#getWindow ()))) in ();
        let windowInsetsController : Obj.t ref = ref ((Obj.repr (WindowCompat.getInsetsController ((Obj.magic !window), ((Obj.magic !window)#getDecorView ()))))) in ();
        ignore ((Obj.magic !windowInsetsController)#hide (((WindowInsetsCompat.get_type_ ())#systemBars ())));
        ignore ((Obj.magic !windowInsetsController)#setSystemBarsBehavior ((WindowInsetsControllerCompat.get_bEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE ())))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureUtilAPI30" (fun arguments -> Obj.repr (new activityFractureUtilAPI30 (Obj.obj arguments)))

let instance30 = (new activityFractureUtilAPI30 ())
let get_instance30 () = instance30
let () = java_register_static "ActivityFractureUtilAPI30.get_instance30" (fun _ -> Obj.repr (get_instance30 ()))

let getInstance () =
        begin
        instance30
        end
let () = java_register_static "ActivityFractureUtilAPI30.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


