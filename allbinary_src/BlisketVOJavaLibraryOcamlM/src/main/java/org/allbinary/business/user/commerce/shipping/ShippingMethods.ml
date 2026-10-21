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
(* package org.allbinary.business.user.commerce.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.shipping.modules.ShippingInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class shippingMethods ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable shippingVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method shippingVector = shippingVector
    method set_shippingVector value' = shippingVector <- value'
    val mutable defaultShippingMethodInterface : ShippingInterface.shippingInterface = (Obj.magic 0)
    method defaultShippingMethodInterface = defaultShippingMethodInterface
    method set_defaultShippingMethodInterface value' = defaultShippingMethodInterface <- value'
    
    

    method get () : BasicArrayList.basicArrayList =
        begin
        (shippingVector :> BasicArrayList.basicArrayList)
        end
    

    method getShippingInterface ((name : string)) : ShippingInterface.shippingInterface =
        begin
        let shipping : ShippingInterface.shippingInterface ref = ref (((Obj.magic 0) :> ShippingInterface.shippingInterface)) in ();
        let size : int ref = ref ((shippingVector#size ())) in ();
        for index = 0 to !size - 1 do
            shipping := (Obj.magic (shippingVector#get (index)));
            if ((String.compare name ((!shipping#getName ()))) == 0) then begin
                (!shipping :> ShippingInterface.shippingInterface)
            end
        done;
        let error : string ref = ref (("Error Finding Shipping: " ^ name)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sHIPPINGERROR)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#eXCEPTION, self, "getShippingInterface(String name)"))
        end;
        raise (Failure (!error))
        end
    

    method getDefault () : ShippingInterface.shippingInterface =
        begin
        (defaultShippingMethodInterface :> ShippingInterface.shippingInterface)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        defaultShippingMethodInterface <- ((new ShippingMethodsFactory.shippingMethodsFactory (abeClientInformation, storeFrontInterface))#getDefaultInstance ());
        shippingVector <- ((new ShippingMethodsFactory.shippingMethodsFactory (abeClientInformation, storeFrontInterface))#getInstance ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingMethods" (fun arguments -> Obj.repr (new shippingMethods (Obj.obj arguments)))


