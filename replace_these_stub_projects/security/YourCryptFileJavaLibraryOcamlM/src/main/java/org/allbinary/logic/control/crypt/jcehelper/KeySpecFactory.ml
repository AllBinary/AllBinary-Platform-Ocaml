(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.control.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.security.spec.KeySpec *)

let dES : string = "DES"
let get_dES () = dES
let () = java_register_static "KeySpecFactory.get_dES" (fun _ -> Obj.repr (get_dES ()))
let dESEDE : string = "DESede"
let get_dESEDE () = dESEDE
let () = java_register_static "KeySpecFactory.get_dESEDE" (fun _ -> Obj.repr (get_dESEDE ()))

let getInstance : 'return. string * int array -> 'return = fun ((_algorithm : string), (_keyData : int array)) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

let () = java_register_static "KeySpecFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class keySpecFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "KeySpecFactory" (fun arguments -> Obj.repr (new keySpecFactory (Obj.obj arguments)))


