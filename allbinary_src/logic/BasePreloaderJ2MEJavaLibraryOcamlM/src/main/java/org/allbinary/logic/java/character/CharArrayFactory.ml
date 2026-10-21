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
[@@@warning "-20"]

class charArrayFactory () =
  object
    val mutable zeroCharArray : char array = (Obj.magic 0)
    method zeroCharArray = zeroCharArray
    method set_zeroCharArray value' = zeroCharArray <- value'
    

    method getZeroCharArray () : char array =
        begin
        zeroCharArray
        end

    initializer
      begin
        zeroCharArray <- (Array.make (0) '\000');
        ()
      end
  end
let () = java_register_constructor "CharArrayFactory" (fun arguments -> Obj.repr (new charArrayFactory (Obj.obj arguments)))

let instance = (new charArrayFactory ())
let get_instance () = instance
let () = java_register_static "CharArrayFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CharArrayFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


