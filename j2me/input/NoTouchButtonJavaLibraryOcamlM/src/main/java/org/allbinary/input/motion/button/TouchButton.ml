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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationInterface *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class touchButton ((touchButtonInput_arg : TouchButtonInput.touchButtonInput), (animationInterface_arg : AnimationInterface.animationInterface), (rawRectangle_arg : Rectangle.rectangle), (cellPosition_arg : CellPosition.cellPosition), (xBorder_arg : int), (yBorder_arg : int)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable touchButtonInput : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method touchButtonInput = touchButtonInput
    method set_touchButtonInput value' = touchButtonInput <- value'
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable rawRectangle : Rectangle.rectangle = (Obj.magic 0)
    method rawRectangle = rawRectangle
    method set_rawRectangle value' = rawRectangle <- value'
    val mutable xBorder : int = 0
    method xBorder = xBorder
    method set_xBorder value' = xBorder <- value'
    val mutable yBorder : int = 0
    method yBorder = yBorder
    method set_yBorder value' = yBorder <- value'
    val mutable rectangle : Rectangle.rectangle = (Obj.magic 0)
    method rectangle = rectangle
    method set_rectangle value' = rectangle <- value'
    val mutable cellPosition : CellPosition.cellPosition = (Obj.magic 0)
    method cellPosition = cellPosition
    method set_cellPosition value' = cellPosition <- value'
    val mutable animationX : int = 0
    method animationX = animationX
    method set_animationX value' = animationX <- value'
    val mutable animationY : int = 0
    method animationY = animationY
    method set_animationY value' = animationY <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintXY ((Obj.magic graphics), animationX, animationY))
        end [@@warning "-7-20"]
    

    method updateRectangle () : unit =
        begin
        (try
            let x : int ref = ref (((rawRectangle#getWidth ()) * (cellPosition#getColumn ()))) in ();
            let y : int ref = ref (((rawRectangle#getHeight ()) * (cellPosition#getRow ()))) in ();
            let pointFactory : PointFactory.pointFactory ref = ref (((PointFactory.getInstance ()) :> PointFactory.pointFactory)) in ();
            rectangle <- (new Rectangle.rectangle ((!pointFactory#createXY ((!x + xBorder), (!y + yBorder))), (rawRectangle#getWidth ()), (rawRectangle#getHeight ())));
            let point : GPoint.gPoint ref = ref (((rectangle#getPoint ()) :> GPoint.gPoint)) in ();
            animationX <- (!point#getX ());
            animationY <- (!point#getY ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, (Obj.magic self), "updateRectangle", e))
        end)
        end [@@warning "-7"]
    

    method getCellPositionP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (cellPosition))
        end [@@warning "-7"]
    

    method getRectangleP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (rectangle))
        end [@@warning "-7"]
    

    method getTouchButtonInput : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (touchButtonInput))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append ("TouchButton: "));
        ignore (!stringBuffer#append ((!stringUtil#toString (rectangle))));
        ignore (!stringBuffer#append (" CellPosition: "));
        ignore (!stringBuffer#append ((!stringUtil#toString (cellPosition))));
        ignore (!stringBuffer#append (" xBorder: "));
        ignore (!stringBuffer#appendint (xBorder));
        ignore (!stringBuffer#append (" yBorder: "));
        ignore (!stringBuffer#appendint (yBorder));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        ();
        rectangle <- ((RectangleFactory.get_sINGLETON ()) :> Rectangle.rectangle);
        ();
        animationX <- 0;
        animationY <- 0;
        ();
        touchButtonInput <- touchButtonInput_arg;
        animationInterface <- (Obj.magic animationInterface_arg);
        rawRectangle <- rawRectangle_arg;
        cellPosition <- cellPosition_arg;
        xBorder <- xBorder_arg;
        yBorder <- yBorder_arg;
        (self#updateRectangle ());
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Created: "))#append ((java_string_of (Obj.repr self)))))), (Obj.magic self), commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButton" (fun arguments -> Obj.repr (new touchButton (Obj.obj arguments)))


