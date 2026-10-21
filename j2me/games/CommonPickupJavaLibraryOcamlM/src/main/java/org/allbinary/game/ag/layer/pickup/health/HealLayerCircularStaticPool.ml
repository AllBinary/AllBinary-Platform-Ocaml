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
(* package org.allbinary.game.ag.layer.pickup.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.health.HealthInterface *)
(* import org.allbinary.game.health.HealthInterfaceCompositeInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerCircularPool *)
(* import org.allbinary.layer.AllBinaryLayerFactoryInterface *)

class healLayerCircularStaticPool ((allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface.allBinaryLayerFactoryInterface), (total : int)) =
  object (self)
    inherit AllBinaryLayerCircularPool.allBinaryLayerCircularPool () as super
    
    

    method visit : 'any1. 'any1 -> unit = fun (sourceLayerInterface) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        begin
        let healLayer : HealLayer.healLayer ref = ref (((Obj.magic (self#getNextInstance ())) :> HealLayer.healLayer)) in ();
        let healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface.healthInterfaceCompositeInterface ref = ref (((Obj.magic (Obj.magic sourceLayerInterface)) :> HealthInterfaceCompositeInterface.healthInterfaceCompositeInterface)) in ();
        let healthInterface : HealthInterface.healthInterface ref = ref (((!healthInterfaceCompositeInterface#getHealthInterface ()) :> HealthInterface.healthInterface)) in ();
        ignore (!healLayer#visit (!healthInterface))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ignore (super#initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total))
      end
  end
let () = java_register_constructor "HealLayerCircularStaticPool" (fun arguments -> Obj.repr (new healLayerCircularStaticPool (Obj.obj arguments)))


