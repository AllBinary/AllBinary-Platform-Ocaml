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
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import tags.HelperTag *)
(* import views.admin.inventory.InventoryItemView *)

class inventoryRequestHelper ((propertiesHashMap : java_hash_map), _pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    
    

    method insert () : string =
        begin
        (try
            let dataMappingInterface : TableMappingInterface.tableMappingInterface ref = ref (((Obj.magic (self#getItemInterface ())) :> TableMappingInterface.tableMappingInterface)) in ();
            let values : BasicArrayList.basicArrayList ref = ref (((!dataMappingInterface#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#insert (!values));
            let success : string ref = ref ("Successfully Added Product") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add item to Inventory") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "insert()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let dataMappingInterface : TableMappingInterface.tableMappingInterface ref = ref (((Obj.magic (self#getItemInterface ())) :> TableMappingInterface.tableMappingInterface)) in ();
            let id : string ref = ref ((Obj.magic (!dataMappingInterface#getKey ()))) in ();
            ignore (((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#deleteWhere (basicItemData#iD, !id));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Successfully Removed the item with "));
            ignore (!stringBuffer#append (basicItemData#iD));
            ignore (!stringBuffer#append ("="));
            ignore (!stringBuffer#append (!id));
            ignore (!stringBuffer#append (" from to the Inventory table"));
            let success : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, tagStrings#dO_START_TAG))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to remove item with from Inventory") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, tagStrings#dO_START_TAG, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            ignore (self#delete ());
            ignore (self#insert ());
            let success : string ref = ref ("Item Successfully Updated") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed To Update Item") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method getItemInterface () : ItemInterface.itemInterface =
        begin
        (itemInterface :> ItemInterface.itemInterface)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        ();
        let inventoryTag : Obj.t ref = ref ((Obj.repr (Obj.magic (propertiesHashMap#get ((AbTagData.get_pARENT ())))))) in ();
        let itemView : Obj.t ref = ref ((Obj.repr ((InventoryItemViewParentTagHelper.getInstance ())#getInventoryItemView ((Obj.magic !inventoryTag))))) in ();
        itemInterface <- ((Obj.magic !itemView)#getItemInterface ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryRequestHelper" (fun arguments -> Obj.repr (new inventoryRequestHelper (Obj.obj arguments)))


