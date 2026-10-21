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
(* import admin.taghelpers.CustomItemsHelperFactory *)
(* import admin.taghelpers.CustomItemsRequestHelperFactory *)

class customItemsTag () =
  object (self)
    inherit TableTag.tableTag ()
    

    initializer
      begin
        ();
        ignore (self#setTagHelperFactory ((new CustomItemsHelperFactory.customItemsHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new CustomItemsRequestHelperFactory.customItemsRequestHelperFactory ())))
      end
  end
let () = java_register_constructor "CustomItemsTag" (fun arguments -> Obj.repr (new customItemsTag (Obj.obj arguments)))


