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
(* package org.allbinary.business.user.commerce.shipping.modules *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.string.CommonStrings *)

class noShippingModule () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    
    

    method getCost : 'any1. 'any1 -> Money.money = fun (_order) ->
        begin
        ((new Money.money ()) :> Money.money)
        end [@@warning "-20"]
    

    method getDescription () : string =
        begin
        description
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        name <- "No Shipping";
        description <- "This shipping method is for items that are not shipped.";
        ();
        ()
      end
  end
let () = java_register_constructor "NoShippingModule" (fun arguments -> Obj.repr (new noShippingModule (Obj.obj arguments)))


