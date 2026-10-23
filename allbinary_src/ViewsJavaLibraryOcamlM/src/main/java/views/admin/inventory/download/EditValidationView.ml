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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class editValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit DownloadableInventoryItemView.downloadableInventoryItemView (transformInfoInterface, (StringUtil.getInstance ())#eMPTY_STRING)
    val mutable downloadItemId : string = ""
    method downloadItemId = downloadItemId
    method set_downloadItemId value' = downloadItemId <- value'
    
    

    method getFormData () : unit =
        begin
        let hashMap : java_hash_map ref = ref ((((new RequestParams.requestParams (request))#toHashMap ()) :> java_hash_map)) in ();
        if (!hashMap == (Obj.magic 0)) then begin
            raise (Failure ("No Request Params Found"))
        end;
        (self#set_id) ((Obj.magic (!hashMap#get (basicItemData#iD))));
        downloadItemId <- (Obj.magic (!hashMap#get ((DownloadItemData.get_iD ()))))
        end [@@warning "-7"]
    

    method isValid () : bool =
        try
        begin
        if ((id == (Obj.magic 0)) || (not ((StringValidationUtil.getInstance ())#isNumber ((self#id))))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        (self#set_itemInterface) ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem ((self#id))));
        if ((self#itemInterface) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let downloadable : int ref = ref ((int_of_string (((self#itemInterface)#getDownloads ())))) in ();
        if (!downloadable <> 0) then begin
            let downloadItemsEntity : DownloadItemsEntity.downloadItemsEntity ref = ref ((((DownloadItemsEntityFactory.getInstance ())#getDownloadItemsEntityInstance ()) :> DownloadItemsEntity.downloadItemsEntity)) in ();
            let vector : BasicArrayList.basicArrayList ref = ref (((!downloadItemsEntity#getForItem ((self#id), downloadItemId)) :> BasicArrayList.basicArrayList)) in ();
            if ((!vector#size ()) <> 1) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            (self#set_downloadableItem) ((Obj.magic (!vector#get (0))))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
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
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if (((self#id) == (Obj.magic 0)) || (not ((StringValidationUtil.getInstance ())#isNumber ((self#id))))) then begin
            ignore (!stringBuffer#append ("Id is not valid.<br />"))
        end;
        if ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#getItem ((self#id))) == (Obj.magic 0)) then begin
            ignore (!stringBuffer#append ("Item does not exist.<br />"))
        end;
        let downloadable : int ref = ref ((int_of_string (((self#itemInterface)#getDownloads ())))) in ();
        if (!downloadable <> 0) then begin
            if ((self#downloadableItem) == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("DownloadableItem does not exist for item.<br />"))
            end
        end else begin
            ignore (!stringBuffer#append ("Item should not have DownloadableItem.<br />"))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        downloadItemId <- "";
        ();
        (* super(...) is the inherit clause *) ();
        (self#getFormData ())
      end
  end
let () = java_register_constructor "EditValidationView" (fun arguments -> Obj.repr (new editValidationView (Obj.obj arguments)))


