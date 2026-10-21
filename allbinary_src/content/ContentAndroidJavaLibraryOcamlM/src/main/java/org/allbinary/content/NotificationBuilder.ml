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
(* package org.allbinary.content *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.NullParcelable *)
(* import javax.microedition.lcdui.Command *)
(* import android.app.PendingIntent *)
(* import android.content.Context *)
(* import android.os.Parcelable *)

class notificationBuilder () =
  object
    

    method build : 'any1 'any2 'any5 'return. 'any1 * 'any2 * string * int * 'any5 -> 'return = fun (_context, _command, (_message : string), (_integer : int), _pendingIntent) ->
        begin
        (Obj.magic ((NullParcelable.get_nULL_PARCELABLE ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NotificationBuilder" (fun arguments -> Obj.repr (new notificationBuilder (Obj.obj arguments)))

let nULL_NOTIFICATION_BUILDER = (new notificationBuilder ())
let get_nULL_NOTIFICATION_BUILDER () = nULL_NOTIFICATION_BUILDER
let () = java_register_static "NotificationBuilder.get_nULL_NOTIFICATION_BUILDER" (fun _ -> Obj.repr (get_nULL_NOTIFICATION_BUILDER ()))


