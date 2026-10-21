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
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.string.CommonStrings *)

class basicWeightShippingModule () =
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
    
    

    method getCost : 'any1. 'any1 -> Money.money = fun (order) ->
        let order = Obj.repr order in
        begin
        let basket : BasketInterface.basketInterface ref = ref ((((Obj.magic order)#getBasket ()) :> BasketInterface.basketInterface)) in ();
        let money : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
        ignore (!money#add ((!basket#getTotalWeight ())));
        ignore (!money#multiply (1));
        ignore (!money#add ("3.50"));
        (!money :> Money.money)
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
        name <- "Basic Shipping (5 to 7 working days)";
        description <- "We will soon provide a variety of shipping methods.";
        ();
        ()
      end
  end
let () = java_register_constructor "BasicWeightShippingModule" (fun arguments -> Obj.repr (new basicWeightShippingModule (Obj.obj arguments)))


