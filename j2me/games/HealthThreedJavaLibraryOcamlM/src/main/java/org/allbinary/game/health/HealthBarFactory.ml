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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)

class healthBarFactory () =
  object
    

    method getInstance : 'any1 'any2. 'any1 * 'any2 * int * int -> HealthBar.healthBar = fun (layerInterface, healthInterface, (location : int), (direction : int)) ->
        let layerInterface = Obj.repr layerInterface in
        let healthInterface = Obj.repr healthInterface in
        try
        begin
        if ((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) then begin
            let featuredAnimationInterfaceFactoryInterfaceFactory : FeaturedAnimationInterfaceFactoryInterfaceFactory.featuredAnimationInterfaceFactoryInterfaceFactory ref = ref (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ()) :> FeaturedAnimationInterfaceFactoryInterfaceFactory.featuredAnimationInterfaceFactoryInterfaceFactory)) in ();
            let healthBarAnimationInterfaceFactory : HealthBarAnimationInterfaceFactory.healthBarAnimationInterfaceFactory ref = ref (((Obj.magic (!featuredAnimationInterfaceFactoryInterfaceFactory#get ((Health.get_nAME ())))) :> HealthBarAnimationInterfaceFactory.healthBarAnimationInterfaceFactory)) in ();
            raise (Java_return (Obj.repr ((new HealthBar.healthBar ((Obj.magic layerInterface), (Obj.magic healthInterface), (!healthBarAnimationInterfaceFactory#getInstanceByLocation ((Obj.magic layerInterface), location)), direction)))))
        end else begin
            raise (Java_return (Obj.repr ((new HealthBar.healthBar ((Obj.magic layerInterface), (Obj.magic healthInterface), (new HealthBarTwodAnimation.healthBarTwodAnimation ((Obj.magic layerInterface), location)), direction)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HealthBarFactory" (fun arguments -> Obj.repr (new healthBarFactory (Obj.obj arguments)))


