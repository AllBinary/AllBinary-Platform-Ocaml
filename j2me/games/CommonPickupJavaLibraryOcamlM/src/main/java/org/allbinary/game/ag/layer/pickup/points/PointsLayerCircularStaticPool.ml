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
(* package org.allbinary.game.ag.layer.pickup.points *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerCircularPool *)
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)

class pointsLayerCircularStaticPool ((allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface.allBinaryLayerFactoryInterface), (total : int)) =
  object (self)
    inherit AllBinaryLayerCircularPool.allBinaryLayerCircularPool () as super
    
    

    method visit : 'any1. 'any1 -> unit = fun (sourceLayerInterface) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        begin
        let pointsLayer : PointsLayer.pointsLayer ref = ref (((Obj.magic (self#getNextInstance ())) :> PointsLayer.pointsLayer)) in ();
        let scoreableInterface : ScoreableInterface.scoreableInterface ref = ref (((Obj.magic (Obj.magic sourceLayerInterface)) :> ScoreableInterface.scoreableInterface)) in ();
        ignore (!pointsLayer#visit (!scoreableInterface))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ignore (super#initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total))
      end
  end
let () = java_register_constructor "PointsLayerCircularStaticPool" (fun arguments -> Obj.repr (new pointsLayerCircularStaticPool (Obj.obj arguments)))


