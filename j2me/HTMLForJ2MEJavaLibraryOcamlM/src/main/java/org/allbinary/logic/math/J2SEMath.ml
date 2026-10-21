(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]

class j2SEMath () =
  object
    

    method round ((value : float)) : int =
        begin
        (Float.to_int (Float.round (value)))
        end
    

    method abs ((value : float)) : float =
        begin
        (if ((value < 0.)) then (-.value) else value)
        end
    

    method absdouble ((value : float)) : float =
        begin
        (if ((value < 0.)) then (-.value) else value)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "J2SEMath" (fun arguments -> Obj.repr (new j2SEMath (Obj.obj arguments)))

let instance = (new j2SEMath ())
let get_instance () = instance
let () = java_register_static "J2SEMath.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "J2SEMath.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


