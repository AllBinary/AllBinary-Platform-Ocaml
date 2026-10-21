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
[@@@warning "-20"]
(* import org.allbinary.logic.math.BasicDecimal *)

class dragVelocityBehavior () =
  object
    inherit VelocityBehaviorBase.velocityBehaviorBase ()
    

    method reduce : 'any1. 'any1 * int * int -> unit = fun (velocityProperties, (nominator : int), (denominator : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        if ((((Obj.magic velocityProperties)#getVelocityXBasicDecimalP ())#getUnscaled ()) != 0) then begin
            let basicDecimal : BasicDecimal.basicDecimal ref = ref ((((Obj.magic velocityProperties)#getVelocityXBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
            ignore (!basicDecimal#multiplyint (nominator));
            ignore (!basicDecimal#divideint (denominator))
        end;
        if ((((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#getUnscaled ()) != 0) then begin
            let basicDecimal : BasicDecimal.basicDecimal ref = ref ((((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
            ignore (!basicDecimal#multiplyint (nominator));
            ignore (!basicDecimal#divideint (denominator))
        end
        end [@@warning "-7-20"]
    

    method reduceX : 'any1. 'any1 * int * int -> unit = fun (velocityProperties, (nominator : int), (denominator : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        let basicDecimal : BasicDecimal.basicDecimal ref = ref ((((Obj.magic velocityProperties)#getVelocityXBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
        if ((!basicDecimal#getUnscaled ()) != 0) then begin
            ignore (!basicDecimal#multiplyint (nominator));
            ignore (!basicDecimal#divideint (denominator))
        end
        end [@@warning "-7-20"]
    

    method reduceY : 'any1. 'any1 * int * int -> unit = fun (velocityProperties, (nominator : int), (denominator : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        if ((((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#getUnscaled ()) != 0) then begin
            let basicDecimal : BasicDecimal.basicDecimal ref = ref ((((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
            ignore (!basicDecimal#multiplyint (nominator));
            ignore (!basicDecimal#divideint (denominator))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DragVelocityBehavior" (fun arguments -> Obj.repr (new dragVelocityBehavior (Obj.obj arguments)))

let instance = (new dragVelocityBehavior ())
let get_instance () = instance
let () = java_register_static "DragVelocityBehavior.get_instance" (fun _ -> Obj.repr (get_instance ()))


