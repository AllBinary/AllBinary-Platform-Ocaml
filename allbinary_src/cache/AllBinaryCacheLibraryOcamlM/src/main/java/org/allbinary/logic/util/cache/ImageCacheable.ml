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

class imageCacheable ((_name_arg : string), (_anyType : Obj.t)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr (name))
        end
    

    method toString () : string =
        begin
        name
        end

    initializer
      begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        ()
      end
  end
let () = java_register_constructor "ImageCacheable" (fun arguments -> Obj.repr (new imageCacheable (Obj.obj arguments)))


