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
(* package org.allbinary.logic.string *)

open Allbinary_java [@@warning "-33"]


let isBlank ((string : string)) : bool =
        try
        begin
        let len : int ref = ref ((String.length string)) in ();
        for i = 0 to !len - 1 do
            let c : char ref = ref ((String.get string (i))) in ();
            if ((Character.isWhitespace (!c)) == false) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "StringValidationJSEUtil.isBlank" (fun arguments -> Obj.repr (isBlank (Obj.obj arguments)))
class stringValidationJSEUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "StringValidationJSEUtil" (fun arguments -> Obj.repr (new stringValidationJSEUtil (Obj.obj arguments)))


