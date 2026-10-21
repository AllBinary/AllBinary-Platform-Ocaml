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
(* import java.util.logging.Level *)
(* import java.util.logging.Logger *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.string.CommonStrings *)

class logUtil () =
  object (self)
    val mutable logger : Obj.t = Obj.repr 0
    method logger : 'r. 'r = Obj.magic logger
    method set_logger : 'v. 'v -> unit = fun value' -> logger <- Obj.repr value'
    val mutable logFormatUtil : Obj.t = Obj.repr 0
    method logFormatUtil : 'r. 'r = Obj.magic logFormatUtil
    method set_logFormatUtil : 'v. 'v -> unit = fun value' -> logFormatUtil <- Obj.repr value'
    
    

    method putL : 'any1. 'any1 -> unit = fun (log) ->
        let log = Obj.repr log in
        begin
        let specialMessage : string ref = ref (((Obj.magic log)#getSpecialMessage ())) in ();
        let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getObject ()))) in ();
        let functionName : string ref = ref (((Obj.magic log)#getFunctionName ())) in ();
        let exception_ : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getThrowable ()))) in ();
        (self#put (!specialMessage, !anyType, !functionName, !exception_))
        end [@@warning "-20"]
    

    method putF : 'any2. string * 'any2 * string -> unit = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        (self#put (specialMessage, anyType, functionName, (NullUtil.getInstance ())#nULL_OBJECT))
        end
    

    method putFS ((specialMessage : string), (className : string), (functionName : string)) : unit =
        begin
        (self#putS (specialMessage, className, functionName, (NullUtil.getInstance ())#nULL_OBJECT))
        end
    

    method put : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        (try
            let className : string ref = ref ((CommonStrings.getInstance ())#eMPTY) in ();
            let clazz : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            if (!clazz <> (Obj.magic 0)) then begin
                className := !clazz
            end;
            let message : string ref = ref (((Obj.magic logFormatUtil)#getS (!className, functionName, specialMessage))) in ();
            if (exception_ != (Obj.magic 0)) then begin
                ignore ((Obj.magic logger)#log ((Level.get_sEVERE ()), !message, exception_))
            end else begin
                ignore ((Obj.magic logger)#log ((Level.get_iNFO ()), !message))
            end
        with e -> begin
            ()
        end)
        end
    

    method putS : 'any4. string * string * string * 'any4 -> unit = fun ((specialMessage : string), (className : string), (functionName : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        (try
            let message : string ref = ref (((Obj.magic logFormatUtil)#getS (className, functionName, specialMessage))) in ();
            if (exception_ != (Obj.magic 0)) then begin
                ignore ((Obj.magic logger)#log ((Level.get_sEVERE ()), !message, exception_))
            end else begin
                ignore ((Obj.magic logger)#log ((Level.get_iNFO ()), !message))
            end
        with e -> begin
            ()
        end)
        end

    initializer
      begin
        logger <- (Obj.repr (Logger.getLogger (("LogUtil"#getName ()))));
        logFormatUtil <- (Obj.repr (Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ()))));
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


