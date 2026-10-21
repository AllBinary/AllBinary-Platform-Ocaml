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
(* package org.allbinary.business.time *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class time ((time : string)) =
  object (self)
    val mutable timeLong : int = (Obj.magic 0)
    method timeLong = timeLong
    method set_timeLong value' = timeLong <- value'
    
    
    

    method getLong () : int =
        begin
        timeLong
        end
    

    method getlong () : int =
        begin
        timeLong
        end
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (self#getLong ())))
        end

    initializer
      begin
        ();
        ();
        timeLong <- (Obj.obj (java_new "Long" (Obj.repr (time))))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Time" (fun arguments -> Obj.repr (new time (Obj.obj arguments)))


