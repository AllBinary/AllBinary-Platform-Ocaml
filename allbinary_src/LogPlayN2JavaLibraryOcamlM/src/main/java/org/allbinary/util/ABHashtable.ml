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
(* import java.util.Enumeration *)
(* import java.util.Hashtable *)
(* import java.util.Map *)
(* import java.util.Set *)
(* import jsinterop.annotations.JsType *)

class aBHashtable () =
  object
    inherit java_hashtable () as super
    
    

    method size () : int =
        begin
        (super#size ())
        end [@@warning "-7"]
    

    method isEmpty () : bool =
        begin
        (super#isEmpty ())
        end [@@warning "-7"]
    

    method elements () : java_enumeration =
        begin
        ((super#elements ()) :> java_enumeration)
        end [@@warning "-7"]
    

    method contains : 'any1. 'any1 -> bool = fun (value) ->
        let value = Obj.repr value in
        begin
        (super#contains (value))
        end [@@warning "-7"]
    

    method containsValue : 'any1. 'any1 -> bool = fun (value) ->
        let value = Obj.repr value in
        begin
        (super#containsValue (value))
        end [@@warning "-7"]
    

    method containsKey : 'any1. 'any1 -> bool = fun (key) ->
        let key = Obj.repr key in
        begin
        (super#containsKey (key))
        end [@@warning "-7"]
    

    method get : 'any1. 'any1 -> V.v = fun (key) ->
        let key = Obj.repr key in
        begin
        ((super#get (key)) :> V.v)
        end [@@warning "-7"]
    

    method clear () : unit =
        begin
        ignore (super#clear ())
        end [@@warning "-7"]
    

    method clone () : Obj.t =
        begin
        (Obj.repr ((super#clone ())))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (super#toString ())
        end [@@warning "-7"]
    

    method equals : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#equals (obj))
        end [@@warning "-7"]
    

    method hashCode () : int =
        begin
        (super#hashCode ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ABHashtable" (fun arguments -> Obj.repr (new aBHashtable (Obj.obj arguments)))


