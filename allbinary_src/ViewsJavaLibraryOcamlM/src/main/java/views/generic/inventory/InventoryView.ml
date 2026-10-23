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
(* package views.generic.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.user.commerce.inventory.InventoryData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class inventoryView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Starting", self, "toXmlNode"))
            end;
            let inventoryEntityInterface : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            let inventoryNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((InventoryData.get_iNVENTORY ()))))) in ();
            let itemVector : BasicArrayList.basicArrayList ref = ref (((!inventoryEntityInterface#getItems ((StoreFrontFactory.getInstance (((self#getTransformInfoInterface ())#getStoreName ()))))) :> BasicArrayList.basicArrayList)) in ();
            ignore ((Obj.magic !inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_tOTAL_NUMBER_ITEMS_ON_THIS_PAGE ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((!itemVector#size ())))))))))));
            let size : int ref = ref ((!itemVector#size ())) in ();
            for index = 0 to !size - 1 do
                let itemInterface : ItemInterface.itemInterface ref = ref (((Obj.magic (!itemVector#get (index))) :> ItemInterface.itemInterface)) in ();
                if (!itemInterface != (Obj.magic 0)) then begin
                    let node : Obj.t ref = ref ((Obj.repr ((new BasicItemView.basicItemView (!itemInterface, (new BasicArrayListD.basicArrayListD ())))#toXmlNode ((Obj.magic document))))) in ();
                    ignore ((Obj.magic !inventoryNode)#appendChild ((Obj.magic !node)))
                end else begin
                    ignore ((Obj.magic logUtil)#putF ("Inventory", self, "toXmlNode"))
                end
            done;
            (Obj.magic ((Obj.magic !inventoryNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "toXmlNode", e))
            end;
            raise e
        end)
        end [@@warning "-7-20"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            let error : string ref = ref ("Failed to view Inventory") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryView" (fun arguments -> Obj.repr (new inventoryView (Obj.obj arguments)))


