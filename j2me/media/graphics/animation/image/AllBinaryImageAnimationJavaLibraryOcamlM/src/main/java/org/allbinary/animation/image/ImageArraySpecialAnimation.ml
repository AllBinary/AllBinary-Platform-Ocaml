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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.special.SpecialAnimationInterface *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class imageArraySpecialAnimation (imageArray, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageArrayAnimation.imageArrayAnimation (imageArray, animationBehavior) as super
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable loopCount : int = 0
    method loopCount = loopCount
    method set_loopCount value' = loopCount <- value'
    val mutable loopCountTotal : int = 0
    method loopCountTotal = loopCountTotal
    method set_loopCountTotal value' = loopCountTotal <- value'
    
    

    method getLoopCount () : int =
        begin
        loopCount
        end [@@warning "-7"]
    

    method setLastFrame () : unit =
        begin
        ignore ((self#circularIndexUtil)#setIndex ((((self#circularIndexUtil)#getSize ()) - 1)))
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        ignore (self#setFrame (((self#getSize ()) - 1)));
        loopCount <- 0
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        if ((self#getFrame ()) > 0) then begin
            if (timeDelayHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
                ignore (self#previousFrame ());
                if ((self#getFrame ()) == 0) then begin
                    loopCount <- loopCount + 1
                end
            end
        end
        end [@@warning "-7"]
    

    method isComplete () : bool =
        try
        begin
        if ((loopCount < loopCountTotal) || ((self#getFrame ()) != 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        let x = ref x in
        let y = ref y in
        begin
        x := (((DisplayInfoSingleton.getInstance ())#getLastHalfWidth ()) - ((((self#getImage (((self#circularIndexUtil)#getIndex ())))#getWidth ()) asr 1)));
        y := 5;
        ignore (super#paintXY ((Obj.magic graphics), !x, !y))
        end [@@warning "-7-20"]

    initializer
      begin
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (270)) :> TimeDelayHelper.timeDelayHelper);
        loopCount <- 0;
        loopCountTotal <- 1;
        ();
        (* super(...) is the inherit clause *) ();
        (self#reset ())
      end
  end
let () = java_register_constructor "ImageArraySpecialAnimation" (fun arguments -> Obj.repr (new imageArraySpecialAnimation (Obj.obj arguments)))


