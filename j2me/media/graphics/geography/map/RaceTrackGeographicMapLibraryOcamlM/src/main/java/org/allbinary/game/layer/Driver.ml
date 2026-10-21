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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)

class driver ((turnSpeed_arg : int), (trackPathSelectionSkill_arg : int), (aggression_arg : Aggression.aggression)) =
  object (self)
    val mutable turnSpeed : int = (Obj.magic 0)
    method turnSpeed = turnSpeed
    method set_turnSpeed value' = turnSpeed <- value'
    val mutable trackPathSelectionSkill : int = (Obj.magic 0)
    method trackPathSelectionSkill = trackPathSelectionSkill
    method set_trackPathSelectionSkill value' = trackPathSelectionSkill <- value'
    val mutable aggression : Aggression.aggression = (Obj.magic 0)
    method aggression = aggression
    method set_aggression value' = aggression <- value'
    
    

    method getTurnSpeed () : int =
        begin
        turnSpeed
        end
    

    method setTurnSpeed ((turnSpeed_arg : int)) : unit =
        begin
        turnSpeed <- turnSpeed_arg
        end
    

    method getTrackPathSelectionSkill () : int =
        begin
        trackPathSelectionSkill
        end
    

    method setTrackPathSelectionSkill ((trackPathSelectionSkill_arg : int)) : unit =
        begin
        trackPathSelectionSkill <- trackPathSelectionSkill_arg
        end
    

    method getAggression () : Aggression.aggression =
        begin
        (aggression :> Aggression.aggression)
        end
    

    method setAggression : 'any1. 'any1 -> unit = fun (aggression_arg) ->
        let aggression_arg = Obj.repr aggression_arg in
        begin
        aggression <- (Obj.magic aggression_arg)
        end [@@warning "-20"]

    initializer
      begin
        turnSpeed <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        trackPathSelectionSkill <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        ();
        ();
        (self#setTurnSpeed (turnSpeed_arg));
        (self#setTrackPathSelectionSkill (trackPathSelectionSkill_arg));
        aggression <- aggression_arg
      end
  end
let () = java_register_constructor "Driver" (fun arguments -> Obj.repr (new driver (Obj.obj arguments)))

let nULL_DRIVER = (new driver (((SmallIntegerSingletonFactory.getInstance ())#getAt (0)), ((SmallIntegerSingletonFactory.getInstance ())#getAt (0)), (new Aggression.aggression (((SmallIntegerSingletonFactory.getInstance ())#getAt (0)), ((SmallIntegerSingletonFactory.getInstance ())#getAt (0)), ((SmallIntegerSingletonFactory.getInstance ())#getAt (0))))))
let get_nULL_DRIVER () = nULL_DRIVER
let () = java_register_static "Driver.get_nULL_DRIVER" (fun _ -> Obj.repr (get_nULL_DRIVER ()))


