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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)

class portion ((hashMap : java_hash_map)) =
  object
    val mutable current : int = (Obj.magic 0)
    method current = current
    method set_current value' = current <- value'
    val mutable total : int = (Obj.magic 0)
    method total = total
    method set_total value' = total <- value'
    
    

    method getCurrent () : int =
        begin
        current
        end
    

    method getTotal () : int =
        begin
        total
        end

    initializer
      begin
        ();
        ();
        ();
        current <- (Obj.magic (hashMap#get ("current")));
        total <- (Obj.magic (hashMap#get ("total")))
      end
  end
let () = java_register_constructor "Portion" (fun arguments -> Obj.repr (new portion (Obj.obj arguments)))


