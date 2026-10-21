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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import admin.taghelpers.BasicGroupItemsHelperFactory *)
(* import admin.taghelpers.BasicGroupItemsRequestHelperFactory *)

class basicGroupItemsTag () =
  object (self)
    inherit TableTag.tableTag ()
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    

    initializer
      begin
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        ignore (self#setTagHelperFactory ((new BasicGroupItemsHelperFactory.basicGroupItemsHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new BasicGroupItemsRequestHelperFactory.basicGroupItemsRequestHelperFactory ())))
      end
  end
let () = java_register_constructor "BasicGroupItemsTag" (fun arguments -> Obj.repr (new basicGroupItemsTag (Obj.obj arguments)))


