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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)

class healthBarAnimation ((layerInterface : AllBinaryLayer.allBinaryLayer), (location_arg : int)) =
  object (self)
    inherit Animation.animation ()
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable x2 : int = 0
    method x2 = x2
    method set_x2 value' = x2 <- value'
    val mutable thickness : int = 0
    method thickness = thickness
    method set_thickness value' = thickness <- value'
    val mutable location : int = 0
    method location = location
    method set_location value' = location <- value'
    val mutable allbinaryLayer : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method allbinaryLayer = allbinaryLayer
    method set_allbinaryLayer value' = allbinaryLayer <- value'
    
    

    method onHealthChange ((newX2 : int)) : unit =
        begin
        x2 <- newX2;
        let quarter : int ref = ref ((((allbinaryLayer#getWidth ()) asr 2))) in ();
        if (x2 > (!quarter * 3)) then begin
            (self#set_basicColor) (basicColorFactory#gREEN);
            (self#set_colorP) (((self#basicColor)#intValue ()))
        end else if (x2 > (!quarter * 2)) then begin
            (self#set_basicColor) (basicColorFactory#yELLOW);
            (self#set_colorP) (((self#basicColor)#intValue ()))
        end else if (x2 > !quarter) then begin
            (self#set_basicColor) (basicColorFactory#oRANGE);
            (self#set_colorP) (((self#basicColor)#intValue ()))
        end else begin
            (self#set_basicColor) (basicColorFactory#rED);
            (self#set_colorP) (((self#basicColor)#intValue ()))
        end
        end [@@warning "-7"]
    

    method getY () : int =
        try
        begin
        let basicHudFactory : BasicHudFactory.basicHudFactory ref = ref (((BasicHudFactory.getInstance ()) :> BasicHudFactory.basicHudFactory)) in ();
        if (location = !basicHudFactory#tOPLEFT) then begin
            raise (Java_return (Obj.repr ((((allbinaryLayer#getViewPosition ())#getY ()) - 4))))
        end else if (location = !basicHudFactory#bOTTOMLEFT) then begin
            raise (Java_return (Obj.repr ((((allbinaryLayer#getViewPosition ())#getY2 ()) + 4))))
        end;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        x2 <- 0;
        thickness <- 0;
        ();
        ();
        ();
        allbinaryLayer <- layerInterface;
        location <- location_arg;
        let basicHudFactory : BasicHudFactory.basicHudFactory ref = ref (((BasicHudFactory.getInstance ()) :> BasicHudFactory.basicHudFactory)) in ();
        if ((location <> !basicHudFactory#tOPLEFT) && (location <> !basicHudFactory#bOTTOMLEFT)) then begin
            raise (Failure ("Location Not Valid"))
        end;
        if ((layerInterface#getWidth ()) > 40) then begin
            thickness <- 3
        end else if ((layerInterface#getWidth ()) > 20) then begin
            thickness <- 2
        end else begin
            thickness <- 1
        end
      end
  end
let () = java_register_constructor "HealthBarAnimation" (fun arguments -> Obj.repr (new healthBarAnimation (Obj.obj arguments)))


