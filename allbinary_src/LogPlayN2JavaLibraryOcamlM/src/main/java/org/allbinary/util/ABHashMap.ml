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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Map *)
(* import java.util.Set *)
(* import jsinterop.annotations.JsType *)

class aBHashMap () =
  object
    inherit java_hash_map () as super
    

    method size () : int =
        begin
        (super#size ())
        end [@@warning "-7"]
    

    method isEmpty () : bool =
        begin
        (super#isEmpty ())
        end [@@warning "-7"]
    

    method get : 'any1. 'any1 -> V.v = fun (key) ->
        let key = Obj.repr key in
        begin
        ((super#get (key)) :> V.v)
        end [@@warning "-7"]
    

    method containsKey : 'any1. 'any1 -> bool = fun (key) ->
        let key = Obj.repr key in
        begin
        (super#containsKey (key))
        end [@@warning "-7"]
    

    method put : 'any1 'any2. 'any1 * 'any2 -> V.v = fun (key, value) ->
        let key = Obj.repr key in
        let value = Obj.repr value in
        begin
        ((super#put ((Obj.magic key), (Obj.magic value))) :> V.v)
        end [@@warning "-7-20"]
    

    method putAll : 'any1. 'any1 -> unit = fun (map) ->
        let map = Obj.repr map in
        begin
        ignore (super#putAll ((Obj.magic map)))
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> V.v = fun (key) ->
        let key = Obj.repr key in
        begin
        ((super#remove (key)) :> V.v)
        end [@@warning "-7"]
    

    method clear () : unit =
        begin
        ignore (super#clear ())
        end [@@warning "-7"]
    

    method containsValue : 'any1. 'any1 -> bool = fun (value) ->
        let value = Obj.repr value in
        begin
        (super#containsValue (value))
        end [@@warning "-7"]
    

    method keySet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((super#keySet ())))
        end [@@warning "-7"]
    

    method entrySet : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((super#entrySet ())))
        end [@@warning "-7"]
    

    method getOrDefault : 'any1 'any2. 'any1 * 'any2 -> V.v = fun (key, defaultValue) ->
        let key = Obj.repr key in
        let defaultValue = Obj.repr defaultValue in
        begin
        ((super#getOrDefault (key, (Obj.magic defaultValue))) :> V.v)
        end [@@warning "-7-20"]
    

    method putIfAbsent : 'any1 'any2. 'any1 * 'any2 -> V.v = fun (key, value) ->
        let key = Obj.repr key in
        let value = Obj.repr value in
        begin
        ((super#putIfAbsent ((Obj.magic key), (Obj.magic value))) :> V.v)
        end [@@warning "-7-20"]
    

    method clone () : Obj.t =
        begin
        (Obj.repr ((super#clone ())))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABHashMap" (fun arguments -> Obj.repr (new aBHashMap (Obj.obj arguments)))


