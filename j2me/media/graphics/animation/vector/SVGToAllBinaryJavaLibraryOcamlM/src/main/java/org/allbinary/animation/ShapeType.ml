(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class shapeType ((name_arg : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        ();
        ();
        name <- name_arg
      end
  end
let () = java_register_constructor "ShapeType" (fun arguments -> Obj.repr (new shapeType (Obj.obj arguments)))


