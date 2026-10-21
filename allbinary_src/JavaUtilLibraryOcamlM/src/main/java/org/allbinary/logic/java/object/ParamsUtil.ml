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
(* package org.allbinary.logic.java.anyType *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)


let viewParams ((params : string array)) : string =
        try
        begin
        if (params != (Obj.magic 0)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            for index = 0 to (Array.length params) - 1 do
                ignore (!stringBuffer#append (" "));
                ignore (!stringBuffer#append ((params.(index)#getName ())))
            done;
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end else begin
            "Params Null"
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "ParamsUtil.viewParams" (fun arguments -> Obj.repr (viewParams (Obj.obj arguments)))
class paramsUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ParamsUtil" (fun arguments -> Obj.repr (new paramsUtil (Obj.obj arguments)))


