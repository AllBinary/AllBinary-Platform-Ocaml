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
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItem *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItemView *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil *)
(* import org.allbinary.logic.communication.http.request.HttpRequestUtil *)
(* import org.allbinary.logic.communication.http.request.MultipartRequestParams *)
(* import org.allbinary.logic.communication.http.request.RequestMapInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.io.path.PathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.media.MediaData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.apache.commons.fileupload.FileItem *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

let tYPE_ID : int ref = ref (10)
let get_tYPE_ID () = !tYPE_ID
let set_tYPE_ID value' = tYPE_ID := value'
let () = java_register_static "InventoryItemView.get_tYPE_ID" (fun _ -> Obj.repr (get_tYPE_ID ()))
class inventoryItemView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
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
    val mutable imageFileName : string = ""
    method imageFileName = imageFileName
    method set_imageFileName value' = imageFileName <- value'
    val mutable mediaData : MediaData.mediaData = (Obj.magic 0)
    method mediaData = mediaData
    method set_mediaData value' = mediaData <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    val mutable downloadableItemVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method downloadableItemVector = downloadableItemVector
    method set_downloadableItemVector value' = downloadableItemVector <- value'
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
        let imageFileItemObject : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#get (basicItemData#iMAGE)))) in ();
        if ((HttpFileUploadUtil.getInstance ())#isValid (!imageFileItemObject)) then begin
            let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic !imageFileItemObject))) in ();
            if (((Obj.magic !fileItem) != (Obj.magic 0)) && (((Obj.magic !fileItem)#getSize ()) > 1)) then begin
                imageFileName <- ((HttpRequestUtil.getInstance ())#generateFileName (((Obj.magic !fileItem)#getName ())));
                let pathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
                let pathUtil : PathUtil.pathUtil ref = ref (((PathUtil.getInstance ()) :> PathUtil.pathUtil)) in ();
                mediaData <- (MediaData.get (((Obj.magic !pathData)#getExtension (imageFileName))));
                imageFileName <- (!pathUtil#getWithoutExtension (imageFileName));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                    let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    ignore (!stringBuffer#append ("Uploaded File Data: "));
                    ignore (!stringBuffer#append (imageFileName));
                    ignore (!stringBuffer#append (" Extension: "));
                    ignore (!stringBuffer#append ((mediaData#getName ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getFormData()"))
                end
            end
        end;
        itemInterface <- (Obj.magic (new BasicItem.basicItem ((self#getRequestHashMap ()))))
        end [@@warning "-7"]
    

    method addDomNodeInterfaces () : unit =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let downloadableItem : DownloadableItem.downloadableItem ref = ref (((Obj.magic 0) :> DownloadableItem.downloadableItem)) in ();
        let size : int ref = ref ((downloadableItemVector#size ())) in ();
        for index = 0 to !size - 1 do
            downloadableItem := (Obj.magic (downloadableItemVector#get (index)));
            ignore (!vector#add ((new DownloadableItemView.downloadableItemView (!downloadableItem))))
        done;
        ignore (self#addDomNodeInterface ((new BasicItemView.basicItemView (itemInterface, !vector))))
        end [@@warning "-7"]
    

    method getItemInterface () : ItemInterface.itemInterface =
        begin
        (itemInterface :> ItemInterface.itemInterface)
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
    

    method processImageFiles () : unit =
        begin
        let set : Obj.t ref = ref ((Obj.repr ((self#getRequestHashMap ())#keySet ()))) in ();
        let fieldNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !fieldNameArray)) in ();
        for index = 0 to !size - 1 do
            let fieldName : string ref = ref ((Obj.magic !fieldNameArray.(index))) in ();
            if ((String.compare !fieldName (basicItemData#iMAGE)) == 0) then begin
                let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getWeblisketSession ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
                let inventoryUploadMediaUtil : InventoryUploadMediaUtil.inventoryUploadMediaUtil ref = ref (((new InventoryUploadMediaUtil.inventoryUploadMediaUtil (!storeFrontInterface, itemInterface)) :> InventoryUploadMediaUtil.inventoryUploadMediaUtil)) in ();
                let fileItem : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getRequestHashMap ())#get (basicItemData#iMAGE))))) in ();
                itemInterface <- (!inventoryUploadMediaUtil#saveFiles (((Obj.magic !fileItem)#get ()), imageFileName, mediaData))
            end
        done
        end [@@warning "-7"]
    

    method setRequestHashMap ((requestHashMap_arg : java_hash_map)) : unit =
        begin
        requestHashMap <- requestHashMap_arg
        end [@@warning "-7"]
    

    method getRequestHashMap () : java_hash_map =
        begin
        (requestHashMap :> java_hash_map)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        imageFileName <- "";
        mediaData <- ((Obj.magic 0) :> MediaData.mediaData);
        itemInterface <- ((Obj.magic 0) :> ItemInterface.itemInterface);
        downloadableItemVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        requestHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InventoryItemView" (fun arguments -> Obj.repr (new inventoryItemView (Obj.obj arguments)))


