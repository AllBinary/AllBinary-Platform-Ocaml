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
(* import jsinterop.annotations.JsProperty *)
(* import jsinterop.annotations.JsMethod *)
(* import org.allbinary.util.ABHashMap *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.ABStack *)
(* import org.allbinary.util.ABVector *)

class stdUtil () =
  object (self)
    val mutable eMPTY_VECTOR : Obj.t = Obj.repr 0
    method eMPTY_VECTOR : 'r. 'r = Obj.magic eMPTY_VECTOR
    method set_eMPTY_VECTOR : 'v. 'v -> unit = fun value' -> eMPTY_VECTOR <- Obj.repr value'
    val mutable nULL_TABLE : Obj.t = Obj.repr 0
    method nULL_TABLE : 'r. 'r = Obj.magic nULL_TABLE
    method set_nULL_TABLE : 'v. 'v -> unit = fun value' -> nULL_TABLE <- Obj.repr value'
    val mutable nULL_MAP : Obj.t = Obj.repr 0
    method nULL_MAP : 'r. 'r = Obj.magic nULL_MAP
    method set_nULL_MAP : 'v. 'v -> unit = fun value' -> nULL_MAP <- Obj.repr value'
    

    method createStack : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.obj (java_new "ABStack" (Obj.repr ())))))
        end
    

    method createVector : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.obj (java_new "ABVector" (Obj.repr ())))))
        end
    

    method createHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.obj (java_new "ABHashtable" (Obj.repr ())))))
        end
    

    method createHashMap : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.obj (java_new "ABHashMap" (Obj.repr ())))))
        end

    initializer
      begin
        eMPTY_VECTOR <- (Obj.repr (self#createVector ()));
        nULL_TABLE <- (Obj.repr (self#createHashtable ()));
        nULL_MAP <- (Obj.repr (self#createHashMap ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StdUtil" (fun arguments -> Obj.repr (new stdUtil (Obj.obj arguments)))

let instance = (new stdUtil ())
let get_instance () = instance
let () = java_register_static "StdUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StdUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


