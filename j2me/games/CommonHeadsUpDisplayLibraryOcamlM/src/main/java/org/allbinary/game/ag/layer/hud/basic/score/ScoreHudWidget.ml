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
(* package org.allbinary.game.ag.layer.hud.basic.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.ag.layer.hud.basic.NumberStringHud *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class scoreHudWidget ((maxscore : int), (location : int), (direction : int), (bufferZone : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit NumberStringHud.numberStringHud ("Pts ", maxscore, location, direction, bufferZone, basicColor) as super
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        (self#set_updateMaxWidth) ((((Obj.magic !font)#getSize ()) * 5));
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#set_updateMaxHeight) (14)
      end
  end
let () = java_register_constructor "ScoreHudWidget" (fun arguments -> Obj.repr (new scoreHudWidget (Obj.obj arguments)))

let getInstance ((maxscore : int), (location : int), (direction : int)) =
        begin
        (new scoreHudWidget (maxscore, location, direction, 2, (BasicColorFactory.getInstance ())#gREY))
        end
let () = java_register_static "ScoreHudWidget.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


