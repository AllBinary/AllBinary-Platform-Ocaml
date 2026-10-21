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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class simultaneousCompoundIndexedAnimation (animationInterfaceArray_arg, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable animationInterfaceArray : Obj.t = Obj.repr 0
    method animationInterfaceArray : 'r. 'r = Obj.magic animationInterfaceArray
    method set_animationInterfaceArray : 'v. 'v -> unit = fun value' -> animationInterfaceArray <- Obj.repr value'
    
    

    method setFrame ((frameIndex : int)) : unit =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic 0) :> IndexedAnimation.indexedAnimation)) in ();
        let index : int ref = ref ((Array.length (Obj.magic animationInterfaceArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            indexedAnimation := (Obj.magic (Obj.magic animationInterfaceArray).(!index));
            ignore (!indexedAnimation#setFrame (frameIndex))
        done
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic (Obj.magic animationInterfaceArray).(0)) :> IndexedAnimation.indexedAnimation)) in ();
        (!indexedAnimation#getFrame ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic (Obj.magic animationInterfaceArray).(0)) :> IndexedAnimation.indexedAnimation)) in ();
        (!indexedAnimation#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic 0) :> IndexedAnimation.indexedAnimation)) in ();
        let index : int ref = ref ((Array.length (Obj.magic animationInterfaceArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            indexedAnimation := (Obj.magic (Obj.magic animationInterfaceArray).(!index));
            ignore (!indexedAnimation#previousFrame ())
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
    

    method nextFrame () : unit =
        begin
        let index : int ref = ref ((Array.length (Obj.magic animationInterfaceArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((Obj.magic animationInterfaceArray).(!index)#nextFrame ())
        done
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let size : int ref = ref ((Array.length (Obj.magic animationInterfaceArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic animationInterfaceArray).(index)#paintXY ((Obj.magic graphics), x, y))
        done
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let size : int ref = ref ((Array.length (Obj.magic animationInterfaceArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic animationInterfaceArray).(index)#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        done
        end [@@warning "-7-20"]
    

    method getAnimationInterfaceArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterfaceArray)))
        end [@@warning "-7"]
    

    method setAnimationInterfaceArray (animationInterfaceArray_arg) : unit =
        begin
        animationInterfaceArray <- Obj.repr (animationInterfaceArray_arg)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterfaceArray <- Obj.repr (animationInterfaceArray_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "SimultaneousCompoundIndexedAnimation" (fun arguments -> Obj.repr (new simultaneousCompoundIndexedAnimation (Obj.obj arguments)))


