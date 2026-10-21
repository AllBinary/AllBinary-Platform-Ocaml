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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class itemInfo () =
  object
    val mutable type_ : string array = (Obj.magic 0)
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable view : string array = (Obj.magic 0)
    method view = view
    method set_view value' = view <- value'
    val mutable data : string array = (Obj.magic 0)
    method data = data
    method set_data value' = data <- value'
    val mutable creationDate : string array = (Obj.magic 0)
    method creationDate = creationDate
    method set_creationDate value' = creationDate <- value'
    val mutable lastModified : string array = (Obj.magic 0)
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    

    initializer
      begin
        type_ <- (Obj.magic 0);
        view <- (Obj.magic 0);
        data <- (Obj.magic 0);
        creationDate <- (Obj.magic 0);
        lastModified <- (Obj.magic 0);
        ();
        ()
      end
  end
let () = java_register_constructor "ItemInfo" (fun arguments -> Obj.repr (new itemInfo (Obj.obj arguments)))


