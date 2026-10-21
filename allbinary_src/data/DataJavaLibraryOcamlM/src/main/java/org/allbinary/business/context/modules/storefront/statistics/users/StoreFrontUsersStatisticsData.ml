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
(* package org.allbinary.business.context.modules.storefront.statistics.users *)

open Allbinary_java [@@warning "-33"]

class storeFrontUsersStatisticsData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nUMBEROFUSERS : string = ""
    method nUMBEROFUSERS = nUMBEROFUSERS
    method set_nUMBEROFUSERS value' = nUMBEROFUSERS <- value'
    

    initializer
      begin
        nAME <- "STOREFRONT_USERS_STATISTICS_NAME";
        nUMBEROFUSERS <- "STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS";
        ();
        ()
      end
  end
let () = java_register_constructor "StoreFrontUsersStatisticsData" (fun arguments -> Obj.repr (new storeFrontUsersStatisticsData (Obj.obj arguments)))

let instance = (new storeFrontUsersStatisticsData ())
let get_instance () = instance
let () = java_register_static "StoreFrontUsersStatisticsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontUsersStatisticsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


