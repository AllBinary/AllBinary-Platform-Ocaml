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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class licenseType ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        name <- "";
        ();
        (self#setName (name_arg))
      end
  end
let () = java_register_constructor "LicenseType" (fun arguments -> Obj.repr (new licenseType (Obj.obj arguments)))


