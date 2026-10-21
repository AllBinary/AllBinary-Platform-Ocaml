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
(* package org.allbinary *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Map *)
(* import java.util.Set *)

class j2SEUtil () =
  object
    

    method getHashMapAsArray ((hashMap : java_hash_map)) : Obj.t array =
        begin
        let objectArray : Obj.t array ref = ref (((hashMap#keySet ())#toArray ())) in ();
        !objectArray
        end
    

    method getMapAsArray : 'any1. 'any1 -> Obj.t array = fun (map) ->
        let map = Obj.repr map in
        begin
        let objectArray : Obj.t array ref = ref ((((Obj.magic map)#keySet ())#toArray ())) in ();
        !objectArray
        end [@@warning "-20"]
    

    method getSetAsArray : 'any1. 'any1 -> Obj.t array = fun (set) ->
        let set = Obj.repr set in
        begin
        let objectArray : Obj.t array ref = ref (((Obj.magic set)#toArray ())) in ();
        !objectArray
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "J2SEUtil" (fun arguments -> Obj.repr (new j2SEUtil (Obj.obj arguments)))

let instance = (new j2SEUtil ())
let get_instance () = instance
let () = java_register_static "J2SEUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "J2SEUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


