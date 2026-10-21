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
(* package org.allbinary.logic.java *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)


let toString ((floats : float array)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for index = 0 to (Array.length floats) - 1 do
            ignore (!stringBuffer#appendfloat (floats.(index)))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "PrimitiveArrayToString.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class primitiveArrayToString () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PrimitiveArrayToString" (fun arguments -> Obj.repr (new primitiveArrayToString (Obj.obj arguments)))


