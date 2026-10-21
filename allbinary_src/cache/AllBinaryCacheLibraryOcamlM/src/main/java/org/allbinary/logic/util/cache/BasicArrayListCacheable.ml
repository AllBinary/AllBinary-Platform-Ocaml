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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayListD *)

class basicArrayListCacheable () =
  object
    inherit BasicArrayListD.basicArrayListD ()
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicArrayListCacheable" (fun arguments -> Obj.repr (new basicArrayListCacheable (Obj.obj arguments)))


