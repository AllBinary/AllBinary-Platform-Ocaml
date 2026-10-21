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
(* package org.allbinary.game.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)
(* import org.allbinary.graphics.paint.Paintable *)

class colorFillBasePaintable ((basicColor_arg : BasicColor.basicColor)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable colorP : int = 0
    method colorP = colorP
    method set_colorP value' = colorP <- value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg);
        (self#setColor (((self#getBasicColorP ())#intValue ())))
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method getColor () : int =
        begin
        colorP
        end [@@warning "-7"]
    

    method setColor ((color : int)) : unit =
        begin
        colorP <- color
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        colorP <- 0;
        ();
        (self#setBasicColorP (basicColor_arg))
      end
  end
let () = java_register_constructor "ColorFillBasePaintable" (fun arguments -> Obj.repr (new colorFillBasePaintable (Obj.obj arguments)))


