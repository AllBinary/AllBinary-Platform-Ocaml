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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.string.CommonStrings *)

class indexedAnimation ((animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit Animation.animation ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable animationBehaviorP : AnimationBehavior.animationBehavior = (Obj.magic 0)
    method animationBehaviorP = animationBehaviorP
    method set_animationBehaviorP value' = animationBehaviorP <- value'
    
    

    method getAnimationBehavior () : AnimationBehavior.animationBehavior =
        begin
        (animationBehaviorP :> AnimationBehavior.animationBehavior)
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        ignore (animationBehaviorP#reset ());
        (self#setFrame (0))
        end [@@warning "-7"]
    

    method setFrame ((_index : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        0
        end [@@warning "-7"]
    

    method getAnimationSize () : int =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        0
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method isLastFrame () : bool =
        try
        begin
        if ((self#getFrame ()) = ((self#getSize ()) - 1)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method setState : 'any1. 'any1 -> unit = fun (indexedAnimation) ->
        let indexedAnimation = Obj.repr indexedAnimation in
        begin
        (self#setFrame (((Obj.magic indexedAnimation)#getFrame ())));
        ignore (self#setDx (((Obj.magic indexedAnimation)#getDx ())));
        ignore (self#setDy (((Obj.magic indexedAnimation)#getDy ())))
        end [@@warning "-7-20"]
    

    method getWidth () : int =
        begin
        0
        end [@@warning "-7"]
    

    method getHeight () : int =
        begin
        0
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        animationBehaviorP <- animationBehavior
      end
  end [@@warning "-20"]
let () = java_register_constructor "IndexedAnimation" (fun arguments -> Obj.repr (new indexedAnimation (Obj.obj arguments)))


