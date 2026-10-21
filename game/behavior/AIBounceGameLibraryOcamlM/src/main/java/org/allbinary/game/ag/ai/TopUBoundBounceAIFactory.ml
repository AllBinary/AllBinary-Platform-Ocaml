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
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.bounds.TopULayerBounds *)
(* import org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.physics.velocity.VelocityInterface *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.util.ABHashtable *)

class topUBoundBounceAIFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> ArtificialIntelligenceInterface.artificialIntelligenceInterface = fun (_hashtable, ownerLayerInterface, gameInput) ->
        let ownerLayerInterface = Obj.repr ownerLayerInterface in
        let gameInput = Obj.repr gameInput in
        begin
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic (Obj.magic ownerLayerInterface)) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        let velocityInterface : VelocityInterface.velocityInterface ref = ref (((Obj.magic (!velocityInterfaceCompositeInterface#getVelocityProperties ())) :> VelocityInterface.velocityInterface)) in ();
        let maxDistancePerTick : int ref = ref ((((!velocityInterface#getMaxForwardVelocity ()) asr ((!velocityInterface#getVelocityXBasicDecimalP ())#getScaledFactor ())))) in ();
        let halfWidth : int ref = ref ((((((Obj.magic ownerLayerInterface)#getWidth ()) * 2) + !maxDistancePerTick) + 1)) in ();
        let halfHeight : int ref = ref ((((((Obj.magic ownerLayerInterface)#getHeight ()) * 2) + !maxDistancePerTick) + 1)) in ();
        let point : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (!halfWidth, (!halfHeight + 60))) :> GPoint.gPoint)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let rectangle : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr (!point, ((((!displayInfo#getLastWidth ()) - !halfWidth) - (!point#getX ()))), ((((!displayInfo#getLastHeight ()) - !halfHeight) - (!point#getY ()))))))))) in ();
        ((new BoundBounceAI.boundBounceAI ((Obj.magic ownerLayerInterface), (Obj.magic gameInput), (new TopULayerBounds.topULayerBounds ((Obj.magic !rectangle))), (new ReverseVelocityBoundsVisitor.reverseVelocityBoundsVisitor ((Obj.magic ownerLayerInterface))))) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TopUBoundBounceAIFactory" (fun arguments -> Obj.repr (new topUBoundBounceAIFactory (Obj.obj arguments)))


