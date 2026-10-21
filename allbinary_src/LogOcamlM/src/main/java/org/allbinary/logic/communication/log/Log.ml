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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogFormatUtil *)

class log ((specialMessage_arg : string), (anyType_arg : Obj.t), (functionName_arg : string), (exception__arg : Obj.t)) =
  object
    val mutable logFormatUtil : Obj.t = Obj.repr 0
    method logFormatUtil : 'r. 'r = Obj.magic logFormatUtil
    method set_logFormatUtil : 'v. 'v -> unit = fun value' -> logFormatUtil <- Obj.repr value'
    val mutable specialMessage : string = ""
    method specialMessage = specialMessage
    method set_specialMessage value' = specialMessage <- value'
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    val mutable functionName : string = ""
    method functionName = functionName
    method set_functionName value' = functionName <- value'
    val mutable exception_ : Obj.t = (Obj.magic 0)
    method exception_ = exception_
    method set_exception_ value' = exception_ <- value'
    
    

    method getSpecialMessage () : string =
        begin
        specialMessage
        end
    

    method getObject () : Obj.t =
        begin
        (Obj.repr (anyType))
        end
    

    method getFunctionName () : string =
        begin
        functionName
        end
    

    method getThrowable () : Obj.t =
        begin
        (Obj.repr (exception_))
        end
    

    method toString () : string =
        begin
        let className : string ref = ref ((CommonStrings.getInstance ())#eMPTY) in ();
        let clazz : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
        if (!clazz <> (Obj.magic 0)) then begin
            className := !clazz
        end;
        ((Obj.magic logFormatUtil)#get (!className, functionName, specialMessage, exception_))
        end

    initializer
      begin
        logFormatUtil <- (Obj.repr (Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        specialMessage <- specialMessage_arg;
        anyType <- anyType_arg;
        functionName <- functionName_arg;
        exception_ <- exception__arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "Log" (fun arguments -> Obj.repr (new log (Obj.obj arguments)))


