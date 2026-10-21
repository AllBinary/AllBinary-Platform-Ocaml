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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.layer.AllBinaryLayer *)

class healthBar ((layerInterface : AllBinaryLayer.allBinaryLayer), (healthInterface_arg : Health.health), (animationInterface_arg : HealthBarAnimation.healthBarAnimation), (_direction : int)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable animationInterface : HealthBarAnimation.healthBarAnimation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable healthInterface : HealthInterface.healthInterface = (Obj.magic 0)
    method healthInterface = healthInterface
    method set_healthInterface value' = healthInterface <- value'
    val mutable allbinaryLayer : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method allbinaryLayer = allbinaryLayer
    method set_allbinaryLayer value' = allbinaryLayer <- value'
    
    

    method onHealthChange () : unit =
        begin
        ignore (animationInterface#onHealthChange ((((healthInterface#getHealth ()) * (allbinaryLayer#getWidth ())) / (healthInterface#getMaxHealth ()))))
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
        allbinaryLayer <- layerInterface;
        animationInterface <- animationInterface_arg;
        healthInterface <- healthInterface_arg;
        ignore (healthInterface#addListener (self));
        (self#onHealthChange ())
      end
  end
let () = java_register_constructor "HealthBar" (fun arguments -> Obj.repr (new healthBar (Obj.obj arguments)))


