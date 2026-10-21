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
(* package org.allbinary.game.ag.life *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.health.HealthBarAnimation *)
(* import org.allbinary.game.health.HealthBarTwodAnimation *)
(* import org.allbinary.game.health.HealthInterface *)
(* import org.allbinary.game.health.HealthListenerInterface *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.layer.AllBinaryLayer *)

class healthIncludingLifeBar ((layerInterface : AllBinaryLayer.allBinaryLayer), (life_arg : Life.life), (healthInterface_arg : Health.health), (animationInterface_arg : HealthBarAnimation.healthBarAnimation), (_direction : int)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable animationInterface : HealthBarAnimation.healthBarAnimation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable life : Life.life = (Obj.magic 0)
    method life = life
    method set_life value' = life <- value'
    val mutable healthInterface : HealthInterface.healthInterface = (Obj.magic 0)
    method healthInterface = healthInterface
    method set_healthInterface value' = healthInterface <- value'
    val mutable allbinaryLayer : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method allbinaryLayer = allbinaryLayer
    method set_allbinaryLayer value' = allbinaryLayer <- value'
    
    

    method onHealthChange () : unit =
        begin
        ignore (animationInterface#onHealthChange (((((((healthInterface#getHealth ()) + (((healthInterface#getMaxHealth ()) * (life#get ()))))) * (allbinaryLayer#getWidth ()))) / (((healthInterface#getMaxHealth ()) + (((healthInterface#getMaxHealth ()) * (life#getStartLives ()))))))))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintXY ((Obj.magic graphics), 0, 0))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintThreedXYZ ((Obj.magic graphics), 0, 0, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        allbinaryLayer <- layerInterface;
        animationInterface <- animationInterface_arg;
        life <- life_arg;
        healthInterface <- healthInterface_arg;
        ignore (healthInterface#addListener (self));
        (self#onHealthChange ())
      end
  end
let () = java_register_constructor "HealthIncludingLifeBar" (fun arguments -> Obj.repr (new healthIncludingLifeBar (Obj.obj arguments)))

let createHealthIncludingLifeBar : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * int -> _ = fun (layerInterface, life_arg, healthInterface_arg, (location : int), (direction : int)) ->
        let layerInterface = Obj.repr layerInterface in
        let life_arg = Obj.repr life_arg in
        let healthInterface_arg = Obj.repr healthInterface_arg in
        begin
        (new healthIncludingLifeBar ((Obj.magic layerInterface), (Obj.magic life_arg), (Obj.magic healthInterface_arg), (new HealthBarTwodAnimation.healthBarTwodAnimation ((Obj.magic layerInterface), location)), direction))
        end [@@warning "-20"]
let () = java_register_static "HealthIncludingLifeBar.createHealthIncludingLifeBar" (fun arguments -> Obj.repr (createHealthIncludingLifeBar (Obj.obj arguments)))


