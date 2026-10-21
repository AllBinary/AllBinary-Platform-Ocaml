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
(* package org.allbinary.logic.java.bool *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class booleanFactory () =
  object
    val mutable tRUE : bool = (Obj.magic 0)
    method tRUE = tRUE
    method set_tRUE value' = tRUE <- value'
    val mutable fALSE : bool = (Obj.magic 0)
    method fALSE = fALSE
    method set_fALSE value' = fALSE <- value'
    val mutable tRUE_STRING : string = ""
    method tRUE_STRING = tRUE_STRING
    method set_tRUE_STRING value' = tRUE_STRING <- value'
    val mutable fALSE_STRING : string = ""
    method fALSE_STRING = fALSE_STRING
    method set_fALSE_STRING value' = fALSE_STRING <- value'
    val mutable yES : string = ""
    method yES = yES
    method set_yES value' = yES <- value'
    val mutable nO : string = ""
    method nO = nO
    method set_nO value' = nO <- value'
    

    method toStringb ((bool : bool)) : string =
        try
        begin
        if bool then begin
            raise (Java_return (Obj.repr (tRUE_STRING)))
        end else begin
            raise (Java_return (Obj.repr (fALSE_STRING)))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        tRUE <- (Obj.obj (java_new "Boolean" (Obj.repr (true))));
        fALSE <- (Obj.obj (java_new "Boolean" (Obj.repr (false))));
        tRUE_STRING <- (string_of_bool tRUE);
        fALSE_STRING <- (string_of_bool fALSE);
        yES <- "yes";
        nO <- "no";
        ()
      end
  end
let () = java_register_constructor "BooleanFactory" (fun arguments -> Obj.repr (new booleanFactory (Obj.obj arguments)))

let instance = (new booleanFactory ())
let get_instance () = instance
let () = java_register_static "BooleanFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BooleanFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


