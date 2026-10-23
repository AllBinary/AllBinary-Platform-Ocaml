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
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let uPDATEPRODUCT : string = (CommonStrings.getInstance ())#uPDATE
let get_uPDATEPRODUCT () = uPDATEPRODUCT
let () = java_register_static "UpdateFileValidationView.get_uPDATEPRODUCT" (fun _ -> Obj.repr (get_uPDATEPRODUCT ()))
class updateFileValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit InventoryItemView.inventoryItemView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            let command : string ref = ref ((Obj.magic ((self#getRequestHashMap ())#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
            if ((!command = (Obj.magic 0)) || ((String.compare !command (uPDATEPRODUCT)) != 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Invalid AdminCommand=" ^ !command), self, (self#commonStrings)#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if ((Obj.repr ((new BasicItemValidation.basicItemValidation ((self#itemInterface)))#isValid ())) == (Obj.repr false)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("BasicItem is not valid", self, (self#commonStrings)#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((!storeFrontInterface#getCurrentHostNamePath ())));
            ignore (!stringBuffer#append (((self#itemInterface)#getCategory ())));
            let fullCategory : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullCategory)))))) in ();
            if (not ((Obj.magic !categoryFile)#isDirectory ())) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Category Does Not Exist: " ^ !fullCategory), self, (self#commonStrings)#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let inventoryEntity : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            if ((!inventoryEntity#getItem (((self#itemInterface)#getId ()))) == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get (basicItemData#iMAGE)))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!anyType)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !anyType))) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                if ((Obj.repr (self#isValid (!fileName, !size))) == (Obj.repr false)) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            end;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#put ("Exception in validation", self, (self#commonStrings)#iS_VALID, e))
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
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let command : string ref = ref ((Obj.magic ((self#getRequestHashMap ())#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
        if ((!command = (Obj.magic 0)) || ((String.compare !command (uPDATEPRODUCT)) != 0)) then begin
            raise (Java_return (Obj.repr ((CommonSeps.getInstance ())#sPACE)))
        end;
        ignore (!stringBuffer#append (((new BasicItemValidation.basicItemValidation ((self#itemInterface)))#validationInfo ())));
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let fullCategory : string ref = ref ((((Obj.magic (URLGLOBALS.getWebappPath ())) + (!storeFrontInterface#getCurrentHostNamePath ())) + ((self#itemInterface)#getCategory ()))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Category: " ^ !fullCategory), self, "validationInfo()"))
        end;
        (try
            if ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem (((self#itemInterface)#getId ()))) == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Item does not exist.<br>"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Existing Item With MoneyException", self, "validationInfo()"))
            end
        end);
        let anyType : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get (basicItemData#iMAGE)))) in ();
        if ((HttpFileUploadUtil.getInstance ())#isValid (!anyType)) then begin
            let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !anyType))) in ();
            let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
            let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
            let fileItemFieldName : string ref = ref (((Obj.magic !fileItem)#getFieldName ())) in ();
            ignore (self#validationInfo (!stringBuffer, !fileName, !fileItemFieldName, !size))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    (* Java overload isValid(String, LONG) is not converted: OCaml has one method per name *)
    

    (* Java overload validationInfo(StringMaker, String, String, LONG) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "UpdateFileValidationView" (fun arguments -> Obj.repr (new updateFileValidationView (Obj.obj arguments)))


