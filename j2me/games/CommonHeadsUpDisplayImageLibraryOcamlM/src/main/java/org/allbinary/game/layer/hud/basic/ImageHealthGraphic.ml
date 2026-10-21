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
(* package org.allbinary.game.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationInterface *)
(* import org.allbinary.game.health.HealthInterface *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.image.ImageCacheFactory *)

class imageHealthGraphic ((animationInterface : AnimationInterface.animationInterface), (healthInterface : HealthInterface.healthInterface), (location : int), (direction : int)) =
  object (self)
    inherit HealthGraphic.healthGraphic (animationInterface, healthInterface, location, direction)
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic image).(max), x, y, (Anchor.get_tOP_LEFT ())))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        image <- Obj.repr ((Array.make ((healthInterface#getMaxHealth ())) (Obj.magic 0)));
        let imageCacheFactory : ImageCacheFactory.imageCacheFactory ref = ref (((ImageCacheFactory.getInstance ()) :> ImageCacheFactory.imageCacheFactory)) in ();
        for numOfHealth = 0 to max do
            (Obj.magic image).(numOfHealth) <- (!imageCacheFactory#get (self, (numOfHealth + (1 * 10)), 10))
        done;
        for numOfHealth = 0 to max do
            for _index = 0 to numOfHealth - 1 do
                ignore (animationInterface#paint (((Obj.magic image).(numOfHealth)#getGraphics ()), (numOfHealth * 10), 0))
            done
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageHealthGraphic" (fun arguments -> Obj.repr (new imageHealthGraphic (Obj.obj arguments)))


