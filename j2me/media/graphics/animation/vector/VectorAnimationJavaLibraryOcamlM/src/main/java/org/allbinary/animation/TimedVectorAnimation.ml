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
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class timedVectorAnimation ((currentPoints : int array array array), (basicColor : BasicColor.basicColor), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit VectorAnimation.vectorAnimation (currentPoints, basicColor, animationBehavior) as super
    val mutable timeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeElapsedHelper = timeElapsedHelper
    method set_timeElapsedHelper value' = timeElapsedHelper <- value'
    
    

    method nextFrame () : unit =
        begin
        if (timeElapsedHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            ignore (super#nextFrame ())
        end
        end [@@warning "-7"]

    initializer
      begin
        timeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (200)) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TimedVectorAnimation" (fun arguments -> Obj.repr (new timedVectorAnimation (Obj.obj arguments)))


