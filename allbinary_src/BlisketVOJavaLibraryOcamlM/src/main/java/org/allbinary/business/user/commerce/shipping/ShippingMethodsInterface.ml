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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.shipping.modules.ShippingInterface *)

class virtual shippingMethodsInterface =
  object
    method virtual get : unit -> BasicArrayList.basicArrayList
    method virtual getShippingInterface : string -> ShippingInterface.shippingInterface
    method virtual getDefault : unit -> ShippingInterface.shippingInterface
  end


