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
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any1. 'any1 -> ProductListingInterface.productListingInterface = fun (searchRequest) ->
        let searchRequest = Obj.repr searchRequest in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ((Obj.magic (new ProductListing.productListing ((Obj.magic searchRequest)))) :> ProductListingInterface.productListingInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "ProductListingFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> ProductListingInterface.productListingInterface)
        end)
        end [@@warning "-20"]

let () = java_register_static "ProductListingFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class productListingFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ProductListingFactory" (fun arguments -> Obj.repr (new productListingFactory (Obj.obj arguments)))


