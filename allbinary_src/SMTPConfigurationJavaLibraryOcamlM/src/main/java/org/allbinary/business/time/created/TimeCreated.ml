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
(* package org.allbinary.business.time.created *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.time.Time *)

class timeCreated ((time : string)) =
  object
    inherit Time.time (time)
    
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TimeCreated" (fun arguments -> Obj.repr (new timeCreated (Obj.obj arguments)))


