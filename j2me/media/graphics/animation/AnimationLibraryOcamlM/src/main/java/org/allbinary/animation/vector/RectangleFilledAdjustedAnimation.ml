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
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)

class rectangleFilledAdjustedAnimation ((width : int), (height : int), (offsetX_arg : int), (offsetY_arg : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit RectangleFilledAnimation.rectangleFilledAnimation (width, height, basicColor) as super
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
        ignore (super#paintXY ((Obj.magic graphics), (x + offsetX), (y + offsetY)))
        end [@@warning "-7-20"]
    

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
        (* super(...) is the inherit clause *) ();
        offsetX <- offsetX_arg;
        offsetY <- offsetY_arg;
        ignore (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "RectangleFilledAdjustedAnimation" (fun arguments -> Obj.repr (new rectangleFilledAdjustedAnimation (Obj.obj arguments)))


