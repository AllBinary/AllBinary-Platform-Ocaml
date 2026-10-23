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
(* package org.allbinary.animation.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)

class rectangleAdjustedAnimation ((width_arg : int), (height_arg : int), (offsetX_arg : int), (offsetY_arg : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit Animation.animation ()
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable offsetX : int = 0
    method offsetX = offsetX
    method set_offsetX value' = offsetX <- value'
    val mutable offsetY : int = 0
    method offsetY = offsetY
    method set_offsetY value' = offsetY <- value'
    
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())));
        ignore ((Obj.magic graphics)#drawRect ((x + offsetX), (y + offsetY), width, height))
        end [@@warning "-7-20"]
    

    method setWidth ((width_arg : int)) : unit =
        begin
        width <- width_arg
        end [@@warning "-7"]
    

    method setHeight ((height_arg : int)) : unit =
        begin
        height <- height_arg
        end [@@warning "-7"]
    

    method setOffsetX ((offsetX_arg : int)) : unit =
        begin
        offsetX <- offsetX_arg
        end [@@warning "-7"]
    

    method setOffsetY ((offsetY_arg : int)) : unit =
        begin
        offsetY <- offsetY_arg
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        width <- width_arg;
        height <- height_arg;
        offsetX <- offsetX_arg;
        offsetY <- offsetY_arg;
        ignore (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "RectangleAdjustedAnimation" (fun arguments -> Obj.repr (new rectangleAdjustedAnimation (Obj.obj arguments)))


