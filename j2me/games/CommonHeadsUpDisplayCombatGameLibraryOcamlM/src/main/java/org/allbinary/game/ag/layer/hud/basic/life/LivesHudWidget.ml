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
(* package org.allbinary.game.ag.layer.hud.basic.life *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.ag.life.Life *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.paint.PaintableInterface *)

class livesHudWidget (animationInterface_arg, (lifeInterface_arg : Life.life), (location : int), (direction : int)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, 2, (BasicColorFactory.getInstance ())#wHITE) as super
    val mutable lifeInterface : Life.life = (Obj.magic 0)
    method lifeInterface = lifeInterface
    method set_lifeInterface value' = lifeInterface <- value'
    val mutable xArray : int array = (Obj.magic 0)
    method xArray = xArray
    method set_xArray value' = xArray <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let maxLives : int ref = ref ((java_to_int (Obj.repr (((self#getLifeInterface ())#getMaxlives ()))))) in ();
        for index = 0 to !maxLives - 1 do
            xArray.(index) <- ((self#getX ()) + ((index * 16)))
        done
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (displayChangeEvent) ->
        let displayChangeEvent = Obj.repr displayChangeEvent in
        begin
        ignore (super#onDisplayChangeEvent ((Obj.magic displayChangeEvent)));
        (self#set_myFontProcessor) ((self#updateMyFontProcessor))
        end [@@warning "-7-20"]
    

    method setX ((x : int)) : unit =
        begin
        ignore (super#setX (x));
        (self#set_myFontProcessor) ((self#updateMyFontProcessor))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#myFontProcessor)#process ((Obj.magic graphics)));
        let index : int ref = ref ((java_to_int (Obj.repr (((self#getLifeInterface ())#get ()))))) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), xArray.(!index), (self#getY ())))
        done
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getLifeInterface () : Life.life =
        begin
        (lifeInterface :> Life.life)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        lifeInterface <- lifeInterface_arg;
        let size : int ref = ref ((java_to_int (Obj.repr (((self#getLifeInterface ())#getMaxlives ()))))) in ();
        xArray <- (Array.make (!size) 0);
        animationInterface <- Obj.repr (animationInterface_arg);
        (self#set_updateMaxWidth) (((lifeInterface#getMaxlives ()) * 16));
        (self#set_updateMaxHeight) (16)
      end
  end [@@warning "-20"]
let () = java_register_constructor "LivesHudWidget" (fun arguments -> Obj.repr (new livesHudWidget (Obj.obj arguments)))


