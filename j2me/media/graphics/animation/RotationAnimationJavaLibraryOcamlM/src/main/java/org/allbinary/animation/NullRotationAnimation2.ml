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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class nullRotationAnimation2 () =
  object
    inherit NullRotationAnimation.nullRotationAnimation ((AngleInfo.getInstance ((AngleFactory.getInstance ())#qUARTER_TOTAL_ANGLE)), (CircularIndexUtil.createInstance (4)), ((new IndexedAnimationBehavior.indexedAnimationBehavior (1, 250)) : IndexedAnimationBehavior.indexedAnimationBehavior :> AnimationBehavior.animationBehavior))
    
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NullRotationAnimation2" (fun arguments -> Obj.repr (new nullRotationAnimation2 (Obj.obj arguments)))


