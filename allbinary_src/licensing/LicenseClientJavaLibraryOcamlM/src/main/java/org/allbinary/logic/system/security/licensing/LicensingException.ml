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

let serialVersionUID : int = 1
let get_serialVersionUID () = serialVersionUID
let () = java_register_static "LicensingException.get_serialVersionUID" (fun _ -> Obj.repr (get_serialVersionUID ()))
class licensingException () =
  object
    inherit Exception.exception ()
    
    

    initializer
      begin
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "LicensingException" (fun arguments -> Obj.repr (new licensingException (Obj.obj arguments)))


