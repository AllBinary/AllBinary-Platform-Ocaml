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
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.StoreTransformer *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonStrings *)

class inventorySearchProductUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable iTEM_NOT_FOUND : string = ""
    method iTEM_NOT_FOUND = iTEM_NOT_FOUND
    method set_iTEM_NOT_FOUND value' = iTEM_NOT_FOUND <- value'
    

    method getProduct : 'any1 'any2. 'any1 * 'any2 * string -> string = fun (abeClientInformation, searchRequest, (product : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let searchRequest = Obj.repr searchRequest in
        try
        begin
        (try
            let inventoryEntityInterface : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            let itemInterface : ItemInterface.itemInterface ref = ref (((!inventoryEntityInterface#getItem (product)) :> ItemInterface.itemInterface)) in ();
            if (!itemInterface != (Obj.magic 0)) then begin
                let viewDocumentInterface : TransformDocumentInterface.transformDocumentInterface ref = ref (((TransformStoreDocumentFactory.getInstance ((Obj.magic searchRequest))) :> TransformDocumentInterface.transformDocumentInterface)) in ();
                ignore ((!viewDocumentInterface#getBaseNode ())#appendChild (((new BasicItemView.basicItemView (!itemInterface, (new BasicArrayListD.basicArrayListD ())))#toXmlNode ((!viewDocumentInterface#getDoc ())))));
                let success : string ref = ref ((XmlDocumentHelper.toString ((!viewDocumentInterface#getDoc ())))) in ();
                let outputStr : string ref = ref (((new StoreTransformer.storeTransformer ((Obj.magic abeClientInformation), (Obj.magic (new TransformInfoHttpSearch.transformInfoHttpSearch ((Obj.magic searchRequest))))))#translate (!success))) in ();
                raise (Java_return (Obj.repr (!outputStr)))
            end else begin
                raise (Java_return (Obj.repr (iTEM_NOT_FOUND)))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "getProduct", e))
            end;
            raise (Failure ("Failed to getProduct"))
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        iTEM_NOT_FOUND <- "Item Not Found.";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventorySearchProductUtil" (fun arguments -> Obj.repr (new inventorySearchProductUtil (Obj.obj arguments)))

let instance = (new inventorySearchProductUtil ())
let get_instance () = instance
let () = java_register_static "InventorySearchProductUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InventorySearchProductUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


