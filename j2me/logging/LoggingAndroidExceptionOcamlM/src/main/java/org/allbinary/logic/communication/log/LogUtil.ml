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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class logUtil () =
  object (self)
    val mutable logFormatUtil : Obj.t = Obj.repr 0
    method logFormatUtil : 'r. 'r = Obj.magic logFormatUtil
    method set_logFormatUtil : 'v. 'v -> unit = fun value' -> logFormatUtil <- Obj.repr value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    val mutable lOG_SUCCESS : string = ""
    method lOG_SUCCESS = lOG_SUCCESS
    method set_lOG_SUCCESS value' = lOG_SUCCESS <- value'
    
    

    method putL : 'any1. 'any1 -> unit = fun (log) ->
        let log = Obj.repr log in
        begin
        let specialMessage : string ref = ref (((Obj.magic log)#getSpecialMessage ())) in ();
        let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getObject ()))) in ();
        let functionName : string ref = ref (((Obj.magic log)#getFunctionName ())) in ();
        let exception_ : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getThrowable ()))) in ();
        if ((Obj.magic log) != (Obj.magic 0)) then begin
            (self#put (!specialMessage, !anyType, !functionName, !exception_))
        end
        end [@@warning "-20"]
    

    method putF : 'any2. string * 'any2 * string -> unit = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        ()
        end
    

    method putFS ((_specialMessage : string), (_className : string), (_functionName : string)) : unit =
        begin
        ()
        end
    

    method put : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        let className : string ref = ref (lABEL) in ();
        className := (java_get_class (Obj.repr anyType));
        let message : string ref = ref (((Obj.magic logFormatUtil)#get (!className, functionName, specialMessage, exception_))) in ();
        ignore ((android.get_util ())#log#i (lABEL, (lOG_SUCCESS ^ !message)))
        end

    initializer
      begin
        logFormatUtil <- (Obj.repr (Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ()))));
        lABEL <- "org.allbinary";
        lOG_SUCCESS <- "org.allbinary: ";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogUtil" (fun arguments -> Obj.repr (new logUtil (Obj.obj arguments)))

let instance = (new logUtil ())
let get_instance () = instance
let () = java_register_static "LogUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


