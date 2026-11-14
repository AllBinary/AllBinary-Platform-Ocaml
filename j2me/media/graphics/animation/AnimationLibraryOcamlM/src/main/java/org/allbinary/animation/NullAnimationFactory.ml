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

class nullAnimationFactory () =
  object (self)
    val mutable nULL_ANIMATION : Animation.animation = (Obj.magic 0)
    method nULL_ANIMATION = nULL_ANIMATION
    method set_nULL_ANIMATION value' = nULL_ANIMATION <- value'
    val mutable eMPTY_ARRAY : Animation.animation array = (Obj.magic 0)
    method eMPTY_ARRAY = eMPTY_ARRAY
    method set_eMPTY_ARRAY value' = eMPTY_ARRAY <- value'
    
    

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
        nULL_ANIMATION <- ((object (self)
        inherit Animation.animation () as super
        

        method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
            begin
            ()
            end [@@warning "-20"]
    end) :> Animation.animation);
        eMPTY_ARRAY <- (Array.make (0) (Obj.magic 0));
        ();
        ()
      end
  end
let () = java_register_constructor "NullAnimationFactory" (fun arguments -> Obj.repr (new nullAnimationFactory (Obj.obj arguments)))

let nULL_NOT_FOR_USE_ANIMATION_FACTORY = ref ((new nullAnimationFactory ()))
let get_nULL_NOT_FOR_USE_ANIMATION_FACTORY () = !nULL_NOT_FOR_USE_ANIMATION_FACTORY
let set_nULL_NOT_FOR_USE_ANIMATION_FACTORY value' = nULL_NOT_FOR_USE_ANIMATION_FACTORY := value'
let () = java_register_static "NullAnimationFactory.get_nULL_NOT_FOR_USE_ANIMATION_FACTORY" (fun _ -> Obj.repr (get_nULL_NOT_FOR_USE_ANIMATION_FACTORY ()))
let () = java_register_static "NullAnimationFactory.set_nULL_NOT_FOR_USE_ANIMATION_FACTORY" (fun value' -> set_nULL_NOT_FOR_USE_ANIMATION_FACTORY (Obj.obj value'); Obj.repr ())

let nULL_ANIMATION_FACTORY = ref ((new nullAnimationFactory ()))
let get_nULL_ANIMATION_FACTORY () = !nULL_ANIMATION_FACTORY
let set_nULL_ANIMATION_FACTORY value' = nULL_ANIMATION_FACTORY := value'
let () = java_register_static "NullAnimationFactory.get_nULL_ANIMATION_FACTORY" (fun _ -> Obj.repr (get_nULL_ANIMATION_FACTORY ()))
let () = java_register_static "NullAnimationFactory.set_nULL_ANIMATION_FACTORY" (fun value' -> set_nULL_ANIMATION_FACTORY (Obj.obj value'); Obj.repr ())

let getFactoryInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!nULL_ANIMATION_FACTORY))
        end
let () = java_register_static "NullAnimationFactory.getFactoryInstance" (fun arguments -> Obj.repr (getFactoryInstance (Obj.obj arguments)))


