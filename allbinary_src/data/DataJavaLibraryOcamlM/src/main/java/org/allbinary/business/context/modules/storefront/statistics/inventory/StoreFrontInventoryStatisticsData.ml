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

class storeFrontInventoryStatisticsData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nUMBEROFITEMS : string = ""
    method nUMBEROFITEMS = nUMBEROFITEMS
    method set_nUMBEROFITEMS value' = nUMBEROFITEMS <- value'
    val mutable tOTALVALUE : string = ""
    method tOTALVALUE = tOTALVALUE
    method set_tOTALVALUE value' = tOTALVALUE <- value'
    

    initializer
      begin
        nAME <- "STOREFRONT_INVENTORY_STATISTICS_NAME";
        nUMBEROFITEMS <- "STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS";
        tOTALVALUE <- "STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE";
        ();
        ()
      end
  end
let () = java_register_constructor "StoreFrontInventoryStatisticsData" (fun arguments -> Obj.repr (new storeFrontInventoryStatisticsData (Obj.obj arguments)))

let instance = (new storeFrontInventoryStatisticsData ())
let get_instance () = instance
let () = java_register_static "StoreFrontInventoryStatisticsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontInventoryStatisticsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


