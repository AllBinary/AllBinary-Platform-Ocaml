(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking *)
(* import org.allbinary.util.BasicArrayList *)

class nullVehicleLayer () =
  object
    

    method getName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGroupInterface : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setPosition ((_x : int), (_y : int), (_z : int)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHeight () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWidth () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHalfHeight () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHalfWidth () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getXP () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getYP () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getZP () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getX2 () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getY2 () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getZ2 () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isVisible () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method moveDXYZ ((_dx : int), (_dy : int), (_dz : int)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setVisible ((_visible : bool)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method implmentsTickableInterface () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method implmentsCollidableInterface () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method implmentsGameInputInterface () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method implmentsArtificialIntelligenceCompositeInterface () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getType () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getVehicleProperties () : VehicleProperties.vehicleProperties =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGameKeyEventList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getSpeedBasicDecimal () : BasicDecimal.basicDecimal =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isReadyForExplosion () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getRotationAnimationInterface () : RotationAnimation.rotationAnimation =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setRotationAnimationInterface : 'any1. 'any1 -> unit = fun (_animationInterface) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method isDestroyed () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isFinish () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getFinalPosition () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method handleFinish () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGeographicMapCellPositionTracking () : GeographicMapCellPositionTracking.geographicMapCellPositionTracking =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGeographicMapCellHistoryArray () : GeographicMapCellHistory.geographicMapCellHistory array =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setGeographicMapCellHistoryArray ((_geographicMapCellHistory : GeographicMapCellHistory.geographicMapCellHistory array)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullVehicleLayer" (fun arguments -> Obj.repr (new nullVehicleLayer (Obj.obj arguments)))

let nULL_VEHICLE_LAYER = (new nullVehicleLayer ())
let get_nULL_VEHICLE_LAYER () = nULL_VEHICLE_LAYER
let () = java_register_static "NullVehicleLayer.get_nULL_VEHICLE_LAYER" (fun _ -> Obj.repr (get_nULL_VEHICLE_LAYER ()))


