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
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.cache.CacheableInterface *)

class imageArrayRotationAnimationCacheable ((anyType : Obj.t), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit AdjustedImageArrayRotationAnimation.adjustedImageArrayRotationAnimation ((((Obj.magic anyType))#getImageArray ()), (((Obj.magic anyType))#getAngleInfoP ()), (((Obj.magic anyType))#getTotalAngle ()), (((Obj.magic anyType))#getDx ()), (((Obj.magic anyType))#getDy ()), animationBehavior)
    
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ImageArrayRotationAnimationCacheable" (fun arguments -> Obj.repr (new imageArrayRotationAnimationCacheable (Obj.obj arguments)))


