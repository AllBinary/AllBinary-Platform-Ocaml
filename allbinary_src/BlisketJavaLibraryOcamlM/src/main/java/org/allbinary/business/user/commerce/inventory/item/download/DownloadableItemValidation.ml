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
(* package org.allbinary.business.user.commerce.inventory.item.download *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class downloadableItemValidation ((downloadableItem_arg : DownloadableItem.downloadableItem)) =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable downloadableItem : DownloadableItem.downloadableItem = (Obj.magic 0)
    method downloadableItem = downloadableItem
    method set_downloadableItem value' = downloadableItem <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            if ((((downloadableItem#getId ()) == (Obj.magic 0)) || (((downloadableItem#getId ())#length ()) < 1)) || (((downloadableItem#getId ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (((downloadableItem#getId ()) != (Obj.magic 0)) && (not ((StringValidationUtil.getInstance ())#isNumber ((downloadableItem#getId ()))))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((downloadableItem#getSystem ()) == (Obj.magic 0)) || (((downloadableItem#getSystem ())#length ()) < 1)) || (((downloadableItem#getSystem ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((downloadableItem#getPlatform ()) == (Obj.magic 0)) || (((downloadableItem#getPlatform ())#length ()) < 1)) || (((downloadableItem#getPlatform ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((downloadableItem#getSpecialName ()) == (Obj.magic 0)) || (((downloadableItem#getSpecialName ())#length ()) < 0)) || (((downloadableItem#getSpecialName ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((downloadableItem#getVersion ()) == (Obj.magic 0)) || (((downloadableItem#getVersion ())#length ()) < 1)) || (((downloadableItem#getVersion ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((downloadableItem#getChanges ()) == (Obj.magic 0)) || (((downloadableItem#getChanges ())#length ()) < 1)) || (((downloadableItem#getChanges ())#length ()) > (AbSqlData.get_mAXBLOB ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((downloadableItem#getSize ()) == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getSize ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            if ((downloadableItem#getValidTime ()) == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getValidTime ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            if ((downloadableItem#getRetries ()) == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getRetries ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((((downloadableItem#getId ()) == (Obj.magic 0)) || (((downloadableItem#getId ())#length ()) < 1)) || (((downloadableItem#getId ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ("Id is invalid. Must be number < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXNUM ()))))));
                ignore (!stringBuffer#append (" and > 0 digits.<br/>"))
            end;
            if (((downloadableItem#getId ()) != (Obj.magic 0)) && (not ((StringValidationUtil.getInstance ())#isNumber ((downloadableItem#getId ()))))) then begin
                ignore (!stringBuffer#append ("Id is invalid. Must be > 0.<br/>"))
            end;
            if ((((downloadableItem#getSystem ()) == (Obj.magic 0)) || (((downloadableItem#getSystem ())#length ()) < 1)) || (((downloadableItem#getSystem ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ("System value is invalid. Must be < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXSTRING ()))))));
                ignore (!stringBuffer#append (" and > 0 characters long.<br/>"))
            end;
            if ((((downloadableItem#getPlatform ()) == (Obj.magic 0)) || (((downloadableItem#getPlatform ())#length ()) < 1)) || (((downloadableItem#getPlatform ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ("Platform value is invalid. Must be < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXSTRING ()))))));
                ignore (!stringBuffer#append (" and > 0 characters long.<br/>"))
            end;
            if ((((downloadableItem#getSpecialName ()) == (Obj.magic 0)) || (((downloadableItem#getSpecialName ())#length ()) < 0)) || (((downloadableItem#getSpecialName ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ("Special Name value is invalid. Must be < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXSTRING ()))))));
                ignore (!stringBuffer#append (" and > 0 characters long.<br/>"))
            end;
            if ((((downloadableItem#getVersion ()) == (Obj.magic 0)) || (((downloadableItem#getVersion ())#length ()) < 1)) || (((downloadableItem#getVersion ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ("Version value is invalid. Must be < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXSTRING ()))))));
                ignore (!stringBuffer#append (" and > 0 characters long.<br/>"))
            end;
            if ((((downloadableItem#getChanges ()) == (Obj.magic 0)) || (((downloadableItem#getChanges ())#length ()) < 0)) || (((downloadableItem#getChanges ())#length ()) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ("Changes value is invalid. Must be < "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXBLOB ()))))));
                ignore (!stringBuffer#append (" and >= 0 characters long.<br/>"))
            end;
            if ((downloadableItem#getSize ()) == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("File Size is null"))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getSize ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    ignore (!stringBuffer#append ("File Size is invalid. Must be number < "));
                    ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXNUM ()))))));
                    ignore (!stringBuffer#append (" and > 0 digits.<br/>"))
                end
            end;
            if ((downloadableItem#getValidTime ()) == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Valid Time is null"))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getValidTime ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    ignore (!stringBuffer#append ("Valid Time is invalid. Must be number < "));
                    ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXNUM ()))))));
                    ignore (!stringBuffer#append (" and > 0 digits.<br/>"))
                end
            end;
            if ((downloadableItem#getRetries ()) == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Retries is null"))
            end else begin
                let size : string ref = ref ((java_string_of (Obj.repr (downloadableItem#getRetries ())))) in ();
                if (((String.length !size) < 1) || ((String.length !size) > (AbSqlData.get_mAXNUM ()))) then begin
                    ignore (!stringBuffer#append ("Retries is invalid. Must be number < "));
                    ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((AbSqlData.get_mAXNUM ()))))));
                    ignore (!stringBuffer#append (" and > 0 digits.<br/>"))
                end
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        downloadableItem <- downloadableItem_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "DownloadableItemValidation" (fun arguments -> Obj.repr (new downloadableItemValidation (Obj.obj arguments)))


