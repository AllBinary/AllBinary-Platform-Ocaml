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
(* package views.admin.inventory.download *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemValidation *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemValidation *)
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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class updateFileValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit DownloadableInventoryItemView.downloadableInventoryItemView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            let command : string ref = ref ((Obj.magic ((self#getRequestHashMap ())#get ((GLOBALS2.get_aDMINCOMMAND ()))))) in ();
            if (((StringValidationUtil.getInstance ())#isEmpty (!command)) || ((String.compare !command (commonStrings#uPDATE)) != 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Invalid AdminCommand=" ^ !command), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            (try
                let inventoryEntity : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
                (self#set_itemInterface) ((!inventoryEntity#getItem ((self#id))))
            with e -> begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#put ("Existing Item With MoneyException", self, commonStrings#iS_VALID, e))
                end
            end);
            if ((self#itemInterface) == (Obj.magic 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Item Does Not Exist", self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            if ((Obj.repr ((new BasicItemValidation.basicItemValidation ((self#itemInterface)))#isValid ())) == (Obj.repr false)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("BasicItem is not valid", self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let fullCategory : string ref = ref ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((URLGLOBALS.getWebappPath ())))#append ((!storeFrontInterface#getCurrentHostNamePath ())))#append (((self#itemInterface)#getCategory ())))))) in ();
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullCategory)))))) in ();
            if (not ((Obj.magic !categoryFile)#isDirectory ())) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Category Does Not Exist: " ^ !fullCategory), self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
            end;
            let downloadableFileObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_fILE ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!downloadableFileObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !downloadableFileObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                if ((Obj.repr (self#isValid (!fileName, !size))) == (Obj.repr false)) then begin
                    raise (Java_return (Obj.repr (false)))
                end else begin
                    ignore (self#processFile ((Obj.magic !fileItem)));
                    ignore ((self#getRequestHashMap ())#put ((DownloadItemData.get_sIZE ()), (string_of_int (!size))))
                end
            end else begin
                ignore ((self#getRequestHashMap ())#remove ((DownloadItemData.get_fILE ())))
            end;
            let licenseFileObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_lICENSE_FILE ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!licenseFileObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !licenseFileObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                if ((Obj.repr (self#isValid (!fileName, !size))) == (Obj.repr false)) then begin
                    ()
                end else begin
                    ignore (self#processFile ((Obj.magic !fileItem)))
                end
            end else begin
                ignore ((self#getRequestHashMap ())#remove ((DownloadItemData.get_lICENSE_FILE ())))
            end;
            let extraFilesObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_eXTRA_FILES ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!extraFilesObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !extraFilesObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItem)));
                if ((Obj.repr (self#isValid (!fileName, !size))) == (Obj.repr false)) then begin
                    ()
                end else begin
                    ignore (self#processFile ((Obj.magic !fileItem)));
                    ignore (self#unzip ((Obj.magic !fileItem)))
                end
            end else begin
                ignore ((self#getRequestHashMap ())#remove ((DownloadItemData.get_eXTRA_FILES ())))
            end;
            let hashMap : java_hash_map ref = ref (((self#getRequestHashMap ()) :> java_hash_map)) in ();
            ignore (!hashMap#put (basicItemData#iD, ((self#itemInterface)#getId ())));
            let licenseObject : Obj.t ref = ref ((Obj.repr (!hashMap#get ((DownloadItemData.get_lICENSE_FILE ()))))) in ();
            if (!licenseObject != (Obj.magic 0)) then begin
                ignore (!hashMap#put ((DownloadItemData.get_lICENSE_FILE ()), (((Obj.magic !licenseObject))#getName ())))
            end else begin
                ignore (!hashMap#put ((DownloadItemData.get_lICENSE_FILE ()), (StringUtil.getInstance ())#eMPTY_STRING))
            end;
            let fileObject : Obj.t ref = ref ((Obj.repr (!hashMap#get ((DownloadItemData.get_fILE ()))))) in ();
            if (!fileObject != (Obj.magic 0)) then begin
                ignore (!hashMap#put ((DownloadItemData.get_fILE ()), (((Obj.magic !fileObject))#getName ())))
            end else begin
                ignore (!hashMap#put ((DownloadItemData.get_fILE ()), (StringUtil.getInstance ())#eMPTY_STRING))
            end;
            (self#set_downloadableItem) ((new DownloadableItem.downloadableItem (!hashMap)));
            let downloadableItemValidation : DownloadableItemValidation.downloadableItemValidation ref = ref (((new DownloadableItemValidation.downloadableItemValidation ((self#downloadableItem))) :> DownloadableItemValidation.downloadableItemValidation)) in ();
            if ((Obj.repr (!downloadableItemValidation#isValid ())) == (Obj.repr false)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("DownloadableItem is not valid", self, commonStrings#iS_VALID))
                end;
                raise (Java_return (Obj.repr (false)))
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
            if (((StringValidationUtil.getInstance ())#isEmpty (!command)) || ((String.compare !command (commonStrings#uPDATE)) != 0)) then begin
                raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
            end;
            if ((self#itemInterface) == (Obj.magic 0)) then begin
                let iTEM_NOT_FOUND : string ref = ref ("Item Does Not Exist") in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF (!iTEM_NOT_FOUND, self, "validationInfo()"))
                end;
                raise (Java_return (Obj.repr (!iTEM_NOT_FOUND)))
            end;
            let basicItemValidation : BasicItemValidation.basicItemValidation ref = ref (((new BasicItemValidation.basicItemValidation ((self#itemInterface))) :> BasicItemValidation.basicItemValidation)) in ();
            if ((Obj.repr (!basicItemValidation#isValid ())) == (Obj.repr false)) then begin
                ignore (!stringBuffer#append ((!basicItemValidation#validationInfo ())));
                ignore (!stringBuffer#append ("<br/>"))
            end;
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let fullCategory : string ref = ref ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((URLGLOBALS.getWebappPath ())))#append ((!storeFrontInterface#getCurrentHostNamePath ())))#append (((self#itemInterface)#getCategory ())))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Category: " ^ !fullCategory), self, "validationInfo()"))
            end;
            let categoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullCategory)))))) in ();
            if (not ((Obj.magic !categoryFile)#isDirectory ())) then begin
                ignore (!stringBuffer#append ("Category "));
                ignore (!stringBuffer#append (((self#itemInterface)#getCategory ())));
                ignore (!stringBuffer#append (" does not exist."));
                ignore (!stringBuffer#append ("<br />"))
            end;
            let downloadableFileObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_fILE ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!downloadableFileObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !downloadableFileObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (self#validationInfo (!stringBuffer, !fileName, !size))
            end else begin
                ignore (!stringBuffer#append ("Download File Missing"));
                ignore (!stringBuffer#append ("<br/>"))
            end;
            let licenseFileObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_lICENSE_FILE ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!licenseFileObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !licenseFileObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (self#validationInfo (!stringBuffer, !fileName, !size))
            end else begin
                ()
            end;
            let extraFilesObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get ((DownloadItemData.get_eXTRA_FILES ()))))) in ();
            if ((HttpFileUploadUtil.getInstance ())#isValid (!extraFilesObject)) then begin
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !extraFilesObject))) in ();
                let fileName : string ref = ref (((Obj.magic !fileItem)#getName ())) in ();
                let size : int ref = ref (((Obj.magic !fileItem)#getSize ())) in ();
                ignore (self#validationInfo (!stringBuffer, !fileName, !size))
            end else begin
                ()
            end;
            if ((self#downloadableItem) != (Obj.magic 0)) then begin
                let downloadableItemValidation : DownloadableItemValidation.downloadableItemValidation ref = ref (((new DownloadableItemValidation.downloadableItemValidation ((self#downloadableItem))) :> DownloadableItemValidation.downloadableItemValidation)) in ();
                if ((Obj.repr (!downloadableItemValidation#isValid ())) == (Obj.repr false)) then begin
                    let log : string ref = ref ((!downloadableItemValidation#validationInfo ())) in ();
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                        ignore ((Obj.magic logUtil)#putF (!log, self, commonStrings#iS_VALID))
                    end;
                    ignore (!stringBuffer#append (!log));
                    ignore (!stringBuffer#append ("<br/>"))
                end
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
    

    (* Java overload validationInfo(StringMaker, String, LONG) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "UpdateFileValidationView" (fun arguments -> Obj.repr (new updateFileValidationView (Obj.obj arguments)))


