(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.analog *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.CustomGPoint *)

class analogLocationInput ((playerId_arg : int)) =
  object
    val mutable playerId : int = 0
    method playerId = playerId
    method set_playerId value' = playerId <- value'
    val mutable customGPoint : CustomGPoint.customGPoint = (Obj.magic 0)
    method customGPoint = customGPoint
    method set_customGPoint value' = customGPoint <- value'
    val mutable rz : int = 0
    method rz = rz
    method set_rz value' = rz <- value'
    val mutable rightTrigger : int = 0
    method rightTrigger = rightTrigger
    method set_rightTrigger value' = rightTrigger <- value'
    val mutable leftTrigger : int = 0
    method leftTrigger = leftTrigger
    method set_leftTrigger value' = leftTrigger <- value'
    
    

    method getPlayerId () : int =
        begin
        playerId
        end
    

    method getCustomGPoint () : CustomGPoint.customGPoint =
        begin
        (customGPoint :> CustomGPoint.customGPoint)
        end
    

    method getRz () : int =
        begin
        rz
        end
    

    method setRz ((rz_arg : int)) : unit =
        begin
        rz <- rz_arg
        end
    

    method getRightTrigger () : int =
        begin
        rightTrigger
        end
    

    method setRightTrigger ((rightTrigger_arg : int)) : unit =
        begin
        rightTrigger <- rightTrigger_arg
        end
    

    method getLeftTrigger () : int =
        begin
        leftTrigger
        end
    

    method setLeftTrigger ((leftTrigger_arg : int)) : unit =
        begin
        leftTrigger <- leftTrigger_arg
        end

    initializer
      begin
        ();
        ();
        rz <- 0;
        rightTrigger <- 0;
        leftTrigger <- 0;
        ();
        playerId <- playerId_arg;
        customGPoint <- (new CustomGPoint.customGPoint (0, 0, 0))
      end
  end
let () = java_register_constructor "AnalogLocationInput" (fun arguments -> Obj.repr (new analogLocationInput (Obj.obj arguments)))

let nULL_ANALOG_LOCATION_INPUT = (new analogLocationInput ((-1)))
let get_nULL_ANALOG_LOCATION_INPUT () = nULL_ANALOG_LOCATION_INPUT
let () = java_register_static "AnalogLocationInput.get_nULL_ANALOG_LOCATION_INPUT" (fun _ -> Obj.repr (get_nULL_ANALOG_LOCATION_INPUT ()))


