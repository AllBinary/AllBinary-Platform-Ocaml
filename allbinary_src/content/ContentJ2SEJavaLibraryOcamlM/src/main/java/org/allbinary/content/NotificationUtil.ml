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
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.TsUtil *)

class notificationUtil () =
  object
    val mutable notificationManager : NotificationManager.notificationManager = (Obj.magic 0)
    method notificationManager = notificationManager
    method set_notificationManager value' = notificationManager <- value'
    

    method notify : 'any1. 'any1 * string * string -> unit = fun (command, (resource : string), (message : string)) ->
        let command = Obj.repr command in
        begin
        let context : Context.context ref = ref ((((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ()) :> Context.context)) in ();
        let intent : Intent.intent ref = ref ((((Obj.magic (java_call_static "CommandUriAction.getInstance" (Obj.repr ())))#getIntent ((Obj.magic command))) :> Intent.intent)) in ();
        let integer : int ref = ref (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceId (resource))) in ();
        let notification : Notification.notification ref = ref (((new Notification.notification (!integer, message, (Float.to_int (Unix.gettimeofday () *. 1000.0)))) :> Notification.notification)) in ();
        let pendingIntent : PendingIntent.pendingIntent ref = ref (((PendingIntent.getActivity (!context, 0, !intent, 0)) :> PendingIntent.pendingIntent)) in ();
        ignore (!notification#setLatestEventInfo (!context, ((Obj.magic command)#getLabel ()), message, !pendingIntent));
        ignore (notificationManager#notify (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode ((Obj.magic command))), !notification))
        end [@@warning "-20"]

    initializer
      begin
        notificationManager <- ((Obj.magic (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())#getSystemService ((Context.get_nOTIFICATION_SERVICE ())))) :> NotificationManager.notificationManager);
        ()
      end
  end
let () = java_register_constructor "NotificationUtil" (fun arguments -> Obj.repr (new notificationUtil (Obj.obj arguments)))

let sINGLETON = (new notificationUtil ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NotificationUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NotificationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


