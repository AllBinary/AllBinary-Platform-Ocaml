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
(* package org.allbinary.business.context.modules.storefront.statistics.advertisements *)

open Allbinary_java [@@warning "-33"]

class storeFrontAdvertisementsStatisticsData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    

    initializer
      begin
        nAME <- "STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME";
        ();
        ()
      end
  end
let () = java_register_constructor "StoreFrontAdvertisementsStatisticsData" (fun arguments -> Obj.repr (new storeFrontAdvertisementsStatisticsData (Obj.obj arguments)))

let instance = (new storeFrontAdvertisementsStatisticsData ())
let get_instance () = instance
let () = java_register_static "StoreFrontAdvertisementsStatisticsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontAdvertisementsStatisticsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


