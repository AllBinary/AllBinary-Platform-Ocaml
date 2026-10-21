(* Generated Code Do Not Modify *)
(* package org.allbinary.animation.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class aRectangleFilledAnimation () =
  object
    inherit RectangleFilledAnimation.rectangleFilledAnimation (0, 0, (BasicColorFactory.getInstance ())#bLACK) as super
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_unusedX : int), (_unusedY : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]

    initializer
      begin
        x <- 0;
        y <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ARectangleFilledAnimation" (fun arguments -> Obj.repr (new aRectangleFilledAnimation (Obj.obj arguments)))


