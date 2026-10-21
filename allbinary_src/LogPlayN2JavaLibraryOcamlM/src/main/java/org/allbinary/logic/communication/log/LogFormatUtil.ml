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
(* import org.allbinary.time.TimeStampUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.string.CommonLabels *)

class logFormatUtil () =
  object (self)
    val mutable timeStampUtil : Obj.t = Obj.repr 0
    method timeStampUtil : 'r. 'r = Obj.magic timeStampUtil
    method set_timeStampUtil : 'v. 'v -> unit = fun value' -> timeStampUtil <- Obj.repr value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable lOG_ERROR : string = ""
    method lOG_ERROR = lOG_ERROR
    method set_lOG_ERROR value' = lOG_ERROR <- value'
    val mutable eMPTY : string = ""
    method eMPTY = eMPTY
    method set_eMPTY value' = eMPTY <- value'
    val mutable sTACK_TRACE : string = ""
    method sTACK_TRACE = sTACK_TRACE
    method set_sTACK_TRACE value' = sTACK_TRACE <- value'
    val mutable tIME : string = ""
    method tIME = tIME
    method set_tIME value' = tIME <- value'
    val mutable cLASS_NAME : string = ""
    method cLASS_NAME = cLASS_NAME
    method set_cLASS_NAME value' = cLASS_NAME <- value'
    val mutable fUNCTION_CALL : string = ""
    method fUNCTION_CALL = fUNCTION_CALL
    method set_fUNCTION_CALL value' = fUNCTION_CALL <- value'
    val mutable sPECIAL_MESSAGE : string = ""
    method sPECIAL_MESSAGE = sPECIAL_MESSAGE
    method set_sPECIAL_MESSAGE value' = sPECIAL_MESSAGE <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable exceptionUtil : Obj.t = Obj.repr 0
    method exceptionUtil : 'r. 'r = Obj.magic exceptionUtil
    method set_exceptionUtil : 'v. 'v -> unit = fun value' -> exceptionUtil <- Obj.repr value'
    val mutable nullUtil : NullUtil.nullUtil = (Obj.magic 0)
    method nullUtil = nullUtil
    method set_nullUtil value' = nullUtil <- value'
    
    

    method get : 'any4. string * string * string * 'any4 -> string = fun ((className : string), (functionName : string), (specialMessage : string), exception_) ->
        let exception_ = Obj.repr exception_ in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((self#getF (className, functionName)) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#getO (exception_))));
        ignore (!stringBuffer#append (sPECIAL_MESSAGE));
        ignore (!stringBuffer#append (specialMessage));
        ignore (!stringBuffer#append (commonSeps#nEW_LINE));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getS ((className : string), (functionName : string), (specialMessage : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((self#getF (className, functionName)) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sPECIAL_MESSAGE));
        ignore (!stringBuffer#append (specialMessage));
        ignore (!stringBuffer#append (commonSeps#nEW_LINE));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getF ((className : string), (functionName : string)) : StringMaker.stringMaker =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (tIME));
        ignore (!stringBuffer#append (((Obj.magic timeStampUtil)#getAsString ())));
        ignore (!stringBuffer#append (cLASS_NAME));
        ignore (!stringBuffer#append (className));
        ignore (!stringBuffer#append (fUNCTION_CALL));
        ignore (!stringBuffer#append (functionName));
        (!stringBuffer :> StringMaker.stringMaker)
        end
    

    method getO : 'any1. 'any1 -> string = fun (exception_) ->
        let exception_ = Obj.repr exception_ in
        try
        begin
        if ((Obj.repr exception_) != (Obj.repr nullUtil#nULL_OBJECT)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (lOG_ERROR));
            let exceptionAsString : string ref = ref ((java_string_of (Obj.repr exception_))) in ();
            if (!exceptionAsString <> (Obj.magic 0)) then begin
                ignore (!stringBuffer#append (!exceptionAsString))
            end else begin
                ignore (!stringBuffer#append (eMPTY))
            end;
            ignore (!stringBuffer#append (sTACK_TRACE));
            if ((Obj.repr exception_) != (Obj.repr nullUtil#nULL_OBJECT)) then begin
                ignore (!stringBuffer#append (((Obj.magic exceptionUtil)#getStackTrace ((Obj.magic exception_)))))
            end else begin
                ignore (!stringBuffer#append (stringUtil#nULL_STRING))
            end;
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end else begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        timeStampUtil <- (Obj.repr (Obj.magic (java_call_static "TimeStampUtil.getInstance" (Obj.repr ()))));
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        lOG_ERROR <- "\nLog-Error: ";
        eMPTY <- "Empty";
        sTACK_TRACE <- "\nStack Trace: ";
        tIME <- "Time: ";
        cLASS_NAME <- commonSeps#sPACE;
        fUNCTION_CALL <- (CommonLabels.getInstance ())#cOLON_SEP;
        sPECIAL_MESSAGE <- "> ";
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        exceptionUtil <- (Obj.repr (Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ()))));
        nullUtil <- ((NullUtil.getInstance ()) :> NullUtil.nullUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogFormatUtil" (fun arguments -> Obj.repr (new logFormatUtil (Obj.obj arguments)))

let instance = (new logFormatUtil ())
let get_instance () = instance
let () = java_register_static "LogFormatUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogFormatUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


