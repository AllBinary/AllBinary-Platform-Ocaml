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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import admin.tags.AbTagData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import tags.HelperTag *)
(* import views.admin.inventory.download.DownloadableInventoryItemView *)

class downloadItemsRequestHelper ((hashMap : java_hash_map), _pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable downloadableItem : DownloadableItem.downloadableItem = (Obj.magic 0)
    method downloadableItem = downloadableItem
    method set_downloadableItem value' = downloadableItem <- value'
    
    

    method insert () : string =
        begin
        (try
            let vector : BasicArrayList.basicArrayList ref = ref (((downloadableItem#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (((DownloadItemsEntityFactory.getInstance ())#getDownloadItemsEntityInstance ())#insert (!vector));
            let success : string ref = ref ((("Successfully inserted " ^ java_string_of (Obj.repr ((downloadableItem#getId ())))) ^ " into downloaditems table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ((("Failed to insert " ^ java_string_of (Obj.repr ((downloadableItem#getId ())))) ^ " into downloaditems table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "inserts()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            ignore (((DownloadItemsEntityFactory.getInstance ())#getDownloadItemsEntityInstance ())#delete ((downloadableItem#getId ())));
            let success : string ref = ref ("Successfully deleted") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Update Successful") in ();
            let values : java_hash_map ref = ref (((downloadableItem#toHashMap ()) :> java_hash_map)) in ();
            ignore (((DownloadItemsEntityFactory.getInstance ())#getDownloadItemsEntityInstance ())#update (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((downloadableItem#getId ()) + (CommonSeps.getInstance ())#sPACE))) ^ !success), self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref (("Failed to update: " ^ java_string_of (Obj.repr ((downloadableItem#getId ()))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        let inventoryTag : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get ((AbTagData.get_pARENT ())))))) in ();
        let inventoryItemViewParentTagHelper : InventoryItemViewParentTagHelper.inventoryItemViewParentTagHelper ref = ref (((InventoryItemViewParentTagHelper.getInstance ()) :> InventoryItemViewParentTagHelper.inventoryItemViewParentTagHelper)) in ();
        let downloadableInventoryItemView : Obj.t ref = ref ((Obj.repr (!inventoryItemViewParentTagHelper#getDownloadableInventoryItemView ((Obj.magic !inventoryTag))))) in ();
        downloadableItem <- ((Obj.magic !downloadableInventoryItemView)#getDownloadableItem ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "DownloadItemsRequestHelper" (fun arguments -> Obj.repr (new downloadItemsRequestHelper (Obj.obj arguments)))


