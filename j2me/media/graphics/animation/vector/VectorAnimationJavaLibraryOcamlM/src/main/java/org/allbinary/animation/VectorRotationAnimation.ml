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
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)

class vectorRotationAnimation ((currentPoints : int array array array), (basicColor : BasicColor.basicColor), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit VectorBaseRotationAnimation.vectorBaseRotationAnimation ((AngleInfo.getInstance ((java_to_int (Obj.repr ((((AngleFactory.getInstance ())#tOTAL_ANGLE / (Array.length currentPoints)))))))), currentPoints, basicColor, animationBehavior) as super
    
    

    method setFrameByDirection : 'any1. 'any1 -> unit = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        let angle : Angle.angle ref = ref ((((self#directionUtil)#getFrameAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        (self#adjustFrameToAngle (!angle))
        end [@@warning "-7-20"]
    

    method setFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        (self#adjustFrameToAngle ((Obj.magic angle)))
        end [@@warning "-7-20"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (super#setFrame (index));
        ignore ((self#angleInfo)#adjustAngle ((self#getFrame ())))
        end [@@warning "-7"]
    

    method adjustFrame ((newAngle : int)) : unit =
        begin
        (self#setFrame (((self#frameUtil)#getFrameForAngle (newAngle, (java_to_int (Obj.repr ((((self#angleInfo)#getAngleIncrementInfo ())#getAngleIncrement ()))))))))
        end [@@warning "-7"]
    

    method adjustFrameToAngle : 'any1. 'any1 -> unit = fun (newAngle) ->
        let newAngle = Obj.repr newAngle in
        begin
        (self#adjustFrame (((Obj.magic newAngle)#getValue ())))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#angleInfo)#adjustAngle ((self#getFrame ())))
      end
  end
let () = java_register_constructor "VectorRotationAnimation" (fun arguments -> Obj.repr (new vectorRotationAnimation (Obj.obj arguments)))


