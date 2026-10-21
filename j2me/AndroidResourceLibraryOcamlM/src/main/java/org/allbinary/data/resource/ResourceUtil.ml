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
(* package org.allbinary.data.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import android.app.Activity *)
(* import android.content.Context *)
(* import android.content.res.Resources *)
(* import org.allbinary.debug.DebugFactory *)
(* import org.allbinary.debug.NoDebug *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.HashtableUtil *)

class resourceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable context : Obj.t = (Obj.magic 0)
    method context = context
    method set_context value' = context <- value'
    val mutable resources : Obj.t = (Obj.magic 0)
    method resources = resources
    method set_resources value' = resources <- value'
    val mutable hashMap : Obj.t = Obj.repr 0
    method hashMap : 'r. 'r = Obj.magic hashMap
    method set_hashMap : 'v. 'v -> unit = fun value' -> hashMap <- Obj.repr value'
    
    

    method setLoadingPaths ((_path : string), (_ext : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((CommonStrings.getInstance ())#nOT_IMPLEMENTED, self, "setLoadingPaths"))
        end
    

    method getContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic context)))
        end
    

    method setContextFromActivity : 'any1. 'any1 -> unit = fun (activity) ->
        let activity = Obj.repr activity in
        begin
        context <- (Obj.magic activity)
        end [@@warning "-20"]
    

    method setContext : 'any1. 'any1 -> unit = fun (aContext) ->
        let aContext = Obj.repr aContext in
        begin
        context <- (Obj.magic aContext)
        end [@@warning "-20"]
    

    method getResourceId ((resource : string)) : int =
        begin
        let value : int ref = ref ((Obj.magic ((Obj.magic hashMap)#get (resource)))) in ();
        if ((Obj.repr (DebugFactory.getInstance ())) != (Obj.repr (NoDebug.getInstance ()))) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (resource))#append ((CommonSeps.getInstance ())#cOLON))#append ((string_of_int !value))))), self, "getResourceId"))))
        end;
        !value
        end
    

    method addResource ((resource : string), (value : int)) : unit =
        begin
        if ((Obj.repr (DebugFactory.getInstance ())) != (Obj.repr (NoDebug.getInstance ()))) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (resource))#append ((CommonSeps.getInstance ())#cOLON))#append ((string_of_int value))))), self, "addResource"))));
            if (self#containsDuplicate (resource, value)) then begin
                ignore (ForcedLogUtil.log ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Found Duplicate Resource: "))#append (resource)))), self))
            end
        end;
        ignore ((Obj.magic hashMap)#put (resource, value))
        end
    

    method containsDuplicate ((resource : string), (value : int)) : bool =
        try
        begin
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic hashMap)))) in ();
        let index : int ref = ref ((Array.length !objectArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            let integer : int ref = ref ((Obj.magic ((Obj.magic hashMap)#get ((Obj.magic !objectArray.(!index)))))) in ();
            if (resource <> !objectArray.(!index)) then begin
                if ((Obj.repr value) != (Obj.repr !integer)) then begin
                    if ((Obj.repr value) == (Obj.repr !integer)) then begin
                        raise (Java_return (Obj.repr (true)))
                    end
                end
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value
    

    method setResources : 'any1. 'any1 -> unit = fun (resources_arg) ->
        let resources_arg = Obj.repr resources_arg in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Resource Loader: "))#append ((java_get_class (Obj.repr (Obj.magic resources_arg))))))), self, "setResources"));
        resources <- (Obj.magic resources_arg)
        end [@@warning "-20"]
    

    method getResourceAsStream : 'return. string -> 'return = fun ((resource : string)) ->
        try
        begin
        let integer : int ref = ref ((Obj.magic ((Obj.magic hashMap)#get (resource)))) in ();
        let id : int ref = ref (!integer) in ();
        let resources_arg : Obj.t ref = ref ((Obj.repr ((Obj.magic resources)))) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !resources_arg)#openRawResource (!id)))) in ();
        if ((Obj.magic !inputStream) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !inputStream))))
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        context <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        resources <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        hashMap <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResourceUtil" (fun arguments -> Obj.repr (new resourceUtil (Obj.obj arguments)))

let instance = (new resourceUtil ())
let get_instance () = instance
let () = java_register_static "ResourceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ResourceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


