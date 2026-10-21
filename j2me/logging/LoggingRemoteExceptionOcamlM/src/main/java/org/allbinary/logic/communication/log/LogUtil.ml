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
(* import java.io.IOException *)
(* import org.apache.xmlrpc.XmlRpcException *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.canvas.SpecialMessageUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

class logUtil () =
  object (self)
    val mutable mESSAGE : string = ""
    method mESSAGE = mESSAGE
    method set_mESSAGE value' = mESSAGE <- value'
    val mutable isFirstException : bool = false
    method isFirstException = isFirstException
    method set_isFirstException value' = isFirstException <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable stringBuffer : StringMaker.stringMaker = (Obj.magic 0)
    method stringBuffer = stringBuffer
    method set_stringBuffer value' = stringBuffer <- value'
    
    

    method putL : 'any1. 'any1 -> unit = fun (log) ->
        let log = Obj.repr log in
        try
        begin
        if ((Obj.magic log) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let specialMessage : string ref = ref (((Obj.magic log)#getSpecialMessage ())) in ();
        let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getObject ()))) in ();
        let functionName : string ref = ref (((Obj.magic log)#getFunctionName ())) in ();
        let exception_ : Obj.t ref = ref ((Obj.repr ((Obj.magic log)#getThrowable ()))) in ();
        (self#put (!specialMessage, !anyType, !functionName, !exception_))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method putF : 'any2. string * 'any2 * string -> unit = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        ()
        end
    

    (* Java overload putF(String, String, String) is not converted: OCaml has one method per name *)
    

    method put : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((specialMessage : string), anyType, (functionName : string), exception_) ->
        let anyType = Obj.repr anyType in
        let exception_ = Obj.repr exception_ in
        try
        begin
        if (exception_ != (Obj.magic 0)) then begin
            if (((java_get_class (Obj.repr exception_))#compareTo (("XmlRpcException"#getName ()))) == 0) then begin
                raise (Java_return (Obj.repr (())))
            end;
            if (((java_get_class (Obj.repr exception_))#compareTo (("IOException"#getName ()))) == 0) then begin
                raise (Java_return (Obj.repr (())))
            end;
            if (isFirstException || (timeDelayHelper#isTimeTNT ())) then begin
                let className : string ref = ref ((CommonStrings.getInstance ())#eMPTY) in ();
                isFirstException <- false;
                if ((anyType != (Obj.magic 0)) && ((java_get_class (Obj.repr anyType)) <> (Obj.magic 0))) then begin
                    className := (Obj.obj (java_new "String" (Obj.repr ((java_get_class (Obj.repr anyType))))))
                end;
                let message : string ref = ref (((Obj.magic (java_call_static "LogFormatUtil.getInstance" (Obj.repr ())))#get (!className, functionName, specialMessage, exception_))) in ();
                (try
                    (print_endline (java_string_of (Obj.repr ("Eeeek"))));
                    if (abeClientInformation == (Obj.magic 0)) then begin
                        raise (Failure ("RuntimeException"))
                    end;
                    let hashtable : Obj.t ref = ref ((Obj.repr (abeClientInformation#toHashtable ()))) in ();
                    ignore (stringBuffer#delete (0, (stringBuffer#length ())));
                    ignore (stringBuffer#append (!message));
                    ignore (stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
                    ignore (stringBuffer#append (((SpecialMessageUtil.getInstance ())#get ())));
                    ignore ((Obj.magic !hashtable)#put (mESSAGE, (java_string_of (Obj.repr stringBuffer))));
                    ignore ((new XmlRpcRemoteLogClient.xmlRpcRemoteLogClient (abeClientInformation))#get ((Obj.magic !hashtable)))
                with e -> begin
                    (print_endline (java_string_of (Obj.repr ("Exception"))));
                    ignore (prerr_endline (Printexc.to_string e))
                end)
            end
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        mESSAGE <- "message";
        isFirstException <- true;
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (200000)) :> TimeDelayHelper.timeDelayHelper);
        abeClientInformation <- ((Obj.magic 0) :> AbeClientInformationInterface.abeClientInformationInterface);
        stringBuffer <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        ();
        ()
      end
  end
let () = java_register_constructor "LogUtil" (fun arguments -> Obj.repr (new logUtil (Obj.obj arguments)))

let instance = (new logUtil ())
let get_instance () = instance
let () = java_register_static "LogUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


