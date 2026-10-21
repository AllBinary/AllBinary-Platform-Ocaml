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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.media.ScaleProperties *)

let nULL_INDEXED_ANIMATION_ARRAY : IndexedAnimation.indexedAnimation array = (Array.make (0) (Obj.magic 0))
let get_nULL_INDEXED_ANIMATION_ARRAY () = nULL_INDEXED_ANIMATION_ARRAY
let () = java_register_static "NullIndexedAnimationFactory.get_nULL_INDEXED_ANIMATION_ARRAY" (fun _ -> Obj.repr (get_nULL_INDEXED_ANIMATION_ARRAY ()))
class nullIndexedAnimationFactory () =
  object
    val mutable nULL_ANIMATION : Obj.t = Obj.repr 0
    method nULL_ANIMATION : 'r. 'r = Obj.magic nULL_ANIMATION
    method set_nULL_ANIMATION : 'v. 'v -> unit = fun value' -> nULL_ANIMATION <- Obj.repr value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((Obj.magic nULL_ANIMATION)))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((Obj.magic nULL_ANIMATION)))
        end [@@warning "-20"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        nULL_ANIMATION <- (Obj.repr (new NullIndexedAnimationInner.nullIndexedAnimationInner ()));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "NullIndexedAnimationFactory" (fun arguments -> Obj.repr (new nullIndexedAnimationFactory (Obj.obj arguments)))

let nULL_INDEXED_ANIMATION_FACTORY = ref ((new nullIndexedAnimationFactory ()))
let get_nULL_INDEXED_ANIMATION_FACTORY () = !nULL_INDEXED_ANIMATION_FACTORY
let set_nULL_INDEXED_ANIMATION_FACTORY value' = nULL_INDEXED_ANIMATION_FACTORY := value'
let () = java_register_static "NullIndexedAnimationFactory.get_nULL_INDEXED_ANIMATION_FACTORY" (fun _ -> Obj.repr (get_nULL_INDEXED_ANIMATION_FACTORY ()))

let getFactoryInstance () =
        begin
        !nULL_INDEXED_ANIMATION_FACTORY
        end
let () = java_register_static "NullIndexedAnimationFactory.getFactoryInstance" (fun arguments -> Obj.repr (getFactoryInstance (Obj.obj arguments)))


