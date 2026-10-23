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
(* package org.allbinary.game.physics.velocity *)

open Allbinary_java [@@warning "-33"]

class velocityProperties ((maxForwardVelocity_arg : int), (maxReverseVelocity_arg : int)) =
  object (self)
    inherit BasicVelocityProperties.basicVelocityProperties () as super
    val mutable maxForwardVelocity : int = 0
    method maxForwardVelocity = maxForwardVelocity
    method set_maxForwardVelocity value' = maxForwardVelocity <- value'
    val mutable maxReverseVelocity : int = 0
    method maxReverseVelocity = maxReverseVelocity
    method set_maxReverseVelocity value' = maxReverseVelocity <- value'
    
    

    method getMaxForwardVelocity () : int =
        begin
        maxForwardVelocity
        end [@@warning "-7"]
    

    method setMaxForwardVelocity ((maxForwardVelocity_arg : int)) : unit =
        begin
        maxForwardVelocity <- maxForwardVelocity_arg
        end [@@warning "-7"]
    

    method getMaxReverseVelocity () : int =
        begin
        maxReverseVelocity
        end [@@warning "-7"]
    

    method setMaxReverseVelocity ((maxReverseVelocity_arg : int)) : unit =
        begin
        maxReverseVelocity <- maxReverseVelocity_arg
        end [@@warning "-7"]
    

    method limitMaxXYForwardVelocity () : unit =
        begin
        (self#limitMaxXYVelocity ((self#getMaxForwardVelocity ())))
        end [@@warning "-7"]
    

    method limitMaxXYReverseVelocity () : unit =
        begin
        (self#limitMaxXYVelocity ((self#getMaxReverseVelocity ())))
        end [@@warning "-7"]
    

    method limitMaxYForwardVelocity () : unit =
        begin
        (self#limitMaxYVelocity ((self#getMaxForwardVelocity ())))
        end [@@warning "-7"]
    

    method limitMaxYReverseVelocity () : unit =
        begin
        (self#limitMaxYVelocity ((self#getMaxReverseVelocity ())))
        end [@@warning "-7"]
    

    method limitMaxXForwardVelocity () : unit =
        begin
        (self#limitMaxXVelocity ((self#getMaxForwardVelocity ())))
        end [@@warning "-7"]
    

    method limitMaxXReverseVelocity () : unit =
        begin
        (self#limitMaxXVelocity ((self#getMaxReverseVelocity ())))
        end [@@warning "-7"]
    

    method isOverXYMaxForwardVelocity () : bool =
        begin
        (self#isOverXYMaxVelocity ((self#getMaxForwardVelocity ())))
        end [@@warning "-7"]
    

    method isOverXYMaxReverseVelocity () : bool =
        begin
        (self#isOverXYMaxVelocity ((self#getMaxReverseVelocity ())))
        end [@@warning "-7"]
    

    method limitXYToForwardAndReverseMaxVelocity () : unit =
        begin
        (self#limitMaxXYForwardVelocity ());
        (self#limitMaxXYReverseVelocity ())
        end [@@warning "-7"]
    

    method limitMaxXYVelocity ((maxVelocity : int)) : unit =
        begin
        (self#limitMaxXVelocity (maxVelocity));
        (self#limitMaxYVelocity (maxVelocity))
        end [@@warning "-7"]
    

    method limitMaxPositiveYVelocity ((maxVelocity : int)) : unit =
        begin
        if (((self#velocityYBasicDecimal)#getUnscaled ()) > maxVelocity) then begin
            ignore ((self#velocityYBasicDecimal)#setint (maxVelocity))
        end
        end [@@warning "-7"]
    

    method limitMaxNegativeYVelocity ((maxVelocity : int)) : unit =
        begin
        if (((self#velocityYBasicDecimal)#getUnscaled ()) < (-maxVelocity)) then begin
            ignore ((self#velocityYBasicDecimal)#setint ((-maxVelocity)))
        end
        end [@@warning "-7"]
    

    method limitMaxYVelocity ((maxVelocity : int)) : unit =
        begin
        (self#limitMaxPositiveYVelocity (maxVelocity));
        (self#limitMaxNegativeYVelocity (maxVelocity))
        end [@@warning "-7"]
    

    method limitMaxXVelocity ((maxVelocity : int)) : unit =
        begin
        if (((self#velocityXBasicDecimal)#getUnscaled ()) > maxVelocity) then begin
            ignore ((self#velocityXBasicDecimal)#setint (maxVelocity))
        end;
        if (((self#velocityXBasicDecimal)#getUnscaled ()) < (-maxVelocity)) then begin
            ignore ((self#velocityXBasicDecimal)#setint ((-maxVelocity)))
        end
        end [@@warning "-7"]
    

    method isOverXYMaxVelocity ((maxVelocity : int)) : bool =
        try
        begin
        if (((self#velocityXBasicDecimal)#getUnscaled ()) > maxVelocity) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if (((self#velocityXBasicDecimal)#getUnscaled ()) < (-maxVelocity)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if (((self#velocityYBasicDecimal)#getUnscaled ()) > maxVelocity) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if (((self#velocityYBasicDecimal)#getUnscaled ()) < (-maxVelocity)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setVelocityi ((magnitude : int), (angle : int), (otherAngle : int)) : unit =
        begin
        ignore (super#setVelocityi (magnitude, angle, otherAngle));
        (self#limitXYToForwardAndReverseMaxVelocity ())
        end [@@warning "-7"]
    

    method addVelocityi ((magnitude : int), (angle : int), (otherAngle : int)) : unit =
        begin
        ignore (super#addVelocityi (magnitude, angle, otherAngle));
        (self#limitXYToForwardAndReverseMaxVelocity ())
        end [@@warning "-7"]

    initializer
      begin
        maxForwardVelocity <- 0;
        maxReverseVelocity <- 0;
        ();
        (self#setMaxForwardVelocity (maxForwardVelocity_arg));
        (self#setMaxReverseVelocity (maxReverseVelocity_arg))
      end
  end
let () = java_register_constructor "VelocityProperties" (fun arguments -> Obj.repr (new velocityProperties (Obj.obj arguments)))

let nULL_VELOCITY_PROPERTIES = (new velocityProperties (0, 0))
let get_nULL_VELOCITY_PROPERTIES () = nULL_VELOCITY_PROPERTIES
let () = java_register_static "VelocityProperties.get_nULL_VELOCITY_PROPERTIES" (fun _ -> Obj.repr (get_nULL_VELOCITY_PROPERTIES ()))


