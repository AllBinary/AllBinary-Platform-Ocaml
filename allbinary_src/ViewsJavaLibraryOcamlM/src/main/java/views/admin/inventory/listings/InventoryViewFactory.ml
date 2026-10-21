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
(* package views.admin.inventory.listings *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.string.CommonStrings *)
(* import views.generic.inventory.InventorySearch *)


let getInstance : 'any1. 'any1 -> InventoryViewSearchInterface.inventoryViewSearchInterface = fun (searchRequest) ->
        let searchRequest = Obj.repr searchRequest in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((new InventorySearch.inventorySearch ((Obj.magic searchRequest))) :> InventoryViewSearchInterface.inventoryViewSearchInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "InventoryViewFactory", "getInstance(SearchRequest)", e))
            end;
            ((Obj.magic 0) :> InventoryViewSearchInterface.inventoryViewSearchInterface)
        end)
        end [@@warning "-20"]

let () = java_register_static "InventoryViewFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class inventoryViewFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InventoryViewFactory" (fun arguments -> Obj.repr (new inventoryViewFactory (Obj.obj arguments)))


