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
(* package org.allbinary.android.api16 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.view.View *)
(* import org.allbinary.android.api5.ActivityFractureUtilAPI5 *)

class activityFractureUtilAPI16 () =
  object
    inherit ActivityFractureUtilAPI5.activityFractureUtilAPI5 ()
    

    method setFullScreen : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        let decorView : Obj.t ref = ref ((Obj.repr (((Obj.magic activity)#getWindow ())#getDecorView ()))) in ();
        let visibility : int ref = ref (((View.get_sYSTEM_UI_FLAG_HIDE_NAVIGATION ()) lor (View.get_sYSTEM_UI_FLAG_FULLSCREEN ()))) in ();
        ignore ((Obj.magic !decorView)#setSystemUiVisibility (!visibility))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureUtilAPI16" (fun arguments -> Obj.repr (new activityFractureUtilAPI16 (Obj.obj arguments)))

let instance16 = (new activityFractureUtilAPI16 ())
let get_instance16 () = instance16
let () = java_register_static "ActivityFractureUtilAPI16.get_instance16" (fun _ -> Obj.repr (get_instance16 ()))

let getInstance () =
        begin
        instance16
        end
let () = java_register_static "ActivityFractureUtilAPI16.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


