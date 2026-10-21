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
(* package org.allbinary.logic.java.array *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)


let toString ((array : int array)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for index = 0 to (Array.length array) - 1 do
            ignore (!stringBuffer#appendint (array.(index)));
            if (index < (Array.length array)) then begin
                ignore (!stringBuffer#append (", "))
            end
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

(* Java overload toString(ArrayType) is not converted: OCaml has one method per name *)

(* Java overload toString(ArrayType) is not converted: OCaml has one method per name *)

let () = java_register_static "IntArrayUtil.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class intArrayUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "IntArrayUtil" (fun arguments -> Obj.repr (new intArrayUtil (Obj.obj arguments)))


