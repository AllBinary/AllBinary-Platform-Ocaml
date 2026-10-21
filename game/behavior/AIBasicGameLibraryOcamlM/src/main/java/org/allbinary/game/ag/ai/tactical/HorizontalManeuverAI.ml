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
(* package org.allbinary.game.ag.ai.tactical *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class horizontalManeuverAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable currentRelativeAngle : int = 0
    method currentRelativeAngle = currentRelativeAngle
    method set_currentRelativeAngle value' = currentRelativeAngle <- value'
    val mutable currentSpeed : int = 0
    method currentSpeed = currentSpeed
    method set_currentSpeed value' = currentSpeed <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let x : int ref = ref ((!ownerLayerInterface#getXP ())) in ();
        if (((!ownerLayerInterface#getXP ()) - currentSpeed) <= 0) then begin
            (self#reverse ());
            (self#drop ())
        end;
        if (((!ownerLayerInterface#getX2 ()) + currentSpeed) > ((DisplayInfoSingleton.getInstance ())#getLastWidth ())) then begin
            (self#reverse ());
            (self#accelerate ());
            (self#drop ())
        end;
        if (currentRelativeAngle = 0) then begin
            x := (!x + currentSpeed)
        end else if (currentRelativeAngle = 180) then begin
            x := (!x - currentSpeed)
        end;
        ignore (!ownerLayerInterface#setPosition (!x, (!ownerLayerInterface#getYP ()), (!ownerLayerInterface#getZP ())));
        if (currentRelativeAngle = 0) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))))
        end else if (currentRelativeAngle = 180) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ())))))
        end
        end [@@warning "-7-20"]
    

    method reverse () : unit =
        begin
        if (currentRelativeAngle = 180) then begin
            currentRelativeAngle <- 0
        end else if (currentRelativeAngle = 0) then begin
            currentRelativeAngle <- 180
        end
        end [@@warning "-7"]
    

    method accelerate () : unit =
        begin
        if (currentSpeed < 20) then begin
            currentSpeed <- currentSpeed + 1
        end
        end [@@warning "-7"]
    

    method drop () : unit =
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let y : int ref = ref ((!ownerLayerInterface#getYP ())) in ();
        if (((!ownerLayerInterface#getY2 ()) + (!ownerLayerInterface#getHeight ())) > ((DisplayInfoSingleton.getInstance ())#getLastHeight ())) then begin
            y := 0
        end else begin
            y := (!y + ((!ownerLayerInterface#getHeight ()) + 1))
        end;
        ignore (!ownerLayerInterface#setPosition ((!ownerLayerInterface#getXP ()), !y, (!ownerLayerInterface#getZP ())))
        end [@@warning "-7"]

    initializer
      begin
        currentRelativeAngle <- 0;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        currentSpeed <- 5
      end
  end
let () = java_register_constructor "HorizontalManeuverAI" (fun arguments -> Obj.repr (new horizontalManeuverAI (Obj.obj arguments)))


