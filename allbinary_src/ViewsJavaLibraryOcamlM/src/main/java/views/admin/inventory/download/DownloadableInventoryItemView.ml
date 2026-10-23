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
(* import java.io.ByteArrayInputStream *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.MultipartRequestParams *)
(* import org.allbinary.logic.communication.http.request.RequestMapInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.zip.ZipFileUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.apache.commons.fileupload.FileItem *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

let tYPE_ID : int ref = ref (11)
let get_tYPE_ID () = !tYPE_ID
let set_tYPE_ID value' = tYPE_ID := value'
let () = java_register_static "DownloadableInventoryItemView.get_tYPE_ID" (fun _ -> Obj.repr (get_tYPE_ID ()))
class downloadableInventoryItemView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    val mutable downloadableItem : DownloadableItem.downloadableItem = (Obj.magic 0)
    method downloadableItem = downloadableItem
    method set_downloadableItem value' = downloadableItem <- value'
    val mutable requestHashMap : java_hash_map = (Obj.magic 0)
    method requestHashMap = requestHashMap
    method set_requestHashMap value' = requestHashMap <- value'
    
    
    

    method getTypeId () : int =
        begin
        !tYPE_ID
        end [@@warning "-7"]
    

    method getFormData () : unit =
        begin
        (self#setRequestHashMap (((new MultipartRequestParams.multipartRequestParams ((Obj.magic request)))#toHashMap ())));
        id <- (Obj.magic ((self#getRequestHashMap ())#get (basicItemData#iD)))
        end [@@warning "-7"]
    

    method addDomNodeInterfaces () : unit =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        if (downloadableItem != (Obj.magic 0)) then begin
            ignore (!vector#add ((new DownloadableItemView.downloadableItemView (downloadableItem))))
        end;
        ignore (self#addDomNodeInterface ((new BasicItemView.basicItemView (itemInterface, !vector))))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method processFile : 'any1. 'any1 -> unit = fun (fileItem) ->
        let fileItem = Obj.repr fileItem in
        begin
        let fileName : string ref = ref (((Obj.magic fileItem)#getName ())) in ();
        let fullPath : string ref = ref ((self#getItemFilePath ())) in ();
        let itemResourceFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullPath)))))) in ();
        ignore ((Obj.magic !itemResourceFile)#mkdir ());
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!fullPath));
        ignore (!stringBuffer#append (!fileName));
        ignore ((Obj.magic logUtil)#putF (("FileName: " ^ !fileName), self, "processFile()"));
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))))) in ();
        ignore ((Obj.magic logUtil)#putF (((Obj.magic !file)#getPath ()), self, "processFiles()"));
        ignore ((Obj.magic !file)#createNewFile ());
        let byteArray : int array ref = ref (((Obj.magic fileItem)#get ())) in ();
        ignore ((FileUtil.getInstance ())#write ((new ByteArrayInputStream.byteArrayInputStream (!byteArray)), (Obj.magic !file)))
        end [@@warning "-7-20"]
    

    method unzip : 'any1. 'any1 -> unit = fun (fileItem) ->
        let fileItem = Obj.repr fileItem in
        begin
        let fileName : string ref = ref (((Obj.magic fileItem)#getName ())) in ();
        let fullPath : string ref = ref ((self#getItemFilePath ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!fullPath));
        ignore (!stringBuffer#append (!fileName));
        ignore ((Obj.magic logUtil)#putF (("FileName: " ^ !fileName), self, "unzip()"));
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))))) in ();
        ignore ((Obj.magic logUtil)#putF (((Obj.magic !file)#getPath ()), self, "unzip()"));
        ignore ((ZipFileUtil.getInstance ())#unzip (!fullPath, (Obj.magic !file), !fileName))
        end [@@warning "-7-20"]
    

    method getItemFilePath () : string =
        begin
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let filePathData : FilePathData.filePathData ref = ref (((FilePathData.getInstance ()) :> FilePathData.filePathData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
        ignore (!stringBuffer#append ((!storeFrontInterface#getCurrentHostNamePath ())));
        ignore (!stringBuffer#append ((itemInterface#getCategory ())));
        ignore (!stringBuffer#appendchar (!filePathData#sEPARATORCHAR));
        ignore (!stringBuffer#append ((itemInterface#getId ())));
        ignore (!stringBuffer#appendchar (!filePathData#sEPARATORCHAR));
        ignore (!stringBuffer#append ((downloadableItem#getId ())));
        ignore (!stringBuffer#appendchar (!filePathData#sEPARATORCHAR));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method setRequestHashMap ((requestHashMap_arg : java_hash_map)) : unit =
        begin
        requestHashMap <- requestHashMap_arg
        end [@@warning "-7"]
    

    method getRequestHashMap () : java_hash_map =
        begin
        (requestHashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method getDownloadableItem () : DownloadableItem.downloadableItem =
        begin
        (downloadableItem :> DownloadableItem.downloadableItem)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        id <- "";
        itemInterface <- ((Obj.magic 0) :> ItemInterface.itemInterface);
        downloadableItem <- ((Obj.magic 0) :> DownloadableItem.downloadableItem);
        requestHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "DownloadableInventoryItemView" (fun arguments -> Obj.repr (new downloadableInventoryItemView (Obj.obj arguments)))


