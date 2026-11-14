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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.ScaleProperties *)

class nullRotationAnimationFactory () =
  object
    val mutable nULL_ROTATION_ANIMATION_ARRAY : RotationAnimation.rotationAnimation array = (Obj.magic 0)
    method nULL_ROTATION_ANIMATION_ARRAY = nULL_ROTATION_ANIMATION_ARRAY
    method set_nULL_ROTATION_ANIMATION_ARRAY value' = nULL_ROTATION_ANIMATION_ARRAY <- value'
    val mutable nULL_ANIMATION : Animation.animation = (Obj.magic 0)
    method nULL_ANIMATION = nULL_ANIMATION
    method set_nULL_ANIMATION value' = nULL_ANIMATION <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic (nULL_ANIMATION))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic (nULL_ANIMATION))
        end [@@warning "-20"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        nULL_ROTATION_ANIMATION_ARRAY <- (Array.make (0) (Obj.magic 0));
        nULL_ANIMATION <- ((new NullRotationAnimation2.nullRotationAnimation2 ()) :> Animation.animation);
        ();
        ()
      end
  end
let () = java_register_constructor "NullRotationAnimationFactory" (fun arguments -> Obj.repr (new nullRotationAnimationFactory (Obj.obj arguments)))

let nULL_ROTATION_ANIMATION_FACTORY = ref ((new nullRotationAnimationFactory ()))
let get_nULL_ROTATION_ANIMATION_FACTORY () = !nULL_ROTATION_ANIMATION_FACTORY
let set_nULL_ROTATION_ANIMATION_FACTORY value' = nULL_ROTATION_ANIMATION_FACTORY := value'
let () = java_register_static "NullRotationAnimationFactory.get_nULL_ROTATION_ANIMATION_FACTORY" (fun _ -> Obj.repr (get_nULL_ROTATION_ANIMATION_FACTORY ()))
let () = java_register_static "NullRotationAnimationFactory.set_nULL_ROTATION_ANIMATION_FACTORY" (fun value' -> set_nULL_ROTATION_ANIMATION_FACTORY (Obj.obj value'); Obj.repr ())

let getFactoryInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!nULL_ROTATION_ANIMATION_FACTORY))
        end
let () = java_register_static "NullRotationAnimationFactory.getFactoryInstance" (fun arguments -> Obj.repr (getFactoryInstance (Obj.obj arguments)))


