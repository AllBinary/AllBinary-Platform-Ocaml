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
(* package org.allbinary.animation.compound *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class simultaneousCompoundIndexAnimation ((animationInterfaceArray_arg : IndexedAnimation.indexedAnimation array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable animationInterfaceArray : IndexedAnimation.indexedAnimation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    
    

    method setFrame ((frameIndex : int)) : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#setFrame (frameIndex))
        done
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (animationInterfaceArray.(0)#getFrame ())
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        (animationInterfaceArray.(0)#getAnimationSize ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (animationInterfaceArray.(0)#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#previousFrame ())
        done
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#nextFrame ())
        done
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#paintXY ((Obj.magic graphics), x, y))
        done
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        done
        end [@@warning "-7-20"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#set ((Obj.magic gl)))
        done
        end [@@warning "-7-20"]
    

    method getAnimationInterfaceArray () : IndexedAnimation.indexedAnimation array =
        begin
        animationInterfaceArray
        end [@@warning "-7"]
    

    method setAnimationInterfaceArray ((animationInterfaceArray_arg : IndexedAnimation.indexedAnimation array)) : unit =
        begin
        animationInterfaceArray <- animationInterfaceArray_arg
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterfaceArray <- animationInterfaceArray_arg
      end
  end
let () = java_register_constructor "SimultaneousCompoundIndexAnimation" (fun arguments -> Obj.repr (new simultaneousCompoundIndexAnimation (Obj.obj arguments)))


