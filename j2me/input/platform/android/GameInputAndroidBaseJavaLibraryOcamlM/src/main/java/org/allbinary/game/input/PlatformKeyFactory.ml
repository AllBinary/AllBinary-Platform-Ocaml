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
    val mutable androidKeyFactory : AndroidKeyFactory.androidKeyFactory = (Obj.magic 0)
    method androidKeyFactory = androidKeyFactory
    method set_androidKeyFactory value' = androidKeyFactory <- value'
    

    method getString ((keyCode : int)) : string =
        begin
        (AndroidGameKey.getString (keyCode))
        end
    

    method isSubmission : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isSubmission ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isDelete : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isDelete ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isBackSpace : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isBackSpace ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isLeft : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isLeft ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isRight : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isRight ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isUp : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isUp ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isDown : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isDown ((Obj.magic input)))
        end [@@warning "-20"]
    

    method isEnter : 'any1. 'any1 -> bool = fun (input) ->
        let input = Obj.repr input in
        begin
        (androidKeyFactory#isEnter ((Obj.magic input)))
        end [@@warning "-20"]

    initializer
      begin
        androidKeyFactory <- ((ActivityFractureControllerUtilFactory.getInstance ()) :> AndroidKeyFactory.androidKeyFactory);
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


