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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.math.AngleInfo *)

class imageArrayRotationAnimationInfo (imageArray_arg, (angleIncrement_arg : int), (totalAngle_arg : int), (dx_arg : int), (dy_arg : int)) =
  object
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    val mutable totalAngle : int = 0
    method totalAngle = totalAngle
    method set_totalAngle value' = totalAngle <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method setImageArray : 'any1. 'any1 -> unit = fun (imageArray_arg) ->
        let imageArray_arg = Obj.repr imageArray_arg in
        begin
        imageArray <- Obj.repr ((Obj.magic imageArray_arg))
        end [@@warning "-20"]
    

    method getImageArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic imageArray)))
        end
    

    method getAngleInfoP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((AngleInfo.getInstance (angleIncrement))))
        end
    

    method setTotalAngle ((totalAngle_arg : int)) : unit =
        begin
        totalAngle <- totalAngle_arg
        end
    

    method getTotalAngle () : int =
        begin
        totalAngle
        end
    

    method setDx ((dx_arg : int)) : unit =
        begin
        dx <- dx_arg
        end
    

    method getDx () : int =
        begin
        dx
        end
    

    method setDy ((dy_arg : int)) : unit =
        begin
        dy <- dy_arg
        end
    

    method getDy () : int =
        begin
        dy
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        imageArray <- Obj.repr (imageArray_arg);
        angleIncrement <- angleIncrement_arg;
        totalAngle <- totalAngle_arg;
        dx <- dx_arg;
        dy <- dy_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageArrayRotationAnimationInfo" (fun arguments -> Obj.repr (new imageArrayRotationAnimationInfo (Obj.obj arguments)))


