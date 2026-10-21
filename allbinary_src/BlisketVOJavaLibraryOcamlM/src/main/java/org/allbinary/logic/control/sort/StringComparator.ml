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
(* package org.allbinary.logic.control.sort *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Comparator *)

class stringComparator () =
  object
    
    

    method compare : 'any1 'any2. 'any1 * 'any2 -> int = fun (anyType, object2) ->
        let anyType = Obj.repr anyType in
        let object2 = Obj.repr object2 in
        begin
        let string : string ref = ref ((Obj.magic anyType)) in ();
        let string2 : string ref = ref ((Obj.magic object2)) in ();
        (String.compare !string (!string2))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "StringComparator" (fun arguments -> Obj.repr (new stringComparator (Obj.obj arguments)))


