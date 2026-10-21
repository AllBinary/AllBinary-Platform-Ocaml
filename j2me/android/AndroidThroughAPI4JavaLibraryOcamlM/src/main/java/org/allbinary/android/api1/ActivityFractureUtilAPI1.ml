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
(* package org.allbinary.android.api1 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.ActivityFractureUtil *)
(* import android.app.Activity *)
(* import android.view.WindowManager *)

class activityFractureUtilAPI1 () =
  object
    inherit ActivityFractureUtil.activityFractureUtil ()
    

    method process : 'any1. 'any1 -> unit = fun (_activity) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setFullScreen : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        ignore (((Obj.magic activity)#getWindow ())#setFlags ((WindowManager.get_layoutParams ())#fLAG_FULLSCREEN, (WindowManager.get_layoutParams ())#fLAG_FULLSCREEN))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ActivityFractureUtilAPI1" (fun arguments -> Obj.repr (new activityFractureUtilAPI1 (Obj.obj arguments)))

let instance = (new activityFractureUtilAPI1 ())
let get_instance () = instance
let () = java_register_static "ActivityFractureUtilAPI1.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ActivityFractureUtilAPI1.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


