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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class compoundIndexedAnimation ((animationInterfaceArray_arg : Animation.animation array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable animationInterfaceArray : Animation.animation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    
    

    method setFrame ((index : int)) : unit =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic animationInterfaceArray.((circularIndexUtil#getIndex ()))) :> IndexedAnimation.indexedAnimation)) in ();
        ignore (!indexedAnimation#setFrame (index))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic animationInterfaceArray.((circularIndexUtil#getIndex ()))) :> IndexedAnimation.indexedAnimation)) in ();
        (!indexedAnimation#getFrame ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic animationInterfaceArray.((circularIndexUtil#getIndex ()))) :> IndexedAnimation.indexedAnimation)) in ();
        (!indexedAnimation#getSize ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        let indexedAnimation : IndexedAnimation.indexedAnimation ref = ref (((Obj.magic animationInterfaceArray.((circularIndexUtil#getIndex ()))) :> IndexedAnimation.indexedAnimation)) in ();
        ignore (!indexedAnimation#previousFrame ())
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
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#nextFrame ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterfaceArray.((circularIndexUtil#getIndex ()))#paintThreedXYZ ((Obj.magic graphics), x, y, z))
        end [@@warning "-7-20"]
    

    method getCurrentAnimation : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterfaceArray.((circularIndexUtil#getIndex ())))))
        end [@@warning "-7"]
    

    method nextAnimation () : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#next ());
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method previousAnimation () : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#previous ());
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method setAnimation ((index : int)) : unit =
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        ignore (circularIndexUtil#setIndex (index));
        (self#setFrame (!frame))
        end [@@warning "-7"]
    

    method getAnimationInterfaceArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (animationInterfaceArray))
        end [@@warning "-7"]
    

    method setAnimationInterfaceArray ((animationInterfaceArray_arg : Animation.animation array)) : unit =
        begin
        animationInterfaceArray <- animationInterfaceArray_arg
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let index : int ref = ref ((Array.length animationInterfaceArray)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (animationInterfaceArray.(!index)#set ((Obj.magic gl)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterfaceArray <- animationInterfaceArray_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length animationInterfaceArray)))
      end
  end
let () = java_register_constructor "CompoundIndexedAnimation" (fun arguments -> Obj.repr (new compoundIndexedAnimation (Obj.obj arguments)))


