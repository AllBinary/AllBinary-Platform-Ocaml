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
(* package org.allbinary.animation.caption *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.media.Player *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.AnimationEventHandler *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class captionIndexedAnimation (animationInterface_arg, (movieIndexedAnimationInterface_arg : IndexedAnimation.indexedAnimation), player_arg, (captionDx_arg : int), (captionDy_arg : int), (dx_arg : int), (dy_arg : int), (time_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable movieIndexedAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method movieIndexedAnimationInterface = movieIndexedAnimationInterface
    method set_movieIndexedAnimationInterface value' = movieIndexedAnimationInterface <- value'
    val mutable captionDx : int = 0
    method captionDx = captionDx
    method set_captionDx value' = captionDx <- value'
    val mutable captionDy : int = 0
    method captionDy = captionDy
    method set_captionDy value' = captionDy <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable time : int = 0
    method time = time
    method set_time value' = time <- value'
    val mutable eND_EVENT : AllBinaryEventObject.allBinaryEventObject = (Obj.magic 0)
    method eND_EVENT = eND_EVENT
    method set_eND_EVENT value' = eND_EVENT <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable player : Obj.t = Obj.repr 0
    method player : 'r. 'r = Obj.magic player
    method set_player : 'v. 'v -> unit = fun value' -> player <- Obj.repr value'
    
    

    method nextFrame () : unit =
        begin
        if (timeDelayHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            ignore (movieIndexedAnimationInterface#nextFrame ())
        end;
        if (self#isLastFrame ()) then begin
            ignore ((AnimationEventHandler.getInstance ())#fireEvent (eND_EVENT))
        end
        end [@@warning "-7"]
    

    method isLastFrame () : bool =
        try
        begin
        if ((movieIndexedAnimationInterface#getFrame ()) == ((self#getSize ()) - 1)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (movieIndexedAnimationInterface#previousFrame ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (movieIndexedAnimationInterface#setFrame (index))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (movieIndexedAnimationInterface#getFrame ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (movieIndexedAnimationInterface#getSize ())
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
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), (x + captionDx), (y + captionDy)));
        ignore (movieIndexedAnimationInterface#paintXY ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy)))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic animationInterface)#paintThreedXYZ ((Obj.magic graphics), (x + captionDx), (y + captionDy), z));
        ignore (movieIndexedAnimationInterface#paintThreedXYZ ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy), z))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterface <- Obj.repr (animationInterface_arg);
        movieIndexedAnimationInterface <- movieIndexedAnimationInterface_arg;
        captionDx <- captionDx_arg;
        captionDy <- captionDy_arg;
        dx <- dx_arg;
        dy <- dy_arg;
        time <- time_arg;
        eND_EVENT <- (new AllBinaryEventObject.allBinaryEventObject (self));
        let timePerFrame : int ref = ref ((time / (self#getSize ()))) in ();
        timeDelayHelper <- (new TimeDelayHelper.timeDelayHelper (!timePerFrame));
        player <- Obj.repr (player_arg);
        ignore ((Obj.magic player)#start ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "CaptionIndexedAnimation" (fun arguments -> Obj.repr (new captionIndexedAnimation (Obj.obj arguments)))


