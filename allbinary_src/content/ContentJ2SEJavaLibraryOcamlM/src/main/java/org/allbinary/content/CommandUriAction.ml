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
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

class commandUriAction () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    

    method add : 'any1. 'any1 * string -> unit = fun (command, (url : string)) ->
        let command = Obj.repr command in
        begin
        ignore ((Obj.magic hashtable)#put ((Obj.magic command), url))
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 -> unit = fun (_command) ->
        begin
        (try
            ()
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-20"]
    

    method getIntent : 'any1. 'any1 -> Intent.intent = fun (command) ->
        let command = Obj.repr command in
        begin
        let url : string ref = ref ((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic command))))) in ();
        (intent :> Intent.intent)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommandUriAction" (fun arguments -> Obj.repr (new commandUriAction (Obj.obj arguments)))

let instance = (new commandUriAction ())
let get_instance () = instance
let () = java_register_static "CommandUriAction.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommandUriAction.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


