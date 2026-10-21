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
(* package org.allbinary.logic.java.character *)

open Allbinary_java [@@warning "-33"]

class characterSet () =
  object
    
    

    method toString () : string =
        begin
        "Default Character Set: Empty Implementation"
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CharacterSet" (fun arguments -> Obj.repr (new characterSet (Obj.obj arguments)))


