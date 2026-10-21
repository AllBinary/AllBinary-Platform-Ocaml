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
(* package org.allbinary.graphics.form.item.validation *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.form.item.ABTextFieldItem *)

class usernameValidator (textFieldItem, (min : int), (max : int), (allowOnEmpty : bool)) =
  object
    inherit TextFieldItemValidator.textFieldItemValidator (textFieldItem, min, max, allowOnEmpty)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "UsernameValidator" (fun arguments -> Obj.repr (new usernameValidator (Obj.obj arguments)))


