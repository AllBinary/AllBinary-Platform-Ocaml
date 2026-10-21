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
(* package org.allbinary.business.advertisement.search.category *)

open Allbinary_java [@@warning "-33"]

class basicAdvertisementCategory ((categoryId_arg : string)) =
  object
    val mutable categoryId : string = ""
    method categoryId = categoryId
    method set_categoryId value' = categoryId <- value'
    
    

    method toString () : string =
        begin
        categoryId
        end

    initializer
      begin
        ();
        ();
        categoryId <- categoryId_arg
      end
  end
let () = java_register_constructor "BasicAdvertisementCategory" (fun arguments -> Obj.repr (new basicAdvertisementCategory (Obj.obj arguments)))


