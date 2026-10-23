(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import jsinterop.annotations.JsConstructor *)

class basicArrayListS ((size : int)) =
  object (self)
    inherit BasicArrayList.basicArrayList ((NullUtil.getInstance ())#nULL_OBJECT_ARRAY)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        if (size < 0) then begin
            raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Init Size Exception: "))#appendint (size))))))
        end;
        (self#set_objectArray) ((Array.make (size) (Obj.magic 0)))
      end
  end
let () = java_register_constructor "BasicArrayListS" (fun arguments -> Obj.repr (new basicArrayListS (Obj.obj arguments)))


