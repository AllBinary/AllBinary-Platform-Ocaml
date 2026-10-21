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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]

class systemProperties () =
  object
    
    

    method getName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getArch () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getVersion () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getUserHomePath () : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "SystemProperties" (fun arguments -> Obj.repr (new systemProperties (Obj.obj arguments)))

let instance = (new systemProperties ())
let get_instance () = instance
let () = java_register_static "SystemProperties.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SystemProperties.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


