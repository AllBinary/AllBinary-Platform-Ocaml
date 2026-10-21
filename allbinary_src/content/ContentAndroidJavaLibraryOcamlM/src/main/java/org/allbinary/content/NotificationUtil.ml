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
(* import android.app.NotificationManager *)
(* import android.app.PendingIntent *)
(* import android.content.Context *)
(* import android.content.Intent *)
(* import org.allbinary.android.AndroidInfoFactory *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class notificationUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable notificationManager : Obj.t = Obj.repr 0
    method notificationManager : 'r. 'r = Obj.magic notificationManager
    method set_notificationManager : 'v. 'v -> unit = fun value' -> notificationManager <- Obj.repr value'
    val mutable notificationBuilder : NotificationBuilder.notificationBuilder = (Obj.magic 0)
    method notificationBuilder = notificationBuilder
    method set_notificationBuilder value' = notificationBuilder <- value'
    
    

    method notify : 'any1. 'any1 * string * string -> unit = fun (command, (resource : string), (message : string)) ->
        let command = Obj.repr command in
        try
        begin
        let context : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ()))) in ();
        let intent : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "CommandUriAction.getInstance" (Obj.repr ())))#getIntent ((Obj.magic command))))) in ();
        let integer : int ref = ref (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceId (resource))) in ();
        let fLAG_IMMUTABLE : int ref = ref ((1 lsl 26)) in ();
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        let pendingIntent : Obj.t ref = ref ((Obj.repr (PendingIntent.getActivity ((Obj.magic !context), 0, (Obj.magic !intent), (if (!sDK_VERSION > 22) then !fLAG_IMMUTABLE else 0))))) in ();
        if (notificationBuilder == (Obj.magic 0)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#eXCEPTION, self, !commonStrings#nOT_IMPLEMENTED));
            raise (Java_return (Obj.repr (())))
        end;
        ignore (notificationBuilder#build ((Obj.magic !context), (Obj.magic command), message, !integer, (Obj.magic !pendingIntent)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        notificationManager <- (Obj.repr (Obj.magic (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())#getSystemService ((Context.get_nOTIFICATION_SERVICE ())))));
        notificationBuilder <- ((Obj.magic 0) :> NotificationBuilder.notificationBuilder);
        ();
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION > 22) then begin
            notificationBuilder <- (new NotificationBuilderAPI23.notificationBuilderAPI23 ())
        end else begin
            notificationBuilder <- (NotificationBuilder.get_nULL_NOTIFICATION_BUILDER ())
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "NotificationUtil" (fun arguments -> Obj.repr (new notificationUtil (Obj.obj arguments)))

let sINGLETON = (new notificationUtil ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NotificationUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NotificationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


