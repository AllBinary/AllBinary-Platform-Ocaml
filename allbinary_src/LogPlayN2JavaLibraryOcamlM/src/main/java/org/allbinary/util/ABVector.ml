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
(* import java.util.Vector *)
(* import jsinterop.annotations.JsType *)

class aBVector () =
  object
    inherit java_vector () as super
    

    method ensureCapacity ((minCapacity : int)) : unit =
        begin
        ignore (super#ensureCapacity (minCapacity))
        end [@@warning "-7"]
    

    method capacity () : int =
        begin
        (super#capacity ())
        end [@@warning "-7"]
    

    method size () : int =
        begin
        (super#size ())
        end [@@warning "-7"]
    

    method isEmpty () : bool =
        begin
        (super#isEmpty ())
        end [@@warning "-7"]
    

    method contains : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#contains (obj))
        end [@@warning "-7"]
    

    method indexOf : 'any1. 'any1 -> int = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#indexOf (obj))
        end [@@warning "-7"]
    

    method lastIndexOf : 'any1. 'any1 -> int = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#lastIndexOf (obj))
        end [@@warning "-7"]
    

    method elementAt ((index : int)) : E.e =
        begin
        ((super#elementAt (index)) :> E.e)
        end [@@warning "-7"]
    

    method firstElement () : E.e =
        begin
        ((super#firstElement ()) :> E.e)
        end [@@warning "-7"]
    

    method lastElement () : E.e =
        begin
        ((super#lastElement ()) :> E.e)
        end [@@warning "-7"]
    

    method setElementAt : 'any1. 'any1 * int -> unit = fun (obj, (index : int)) ->
        let obj = Obj.repr obj in
        begin
        ignore (super#setElementAt ((Obj.magic obj), index))
        end [@@warning "-7-20"]
    

    method removeElementAt ((index : int)) : unit =
        begin
        ignore (super#removeElementAt (index))
        end [@@warning "-7"]
    

    method addElement : 'any1. 'any1 -> unit = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        ignore (super#addElement ((Obj.magic obj)))
        end [@@warning "-7-20"]
    

    method insertElementAt : 'any1. 'any1 * int -> unit = fun (obj, (index : int)) ->
        let obj = Obj.repr obj in
        begin
        ignore (super#insertElementAt ((Obj.magic obj), index))
        end [@@warning "-7-20"]
    

    method removeElement : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#removeElement (obj))
        end [@@warning "-7"]
    

    method removeAllElements () : unit =
        begin
        ignore (super#removeAllElements ())
        end [@@warning "-7"]
    

    method clone () : Obj.t =
        begin
        (Obj.repr ((super#clone ())))
        end [@@warning "-7"]
    

    method toArray () : Obj.t array =
        begin
        (super#toArray ())
        end [@@warning "-7"]
    

    method set : 'any2. int * 'any2 -> E.e = fun ((index : int), element) ->
        let element = Obj.repr element in
        begin
        ((super#set (index, (Obj.magic element))) :> E.e)
        end [@@warning "-7-20"]
    

    method add : 'any1. 'any1 -> bool = fun (element) ->
        let element = Obj.repr element in
        begin
        (super#add ((Obj.magic element)))
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> bool = fun (obj) ->
        let obj = Obj.repr obj in
        begin
        (super#remove (obj))
        end [@@warning "-7"]
    

    (* Java overload add(INT, E) is not converted: OCaml has one method per name *)
    

    (* Java overload remove(INT) is not converted: OCaml has one method per name *)
    

    method clear () : unit =
        begin
        ignore (super#clear ())
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
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr super))
        end [@@warning "-7"]
    

    method removeRange ((fromIndex : int), (toIndex : int)) : unit =
        begin
        ignore (super#removeRange (fromIndex, toIndex))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ABVector" (fun arguments -> Obj.repr (new aBVector (Obj.obj arguments)))


