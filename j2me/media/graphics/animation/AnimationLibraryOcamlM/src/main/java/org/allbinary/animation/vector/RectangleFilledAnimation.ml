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

class rectangleFilledAnimation ((width : int), (height : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit Animation.animation ()
    val mutable widthP : int = 0
    method widthP = widthP
    method set_widthP value' = widthP <- value'
    val mutable heightP : int = 0
    method heightP = heightP
    method set_heightP value' = heightP <- value'
    
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())));
        ignore ((Obj.magic graphics)#fillRect (x, y, widthP, heightP))
        end [@@warning "-7-20"]
    

    method setWidth ((width : int)) : unit =
        begin
        widthP <- width
        end [@@warning "-7"]
    

    method setHeight ((height : int)) : unit =
        begin
        heightP <- height
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        widthP <- width;
        heightP <- height;
        ignore (self#setBasicColorP (basicColor))
      end
  end
let () = java_register_constructor "RectangleFilledAnimation" (fun arguments -> Obj.repr (new rectangleFilledAnimation (Obj.obj arguments)))


