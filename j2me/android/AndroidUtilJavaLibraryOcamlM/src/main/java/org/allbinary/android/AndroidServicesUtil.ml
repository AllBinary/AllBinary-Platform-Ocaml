(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2019 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.List *)
(* import android.app.ActivityManager *)
(* import android.app.ActivityManager.RunningServiceInfo *)
(* import android.content.ComponentName *)
(* import android.content.Context *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class androidServicesUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable resourceUtil : Obj.t = Obj.repr 0
    method resourceUtil : 'r. 'r = Obj.magic resourceUtil
    method set_resourceUtil : 'v. 'v -> unit = fun value' -> resourceUtil <- Obj.repr value'
    val mutable sERVICE_LIMIT_MAX : int = 0
    method sERVICE_LIMIT_MAX = sERVICE_LIMIT_MAX
    method set_sERVICE_LIMIT_MAX value' = sERVICE_LIMIT_MAX <- value'
    val mutable iS_SERVICE_RUNNING : string = ""
    method iS_SERVICE_RUNNING = iS_SERVICE_RUNNING
    method set_iS_SERVICE_RUNNING value' = iS_SERVICE_RUNNING <- value'
    val mutable sERVICE_NOT_FOUND_RUNNING : string = ""
    method sERVICE_NOT_FOUND_RUNNING = sERVICE_NOT_FOUND_RUNNING
    method set_sERVICE_NOT_FOUND_RUNNING value' = sERVICE_NOT_FOUND_RUNNING <- value'
    

    method isServiceRunning ((name : string)) : bool =
        try
        begin
        let activityManager : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic resourceUtil)#getContext ())#getSystemService ((Context.get_aCTIVITY_SERVICE ())))))) in ();
        let runningServicesList : Obj.t ref = ref ((Obj.repr ((Obj.magic !activityManager)#getRunningServices (sERVICE_LIMIT_MAX)))) in ();
        let runningServiceInfo : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let serviceComponent : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let serviceName : string ref = ref ("") in ();
        let size : int ref = ref (((Obj.magic !runningServicesList)#size ())) in ();
        for index = 0 to !size - 1 do
            runningServiceInfo := Obj.repr (((Obj.magic !runningServicesList)#get (index)));
            serviceComponent := Obj.repr ((Obj.magic !runningServiceInfo)#service);
            serviceName := (java_string_of (Obj.repr (Obj.magic !serviceComponent)));
            if ((java_string_index_of !serviceName (Obj.repr (name))) >= 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        ignore ((Obj.magic logUtil)#putF ((sERVICE_NOT_FOUND_RUNNING ^ name), self, iS_SERVICE_RUNNING));
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        resourceUtil <- (Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))));
        sERVICE_LIMIT_MAX <- 1000;
        iS_SERVICE_RUNNING <- "isServiceRunning";
        sERVICE_NOT_FOUND_RUNNING <- "Service not found Running: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidServicesUtil" (fun arguments -> Obj.repr (new androidServicesUtil (Obj.obj arguments)))

let instance = (new androidServicesUtil ())
let get_instance () = instance
let () = java_register_static "AndroidServicesUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AndroidServicesUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


