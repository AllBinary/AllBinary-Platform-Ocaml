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
(* package org.allbinary.game.ag.layer.hud.basic.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.health.HealthListenerInterface *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.NoTimeDelayHelper *)
(* import org.allbinary.time.TimeDelayHelper *)

class healthHudWidget (animationInterface_arg, (healthInterface_arg : Health.health), (location : int), (direction : int)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, 2, (BasicColorFactory.getInstance ())#wHITE) as super
    val mutable healthScale : int = 0
    method healthScale = healthScale
    method set_healthScale value' = healthScale <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable healthInterface : Health.health = (Obj.magic 0)
    method healthInterface = healthInterface
    method set_healthInterface value' = healthInterface <- value'
    val mutable max : int = 0
    method max = max
    method set_max value' = max <- value'
    val mutable xArray : int array = (Obj.magic 0)
    method xArray = xArray
    method set_xArray value' = xArray <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable slowBeatTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method slowBeatTimeDelayHelper = slowBeatTimeDelayHelper
    method set_slowBeatTimeDelayHelper value' = slowBeatTimeDelayHelper <- value'
    val mutable mediumBeatTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method mediumBeatTimeDelayHelper = mediumBeatTimeDelayHelper
    method set_mediumBeatTimeDelayHelper value' = mediumBeatTimeDelayHelper <- value'
    val mutable fastBeatTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method fastBeatTimeDelayHelper = fastBeatTimeDelayHelper
    method set_fastBeatTimeDelayHelper value' = fastBeatTimeDelayHelper <- value'
    
    

    method update () : unit =
        begin
        if (xArray != (Obj.magic 0)) then begin
            for index = 0 to (Array.length xArray) - 1 do
                xArray.(index) <- ((self#getX ()) + ((index * 16)))
            done
        end
        end [@@warning "-7"]
    

    method setX ((x : int)) : unit =
        begin
        ignore (super#setX (x));
        (self#update ())
        end [@@warning "-7"]
    

    method onHealthChange () : unit =
        begin
        max <- (((healthInterface#getHealth ()) / healthScale));
        timeDelayHelper <- (NoTimeDelayHelper.get_sINGLETON ());
        if ((max <= 1) && (healthInterface#isAlive ())) then begin
            max <- 1;
            if ((healthScale - (healthInterface#getHealth ())) > (((healthScale * 2)) / 3)) then begin
                timeDelayHelper <- slowBeatTimeDelayHelper
            end else if ((healthScale - (healthInterface#getHealth ())) > (healthScale / 3)) then begin
                timeDelayHelper <- mediumBeatTimeDelayHelper
            end else begin
                timeDelayHelper <- fastBeatTimeDelayHelper
            end
        end
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        for index = 0 to max - 1 do
            if (timeDelayHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
                ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), xArray.(index), (self#getY ())))
            end
        done
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        max <- 0;
        ();
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        timeDelayHelper <- ((NoTimeDelayHelper.get_sINGLETON ()) :> TimeDelayHelper.timeDelayHelper);
        slowBeatTimeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (1280)) :> TimeDelayHelper.timeDelayHelper);
        mediumBeatTimeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (640)) :> TimeDelayHelper.timeDelayHelper);
        fastBeatTimeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (320)) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ();
        animationInterface <- Obj.repr (animationInterface_arg);
        healthInterface <- healthInterface_arg;
        ignore (healthInterface#addListener (self));
        healthScale <- ((((healthInterface#getMaxHealth ()) / 6)) + 1);
        (self#onHealthChange ());
        updateMaxWidth <- ((healthInterface_arg#getMaxHealth ()) * 16);
        updateMaxHeight <- 16;
        xArray <- (Array.make (30) 0);
        (self#update ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "HealthHudWidget" (fun arguments -> Obj.repr (new healthHudWidget (Obj.obj arguments)))


