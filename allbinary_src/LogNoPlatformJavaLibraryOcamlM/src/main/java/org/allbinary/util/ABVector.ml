(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
(* import java.util.Vector *)

class aBVector () =
  object
    inherit java_vector ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABVector" (fun arguments -> Obj.repr (new aBVector (Obj.obj arguments)))


