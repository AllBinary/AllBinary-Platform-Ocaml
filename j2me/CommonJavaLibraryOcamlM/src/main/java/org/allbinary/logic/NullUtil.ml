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
(* package org.allbinary.logic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)

class nullUtil () =
  object
    val mutable nULL_OBJECT : Obj.t = (Obj.magic 0)
    method nULL_OBJECT = nULL_OBJECT
    method set_nULL_OBJECT value' = nULL_OBJECT <- value'
    val mutable nULL_CLASS : string = (Obj.magic 0)
    method nULL_CLASS = nULL_CLASS
    method set_nULL_CLASS value' = nULL_CLASS <- value'
    val mutable nULL_OBJECT_ARRAY : Obj.t array = (Obj.magic 0)
    method nULL_OBJECT_ARRAY = nULL_OBJECT_ARRAY
    method set_nULL_OBJECT_ARRAY value' = nULL_OBJECT_ARRAY <- value'
    val mutable nULL_CHAR_ARRAY : char array = (Obj.magic 0)
    method nULL_CHAR_ARRAY = nULL_CHAR_ARRAY
    method set_nULL_CHAR_ARRAY value' = nULL_CHAR_ARRAY <- value'
    val mutable nULL_BYTE_ARRAY : int array = (Obj.magic 0)
    method nULL_BYTE_ARRAY = nULL_BYTE_ARRAY
    method set_nULL_BYTE_ARRAY value' = nULL_BYTE_ARRAY <- value'
    val mutable nULL_SHORT_ARRAY_ARRAY : int array array = (Obj.magic 0)
    method nULL_SHORT_ARRAY_ARRAY = nULL_SHORT_ARRAY_ARRAY
    method set_nULL_SHORT_ARRAY_ARRAY value' = nULL_SHORT_ARRAY_ARRAY <- value'
    val mutable nULL_INT_ARRAY : int array = (Obj.magic 0)
    method nULL_INT_ARRAY = nULL_INT_ARRAY
    method set_nULL_INT_ARRAY value' = nULL_INT_ARRAY <- value'
    val mutable nULL_INT_ARRAY_ARRAY : int array array = (Obj.magic 0)
    method nULL_INT_ARRAY_ARRAY = nULL_INT_ARRAY_ARRAY
    method set_nULL_INT_ARRAY_ARRAY value' = nULL_INT_ARRAY_ARRAY <- value'
    val mutable nULL_INT_ARRAY_ARRAY_ARRAY : int array array array = (Obj.magic 0)
    method nULL_INT_ARRAY_ARRAY_ARRAY = nULL_INT_ARRAY_ARRAY_ARRAY
    method set_nULL_INT_ARRAY_ARRAY_ARRAY value' = nULL_INT_ARRAY_ARRAY_ARRAY <- value'
    val mutable nULL_FLOAT_ARRAY : float array = (Obj.magic 0)
    method nULL_FLOAT_ARRAY = nULL_FLOAT_ARRAY
    method set_nULL_FLOAT_ARRAY value' = nULL_FLOAT_ARRAY <- value'

    initializer
      begin
        nULL_OBJECT <- (Obj.repr (object end));
        nULL_CLASS <- (java_get_class (Obj.repr nULL_OBJECT));
        nULL_OBJECT_ARRAY <- (Array.make (0) (Obj.magic 0));
        nULL_CHAR_ARRAY <- (Array.make (0) '\000');
        nULL_BYTE_ARRAY <- (Array.make (0) 0);
        nULL_SHORT_ARRAY_ARRAY <- (Array.make_matrix (0) (0) 0);
        nULL_INT_ARRAY <- (Array.make (0) 0);
        nULL_INT_ARRAY_ARRAY <- (Array.make_matrix (0) (0) 0);
        nULL_INT_ARRAY_ARRAY_ARRAY <- (Array.init (0) (fun _ -> Array.make_matrix (0) (0) 0));
        nULL_FLOAT_ARRAY <- (Array.make (0) 0.0);
        ()
      end
  end
let () = java_register_constructor "NullUtil" (fun arguments -> Obj.repr (new nullUtil (Obj.obj arguments)))

let instance = (new nullUtil ())
let get_instance () = instance
let () = java_register_static "NullUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


