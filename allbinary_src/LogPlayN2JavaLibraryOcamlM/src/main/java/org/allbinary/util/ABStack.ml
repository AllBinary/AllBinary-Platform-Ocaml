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
(* import java.util.Stack *)
(* import jsinterop.annotations.JsType *)

class aBStack () =
  object
    inherit java_stack () as super
    

    method push : 'any1. 'any1 -> E.e = fun (item) ->
        let item = Obj.repr item in
        begin
        ((super#push ((Obj.magic item))) :> E.e)
        end [@@warning "-7-20"]
    

    method pop () : E.e =
        begin
        ((super#pop ()) :> E.e)
        end [@@warning "-7"]
    

    method peek () : E.e =
        begin
        ((super#peek ()) :> E.e)
        end [@@warning "-7"]
    

    method empty () : bool =
        begin
        (super#empty ())
        end [@@warning "-7"]
    

    method search : 'any1. 'any1 -> int = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#search (obj))
        end [@@warning "-7"]
    

    method removeElement : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#removeElement (obj))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABStack" (fun arguments -> Obj.repr (new aBStack (Obj.obj arguments)))


