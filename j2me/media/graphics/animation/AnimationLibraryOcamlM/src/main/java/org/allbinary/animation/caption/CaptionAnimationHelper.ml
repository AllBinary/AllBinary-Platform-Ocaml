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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.text.TextAnimation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class captionAnimationHelper ((captionAnimation_arg : Animation.animation), (captionDx : int), (captionDy : int), (dx : int), (dy : int)) =
  object
    inherit CaptionAnimationHelperBase.captionAnimationHelperBase ()
    val mutable timeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeHelper = timeHelper
    method set_timeHelper value' = timeHelper <- value'
    val mutable textAnimation : TextAnimation.textAnimation = (Obj.magic 0)
    method textAnimation = textAnimation
    method set_textAnimation value' = textAnimation <- value'
    val mutable captionAnimation : Animation.animation = (Obj.magic 0)
    method captionAnimation = captionAnimation
    method set_captionAnimation value' = captionAnimation <- value'
    val mutable animation : Animation.animation = (Obj.magic 0)
    method animation = animation
    method set_animation value' = animation <- value'
    
    

    method isShowing () : bool =
        try
        begin
        if ((Obj.repr animation) == (Obj.repr captionAnimation)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method tick () : unit =
        begin
        if (timeHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            animation <- ((NullAnimationFactory.getFactoryInstance ())#getInstance (0))
        end
        end [@@warning "-7"]
    

    method update : 'any2. string * 'any2 -> unit = fun ((message : string), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore (textAnimation#setBasicColorP ((Obj.magic basicColor)));
        ignore (textAnimation#setText (message));
        animation <- captionAnimation;
        ignore (timeHelper#setStartTimeTNT ())
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animation#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]

    initializer
      begin
        timeHelper <- ((new TimeDelayHelper.timeDelayHelper (620)) :> TimeDelayHelper.timeDelayHelper);
        textAnimation <- ((new TextAnimation.textAnimation ((StringUtil.getInstance ())#eMPTY_STRING, (AnimationBehavior.getInstance ()))) :> TextAnimation.textAnimation);
        ();
        animation <- (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)) :> Animation.animation);
        ();
        captionAnimation <- ((new CaptionAnimation.captionAnimation (captionAnimation_arg, (textAnimation : TextAnimation.textAnimation :> Animation.animation), captionDx, captionDy, dx, dy)) :> Animation.animation)
      end
  end
let () = java_register_constructor "CaptionAnimationHelper" (fun arguments -> Obj.repr (new captionAnimationHelper (Obj.obj arguments)))


