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
(* package views.admin.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemValidation *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil *)
(* import org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileData *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonLabels *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let aDDPRODUCT : string = "Add Product"
let get_aDDPRODUCT () = aDDPRODUCT
let () = java_register_static "AddFileValidationView.get_aDDPRODUCT" (fun _ -> Obj.repr (get_aDDPRODUCT ()))
let nEXTSTEP : string = (java_string_of (Obj.repr ((CommonLabels.getInstance ())#nEXT)) ^ " Step")
let get_nEXTSTEP () = nEXTSTEP
let () = java_register_static "AddFileValidationView.get_nEXTSTEP" (fun _ -> Obj.repr (get_nEXTSTEP ()))
class addFileValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit InventoryItemView.inventoryItemView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            let command : string ref = ref ((Obj.magic ((self#getRequestHashMap ())#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
            if (((StringValidationUtil.getInstance ())#isEmpty (!command)) || ((((String.compare !command (aDDPRODUCT)) != 0) && ((String.compare !command (nEXTSTEP)) != 0)))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("Invalid AdminCommand: "));
                    ignore (!stringBuffer#append (!command));
                    ignore (!stringBuffer#append (" must be: "));
                    ignore (!stringBuffer#append (aDDPRODUCT));
                    ignore (!stringBuffer#append (" or "));
                    ignore (!stringBuffer#append (nEXTSTEP));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let basicItemValidation : BasicItemValidation.basicItemValidation ref = ref (((new BasicItemValidation.basicItemValidation (itemInterface)) :> BasicItemValidation.basicItemValidation)) in ();
            if ((Obj.repr (!basicItemValidation#isValid ())) == (Obj.repr false)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ((!basicItemValidation#validationInfo ()), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            ignore (itemInterface#setCategory (((!storeFrontInterface#getCategoryPath ()) + (itemInterface#getCategory ()))));
            let fullCategory : string ref = ref ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((URLGLOBALS.getWebappPath ())))#append ((!storeFrontInterface#getCurrentHostNamePath ())))#append ((itemInterface#getCategory ())))))) in ();
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullCategory)))))) in ();
            if (not ((Obj.magic !categoryFile)#isDirectory ())) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Category Does Not Exist: " ^ !fullCategory), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem ((itemInterface#getId ()))) != (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Item Already Exists", self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let imageFileItemObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get (basicItemData#iMAGE)))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!imageFileItemObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !imageFileItemObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                if ((Obj.repr (self#isValid (!fileName, !size))) == (Obj.repr false)) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Exception in validation", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method validationInfo () : string =
        try
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let command : string ref = ref ((Obj.magic ((self#getRequestHashMap ())#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
            if (((StringValidationUtil.getInstance ())#isEmpty (!command)) || ((((String.compare !command (aDDPRODUCT)) != 0) && ((String.compare !command (nEXTSTEP)) != 0)))) then begin
                raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
            end;
            let basicItemValidation : BasicItemValidation.basicItemValidation ref = ref (((new BasicItemValidation.basicItemValidation (itemInterface)) :> BasicItemValidation.basicItemValidation)) in ();
            if ((Obj.repr (!basicItemValidation#isValid ())) == (Obj.repr false)) then begin
                ignore (!stringBuffer#append ((!basicItemValidation#validationInfo ())));
                ignore (!stringBuffer#append ("<br/>"))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let fullCategory : string ref = ref ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((URLGLOBALS.getWebappPath ())))#append ((!storeFrontInterface#getCurrentHostNamePath ())))#append ((itemInterface#getCategory ())))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Category: " ^ !fullCategory), self, "validationInfo()"))
            end;
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullCategory)))))) in ();
            if (not ((Obj.magic !categoryFile)#isDirectory ())) then begin
                ignore (!stringBuffer#append ("Category "));
                ignore (!stringBuffer#append ((itemInterface#getCategory ())));
                ignore (!stringBuffer#append (" does not exist.<br />"))
            end;
            (try
                if ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem ((itemInterface#getId ()))) != (Obj.magic 0)) then begin
                    ignore (!stringBuffer#append ("Id is already in use. Refresh the page for a valid id.<br/>"))
                end
            with e -> begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Existing Item With MoneyException", self, "validationInfo()"))
                end
            end);
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get (basicItemData#iMAGE)))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!anyType)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !anyType))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let fileItemFieldName : string ref = ref (((Obj.magic !fileItem)#getFieldName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (self#validationInfo (!stringBuffer, !fileName, !fileItemFieldName, !size))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    (* Java overload isValid(String, LONG) is not converted: OCaml has one method per name *)
    

    (* Java overload validationInfo(StringMaker, String, String, LONG) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AddFileValidationView" (fun arguments -> Obj.repr (new addFileValidationView (Obj.obj arguments)))


