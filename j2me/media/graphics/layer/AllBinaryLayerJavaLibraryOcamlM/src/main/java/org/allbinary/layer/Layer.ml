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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

let iD : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (0))
let get_iD () = iD
let () = java_register_static "Layer.get_iD" (fun _ -> Obj.repr (get_iD ()))
class layer ((width_arg : int), (height_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable z : int = 0
    method z = z
    method set_z value' = z <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable visible : bool = false
    method visible = visible
    method set_visible value' = visible <- value'
    
    

    method setPosition ((x_arg : int), (y_arg : int), (z_arg : int)) : unit =
        begin
        x <- x_arg;
        y <- y_arg;
        z <- z_arg
        end
    

    method moveDXY ((dx : int), (dy : int)) : unit =
        begin
        x <- (x + dx);
        y <- (y + dy)
        end
    

    method moveDXYZ ((dx : int), (dy : int), (dz : int)) : unit =
        begin
        x <- (x + dx);
        y <- (y + dy);
        z <- (z + dz)
        end
    

    method getXP () : int =
        begin
        x
        end
    

    method getYP () : int =
        begin
        y
        end
    

    method getZP () : int =
        begin
        z
        end
    

    method getWidth () : int =
        begin
        width
        end
    

    method getHeight () : int =
        begin
        height
        end
    

    method getDepth () : int =
        begin
        0
        end
    

    method setVisible ((visible_arg : bool)) : unit =
        begin
        visible <- visible_arg
        end
    

    method isVisible () : bool =
        begin
        visible
        end
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let canvasStrings : CanvasStrings.canvasStrings ref = ref (((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings)) in ();
        ignore ((Obj.magic logUtil)#putF (!commonStrings#nOT_IMPLEMENTED, self, !canvasStrings#pAINT))
        end [@@warning "-20"]
    

    method setLayerWidth ((width_arg : int)) : unit =
        begin
        if (width_arg < 0) then begin
            raise (Failure ("IllegalArgumentException"))
        end;
        width <- width_arg
        end
    

    method setLayerHeight ((height_arg : int)) : unit =
        begin
        if (height_arg < 0) then begin
            raise (Failure ("IllegalArgumentException"))
        end;
        height <- height_arg
        end
    

    method toStringAppend : 'any1. 'any1 -> unit = fun (_stringBuffer) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        x <- 0;
        y <- 0;
        z <- 3;
        width <- 0;
        height <- 0;
        visible <- true;
        ();
        (self#setLayerWidth (width_arg));
        (self#setLayerHeight (height_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "Layer" (fun arguments -> Obj.repr (new layer (Obj.obj arguments)))


