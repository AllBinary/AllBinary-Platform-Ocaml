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
(* import org.allbinary.animation.special.SpecialAnimation *)
(* import org.allbinary.media.ScaleProperties *)

class nullSpecialAnimationFactory () =
  object
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((SpecialAnimation.getInstance ())))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((SpecialAnimation.getInstance ())))
        end [@@warning "-20"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullSpecialAnimationFactory" (fun arguments -> Obj.repr (new nullSpecialAnimationFactory (Obj.obj arguments)))

let nULL_SPECIAL_ANIMATION_FACTORY = ref ((new nullSpecialAnimationFactory ()))
let get_nULL_SPECIAL_ANIMATION_FACTORY () = !nULL_SPECIAL_ANIMATION_FACTORY
let set_nULL_SPECIAL_ANIMATION_FACTORY value' = nULL_SPECIAL_ANIMATION_FACTORY := value'
let () = java_register_static "NullSpecialAnimationFactory.get_nULL_SPECIAL_ANIMATION_FACTORY" (fun _ -> Obj.repr (get_nULL_SPECIAL_ANIMATION_FACTORY ()))

let getFactoryInstance () =
        begin
        !nULL_SPECIAL_ANIMATION_FACTORY
        end
let () = java_register_static "NullSpecialAnimationFactory.getFactoryInstance" (fun arguments -> Obj.repr (getFactoryInstance (Obj.obj arguments)))


