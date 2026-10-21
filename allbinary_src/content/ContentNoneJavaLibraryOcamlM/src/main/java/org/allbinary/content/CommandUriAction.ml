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
(* import org.allbinary.logic.communication.log.LogUtil *)

class commandUriAction () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method add : 'any1. 'any1 * string -> unit = fun (_command, (_url : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method process : 'any1. 'any1 -> unit = fun (_command) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
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


