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
(* package org.allbinary.business.user.commerce.money.tax.modules *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.StreetAddress *)

class virtual taxModuleInterface =
  object
    method virtual getTaxRate : 'any1 'any2 . 'any1 * 'any2 -> float
    method virtual isValid : 'any1 'any2 . 'any1 * 'any2 -> bool
  end


