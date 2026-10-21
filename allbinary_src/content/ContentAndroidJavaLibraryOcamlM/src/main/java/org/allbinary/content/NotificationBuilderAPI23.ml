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
(* import javax.microedition.lcdui.Command *)
(* import android.app.Notification *)
(* import android.app.Notification.Builder *)
(* import android.app.PendingIntent *)
(* import android.content.Context *)
(* import android.os.Parcelable *)

class notificationBuilderAPI23 () =
  object
    inherit NotificationBuilder.notificationBuilder ()
    

    method build : 'any1 'any2 'any5 'return. 'any1 * 'any2 * string * int * 'any5 -> 'return = fun (context, command, (message : string), (integer : int), pendingIntent) ->
        let context = Obj.repr context in
        let command = Obj.repr command in
        let pendingIntent = Obj.repr pendingIntent in
        begin
        let notification : Obj.t ref = ref ((Obj.repr ((((((((new Builder.builder ((Obj.magic context)))#setSmallIcon (integer))#setTicker (message))#setWhen ((Float.to_int (Unix.gettimeofday () *. 1000.0))))#setContentTitle (((Obj.magic command)#getLabel ())))#setContentText (message))#setContentIntent ((Obj.magic pendingIntent)))#build ()))) in ();
        (Obj.magic ((Obj.magic !notification)))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NotificationBuilderAPI23" (fun arguments -> Obj.repr (new notificationBuilderAPI23 (Obj.obj arguments)))


