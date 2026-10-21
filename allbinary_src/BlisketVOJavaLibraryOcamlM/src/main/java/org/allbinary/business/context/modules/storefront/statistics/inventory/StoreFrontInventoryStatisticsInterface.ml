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
(* package org.allbinary.business.context.modules.storefront.statistics.inventory *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.data.tables.TableMappingInterface *)

class virtual storeFrontInventoryStatisticsInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual getNumber : unit -> int
    method virtual getTotal : unit -> Money.money
  end


