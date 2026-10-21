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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "PlatformKeyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class platformKeyFactory () =
  object
    

    method getString ((keyCode : int)) : string =
        begin
        (PCGameKey.getString (keyCode))
        end
    

    method isSubmission : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isSubmission ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isDelete ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isBackSpace : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isBackSpace ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isUp : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isUp ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isDown : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isDown ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isEnter : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isEnter ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isLeft : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isLeft ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isRight : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        ((Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ())))#isRight ((Obj.magic input)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PlatformKeyFactory" (fun arguments -> Obj.repr (new platformKeyFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new platformKeyFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "PlatformKeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


