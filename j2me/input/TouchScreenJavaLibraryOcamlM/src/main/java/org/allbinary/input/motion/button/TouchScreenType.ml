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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]

class touchScreenType ((name_arg : string)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method toString () : string =
        begin
        (self#getName ())
        end

    initializer
      begin
        ();
        ();
        name <- name_arg
      end
  end
let () = java_register_constructor "TouchScreenType" (fun arguments -> Obj.repr (new touchScreenType (Obj.obj arguments)))


