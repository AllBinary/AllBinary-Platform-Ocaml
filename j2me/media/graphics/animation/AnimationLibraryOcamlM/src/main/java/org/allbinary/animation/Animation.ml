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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface *)

class animation () =
  object (self)
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable colorP : int = 0
    method colorP = colorP
    method set_colorP value' = colorP <- value'
    val mutable changeBasicColorP : BasicColor.basicColor = (Obj.magic 0)
    method changeBasicColorP = changeBasicColorP
    method set_changeBasicColorP value' = changeBasicColorP <- value'
    val mutable changeColorP : int = 0
    method changeColorP = changeColorP
    method set_changeColorP value' = changeColorP <- value'
    val mutable alphaP : int = 0
    method alphaP = alphaP
    method set_alphaP value' = alphaP <- value'
    
    

    method setAlpha ((alpha : int)) : unit =
        begin
        alphaP <- alpha
        end
    

    method nextFrame () : unit =
        begin
        ()
        end
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_x : int), (_y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())))
        end [@@warning "-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (_graphics, (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isThreed () : bool =
        begin
        false
        end
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg);
        colorP <- (basicColor#intValue ())
        end [@@warning "-20"]
    

    method setBackgroundBasicColorP : 'any1. 'any1 -> unit = fun (_basicColor_arg) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getChangeBasicColor () : BasicColor.basicColor =
        begin
        (changeBasicColorP :> BasicColor.basicColor)
        end
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        changeBasicColorP <- (Obj.magic basicColor_arg);
        changeColorP <- (changeBasicColorP#intValue ())
        end [@@warning "-20"]
    

    method getChangeColor () : int =
        begin
        changeColorP
        end
    

    method getColor () : int =
        begin
        colorP
        end
    

    method setScale ((_scaleX : float), (_scaleY : float)) : unit =
        begin
        ()
        end
    

    method setMaxScale ((_maxScaleX : float), (_maxScaleY : float)) : unit =
        begin
        ()
        end
    

    method set : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setDx ((_dx : int)) : unit =
        begin
        ()
        end
    

    method getDx () : int =
        begin
        0
        end
    

    method setDy ((_dy : int)) : unit =
        begin
        ()
        end
    

    method getDy () : int =
        begin
        0
        end

    initializer
      begin
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        colorP <- 0;
        changeBasicColorP <- ((BasicColorFactory.getInstance ())#nULL_COLOR :> BasicColor.basicColor);
        changeColorP <- 0;
        alphaP <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "Animation" (fun arguments -> Obj.repr (new animation (Obj.obj arguments)))


