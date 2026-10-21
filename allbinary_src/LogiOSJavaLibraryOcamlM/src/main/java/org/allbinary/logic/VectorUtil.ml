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
(* package org.allbinary.logic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Vector *)

class vectorUtil () =
  object
    

    method getSize : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let vector : java_vector ref = ref (((Obj.magic anyType) :> java_vector)) in ();
        (!vector#size ())
        end
    

    method elementAt : 'any1. 'any1 * int -> Obj.t = fun (anyType, (index : int)) ->
        let anyType = Obj.repr anyType in
        begin
        let vector : java_vector ref = ref (((Obj.magic anyType) :> java_vector)) in ();
        (Obj.repr ((!vector#elementAt (index))))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "VectorUtil" (fun arguments -> Obj.repr (new vectorUtil (Obj.obj arguments)))

let instance = (new vectorUtil ())
let get_instance () = instance
let () = java_register_static "VectorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VectorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


