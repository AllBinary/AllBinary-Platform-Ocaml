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
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class logUtil () =
  object (self)
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable logFormatUtil : Obj.t = Obj.repr 0
    method logFormatUtil : 'r. 'r = Obj.magic logFormatUtil
    method set_logFormatUtil : 'v. 'v -> unit = fun value' -> logFormatUtil <- Obj.repr value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    
    

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
    

    method putFS ((specialMessage : string), (string : string), (functionName : string)) : unit =
        begin
        (self#putS (specialMessage, string, functionName, (NullUtil.getInstance ())#nULL_OBJECT))
        end
    

    method put : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        begin
        let className : string ref = ref (lABEL) in ();
        className := (Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((java_get_class (Obj.repr anyType))))#append (commonSeps#cOLON))#append ((Printf.sprintf "%x" (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (anyType))))))))))));
        let message : string ref = ref (((Obj.magic logFormatUtil)#get (!className, functionName, specialMessage, exception_))) in ();
        ignore ((android.get_util ())#log#i (lABEL, !message))
        end
    

    method putS : 'any4. string * string * string * 'any4 -> unit = fun ((specialMessage : string), (string : string), (functionName : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        let className : string ref = ref (lABEL) in ();
        className := (Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (string))#append (commonSeps#cOLON))#append ((Printf.sprintf "%x" (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode (string))))))))))));
        let message : string ref = ref (((Obj.magic logFormatUtil)#get (!className, functionName, specialMessage, exception_))) in ();
        ignore ((android.get_util ())#log#i (lABEL, !message))
        end

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        logFormatUtil <- (Obj.repr (Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ()))));
        lABEL <- "org.allbinary";
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


