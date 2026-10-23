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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.control.validate.Validation *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicItemValidation ((itemInterface_arg : ItemInterface.itemInterface)) =
  object (self)
    inherit Validation.validation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable mAXWEIGHT : int = 0
    method mAXWEIGHT = mAXWEIGHT
    method set_mAXWEIGHT value' = mAXWEIGHT <- value'
    val mutable mAXPRICE : int = 0
    method mAXPRICE = mAXPRICE
    method set_mAXPRICE value' = mAXPRICE <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            if ((((itemInterface#getId ()) == (Obj.magic 0)) || (((itemInterface#getId ())#length ()) < 1)) || (((itemInterface#getId ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (((itemInterface#getId ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getId ()))))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getNumber ()) == (Obj.magic 0)) || (((itemInterface#getNumber ())#length ()) < 1)) || (((itemInterface#getNumber ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (((itemInterface#getNumber ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getNumber ()))))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getInBaskets ()) == (Obj.magic 0)) || (((itemInterface#getInBaskets ())#length ()) < 1)) || (((itemInterface#getInBaskets ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (((itemInterface#getInBaskets ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getInBaskets ()))))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getWeight ()) == (Obj.magic 0)) || (((itemInterface#getWeight ())#length ()) < 1)) || (((itemInterface#getWeight ())#length ()) > mAXWEIGHT)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (((itemInterface#getWeight ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getWeight ()))))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getEnabled ()) == (Obj.magic 0)) || (((itemInterface#getEnabled ())#length ()) < 1)) || (((itemInterface#getEnabled ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getNewOrUsed ()) == (Obj.magic 0)) || (((itemInterface#getNewOrUsed ())#length ()) < 1)) || (((itemInterface#getNewOrUsed ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getSummary ()) == (Obj.magic 0)) || (((itemInterface#getSummary ())#length ()) < 1)) || (((itemInterface#getSummary ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getDescription ()) == (Obj.magic 0)) || (((itemInterface#getDescription ())#length ()) < 1)) || (((itemInterface#getDescription ())#length ()) > (AbSqlData.get_mAXBLOB ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getKeywords ()) == (Obj.magic 0)) || (((itemInterface#getKeywords ())#length ()) < 1)) || (((itemInterface#getKeywords ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getCategory ()) == (Obj.magic 0)) || (((itemInterface#getCategory ())#length ()) < 1)) || (((itemInterface#getCategory ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getType ()) == (Obj.magic 0)) || (((itemInterface#getType ())#length ()) < 1)) || (((itemInterface#getType ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if (((itemInterface#getPrice ()) == (Obj.magic 0)) || (not ((itemInterface#getPrice ())#isValid ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getCustoms ()) == (Obj.magic 0)) || (((itemInterface#getCustoms ())#length ()) < 1)) || (((itemInterface#getCustoms ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getDownloads ()) == (Obj.magic 0)) || (((itemInterface#getDownloads ())#length ()) < 1)) || (((itemInterface#getDownloads ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getGroups ()) == (Obj.magic 0)) || (((itemInterface#getGroups ())#length ()) < 1)) || (((itemInterface#getGroups ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getOptions ()) == (Obj.magic 0)) || (((itemInterface#getOptions ())#length ()) < 1)) || (((itemInterface#getOptions ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getPermissions ()) == (Obj.magic 0)) || (((itemInterface#getPermissions ())#length ()) < 1)) || (((itemInterface#getPermissions ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((itemInterface#getSpecials ()) == (Obj.magic 0)) || (((itemInterface#getSpecials ())#length ()) < 1)) || (((itemInterface#getSpecials ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                raise (Java_return (Obj.repr (false)))
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
            if ((((itemInterface#getId ()) == (Obj.magic 0)) || (((itemInterface#getId ())#length ()) < 1)) || (((itemInterface#getId ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Id is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
            if (((itemInterface#getId ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getId ()))))) then begin
                ignore (!stringBuffer#append ("Id is invalid. Must be > 0.<br />"))
            end;
            if ((((itemInterface#getNumber ()) == (Obj.magic 0)) || (((itemInterface#getNumber ())#length ()) < 1)) || (((itemInterface#getNumber ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Number of items is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if (((itemInterface#getNumber ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getNumber ()))))) then begin
                ignore (!stringBuffer#append ("Number of items value is not a valid number.<br />"))
            end;
            if ((((itemInterface#getInBaskets ()) == (Obj.magic 0)) || (((itemInterface#getInBaskets ())#length ()) < 1)) || (((itemInterface#getInBaskets ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Number in baskets is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if (((itemInterface#getInBaskets ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getInBaskets ()))))) then begin
                ignore (!stringBuffer#append ("In Baskets value is not a valid number.<br />"))
            end;
            if ((((itemInterface#getWeight ()) == (Obj.magic 0)) || (((itemInterface#getWeight ())#length ()) < 1)) || (((itemInterface#getWeight ())#length ()) > mAXWEIGHT)) then begin
                ignore (!stringBuffer#append ((("Weight value is invalid. Must be < " ^ java_string_of (Obj.repr (mAXWEIGHT))) ^ " and > 0 digits.<br />")))
            end;
            if (((itemInterface#getWeight ()) != (Obj.magic 0)) && (not (!stringValidationUtil#isNumber ((itemInterface#getWeight ()))))) then begin
                ignore (!stringBuffer#append ("Weight value is not a valid number.<br />"))
            end;
            if ((((itemInterface#getEnabled ()) == (Obj.magic 0)) || (((itemInterface#getEnabled ())#length ()) < 1)) || (((itemInterface#getEnabled ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("For Sale value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getNewOrUsed ()) == (Obj.magic 0)) || (((itemInterface#getNewOrUsed ())#length ()) < 1)) || (((itemInterface#getNewOrUsed ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("New Or Used value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getSummary ()) == (Obj.magic 0)) || (((itemInterface#getSummary ())#length ()) < 1)) || (((itemInterface#getSummary ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("Summary value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getDescription ()) == (Obj.magic 0)) || (((itemInterface#getDescription ())#length ()) < 1)) || (((itemInterface#getDescription ())#length ()) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Description value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getKeywords ()) == (Obj.magic 0)) || (((itemInterface#getKeywords ())#length ()) < 1)) || (((itemInterface#getKeywords ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("Keywords value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getCategory ()) == (Obj.magic 0)) || (((itemInterface#getCategory ())#length ()) < 1)) || (((itemInterface#getCategory ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("Category value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if ((((itemInterface#getType ()) == (Obj.magic 0)) || (((itemInterface#getType ())#length ()) < 1)) || (((itemInterface#getType ())#length ()) > (AbSqlData.get_mAXSTRING ()))) then begin
                ignore (!stringBuffer#append ((("Type value is invalid. Must be < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXSTRING ())))) ^ " and > 0 characters long.<br />")))
            end;
            if (((itemInterface#getPrice ()) == (Obj.magic 0)) || (not ((itemInterface#getPrice ())#isValid ()))) then begin
                ignore (!stringBuffer#append ((("Price value is invalid. Must be < " ^ java_string_of (Obj.repr (mAXPRICE))) ^ " and > 0 in length.<br />")))
            end;
            if ((((itemInterface#getCustoms ()) == (Obj.magic 0)) || (((itemInterface#getCustoms ())#length ()) < 1)) || (((itemInterface#getCustoms ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Custom items value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if ((((itemInterface#getDownloads ()) == (Obj.magic 0)) || (((itemInterface#getDownloads ())#length ()) < 1)) || (((itemInterface#getDownloads ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Downloadable item value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if ((((itemInterface#getGroups ()) == (Obj.magic 0)) || (((itemInterface#getGroups ())#length ()) < 1)) || (((itemInterface#getGroups ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Group item value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if ((((itemInterface#getOptions ()) == (Obj.magic 0)) || (((itemInterface#getOptions ())#length ()) < 1)) || (((itemInterface#getOptions ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Option item value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if ((((itemInterface#getPermissions ()) == (Obj.magic 0)) || (((itemInterface#getPermissions ())#length ()) < 1)) || (((itemInterface#getPermissions ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Permission item value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
            end;
            if ((((itemInterface#getSpecials ()) == (Obj.magic 0)) || (((itemInterface#getSpecials ())#length ()) < 1)) || (((itemInterface#getSpecials ())#length ()) > (AbSqlData.get_mAXNUM ()))) then begin
                ignore (!stringBuffer#append ((("Special item value is invalid. Must be number < " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXNUM ())))) ^ " and > 0 digits.<br />")))
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
        mAXWEIGHT <- 14;
        mAXPRICE <- 14;
        ();
        ();
        itemInterface <- itemInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicItemValidation" (fun arguments -> Obj.repr (new basicItemValidation (Obj.obj arguments)))


