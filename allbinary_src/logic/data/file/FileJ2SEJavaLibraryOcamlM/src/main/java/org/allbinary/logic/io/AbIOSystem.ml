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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]

class abIOSystem () =
  object
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    

    method getType () : string =
        begin
        type_
        end
    

    method isType ((type__arg : string)) : bool =
        try
        begin
        if ((String.compare type_ (type__arg)) == 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        type_ <- "java.io";
        ()
      end
  end
let () = java_register_constructor "AbIOSystem" (fun arguments -> Obj.repr (new abIOSystem (Obj.obj arguments)))

let instance = (new abIOSystem ())
let get_instance () = instance
let () = java_register_static "AbIOSystem.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbIOSystem.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


