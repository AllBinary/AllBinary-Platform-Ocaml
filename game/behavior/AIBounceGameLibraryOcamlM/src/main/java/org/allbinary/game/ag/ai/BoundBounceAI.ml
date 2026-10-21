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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.bounds.BoundsVisitorInterface *)
(* import org.allbinary.bounds.LayerBounds *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class boundBounceAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput), (layerBounds_arg : LayerBounds.layerBounds), (boundsVisitorInterface_arg : BoundsVisitorInterface.boundsVisitorInterface)) =
  object
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable currentRelativeAngle : int = 0
    method currentRelativeAngle = currentRelativeAngle
    method set_currentRelativeAngle value' = currentRelativeAngle <- value'
    val mutable layerBounds : LayerBounds.layerBounds = (Obj.magic 0)
    method layerBounds = layerBounds
    method set_layerBounds value' = layerBounds <- value'
    val mutable boundsVisitorInterface : BoundsVisitorInterface.boundsVisitorInterface = (Obj.magic 0)
    method boundsVisitorInterface = boundsVisitorInterface
    method set_boundsVisitorInterface value' = boundsVisitorInterface <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let rectange : Obj.t ref = ref ((Obj.repr (layerBounds#getRectangleP ()))) in ();
        ignore ((Obj.magic graphics)#drawRect ((((Obj.magic !rectange)#getPoint ())#getX ()), (((Obj.magic !rectange)#getPoint ())#getY ()), ((Obj.magic !rectange)#getWidth ()), ((Obj.magic !rectange)#getHeight ())))
        end [@@warning "-7-20"]
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ignore (layerBounds#visit (boundsVisitorInterface))
        end [@@warning "-7-20"]

    initializer
      begin
        currentRelativeAngle <- 0;
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        layerBounds <- layerBounds_arg;
        boundsVisitorInterface <- boundsVisitorInterface_arg
      end
  end
let () = java_register_constructor "BoundBounceAI" (fun arguments -> Obj.repr (new boundBounceAI (Obj.obj arguments)))


