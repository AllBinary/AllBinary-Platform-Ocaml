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
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
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

class touchButton ((touchButtonInput_arg : TouchButtonInput.touchButtonInput), animationInterface_arg, hintAnimationInterface_arg, rawRectangle_arg, (cellPosition : CellPosition.cellPosition), (xBorder_arg : int), (yBorder_arg : int)) =
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
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable hintAnimationInterface : Obj.t = Obj.repr 0
    method hintAnimationInterface : 'r. 'r = Obj.magic hintAnimationInterface
    method set_hintAnimationInterface : 'v. 'v -> unit = fun value' -> hintAnimationInterface <- Obj.repr value'
    val mutable rawRectangle : Obj.t = Obj.repr 0
    method rawRectangle : 'r. 'r = Obj.magic rawRectangle
    method set_rawRectangle : 'v. 'v -> unit = fun value' -> rawRectangle <- Obj.repr value'
    val mutable xBorder : int = 0
    method xBorder = xBorder
    method set_xBorder value' = xBorder <- value'
    val mutable yBorder : int = 0
    method yBorder = yBorder
    method set_yBorder value' = yBorder <- value'
    val mutable rectangleP : Obj.t = Obj.repr 0
    method rectangleP : 'r. 'r = Obj.magic rectangleP
    method set_rectangleP : 'v. 'v -> unit = fun value' -> rectangleP <- Obj.repr value'
    val mutable cellPositionP : CellPosition.cellPosition = (Obj.magic 0)
    method cellPositionP = cellPositionP
    method set_cellPositionP value' = cellPositionP <- value'
    val mutable animationX : int = 0
    method animationX = animationX
    method set_animationX value' = animationX <- value'
    val mutable animationY : int = 0
    method animationY = animationY
    method set_animationY value' = animationY <- value'
    val mutable hintAnimationY : int = 0
    method hintAnimationY = hintAnimationY
    method set_hintAnimationY value' = hintAnimationY <- value'
    
    

    method paintHint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic hintAnimationInterface)#paintXY ((Obj.magic graphics), animationX, hintAnimationY))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), animationX, animationY))
        end [@@warning "-7-20"]
    

    method updateRectangle () : unit =
        begin
        (try
            let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
            let x : int ref = ref ((((Obj.magic rawRectangle)#getWidth ()) * (cellPositionP#getColumn ()))) in ();
            let y : int ref = ref ((((Obj.magic rawRectangle)#getHeight ()) * (cellPositionP#getRow ()))) in ();
            rectangleP <- Obj.repr ((Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY ((!x + xBorder), (!y + yBorder))), ((Obj.magic rawRectangle)#getWidth ()), ((Obj.magic rawRectangle)#getHeight ()))))));
            let point : GPoint.gPoint ref = ref ((((Obj.magic rectangleP)#getPoint ()) :> GPoint.gPoint)) in ();
            animationX <- (!point#getX ());
            animationY <- (!point#getY ());
            hintAnimationY <- (animationY - 32)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "updateRectangle", e))
        end)
        end [@@warning "-7"]
    

    method getCellPosition () : CellPosition.cellPosition =
        begin
        (cellPositionP :> CellPosition.cellPosition)
        end [@@warning "-7"]
    

    method getRectangle : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rectangleP)))
        end [@@warning "-7"]
    

    method getTouchButtonInput () : TouchButtonInput.touchButtonInput =
        begin
        (touchButtonInput :> TouchButtonInput.touchButtonInput)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append ("TouchButton: "));
        ignore (!stringBuffer#append ((!stringUtil#toString ((self#getRectangle ())))));
        ignore (!stringBuffer#append (" CellPosition: "));
        ignore (!stringBuffer#append ((!stringUtil#toString (cellPositionP))));
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
        ();
        rectangleP <- (Obj.repr (RectangleFactory.get_sINGLETON ()));
        ();
        animationX <- 0;
        animationY <- 0;
        hintAnimationY <- 0;
        ();
        touchButtonInput <- touchButtonInput_arg;
        animationInterface <- Obj.repr (animationInterface_arg);
        hintAnimationInterface <- Obj.repr (hintAnimationInterface_arg);
        rawRectangle <- Obj.repr (rawRectangle_arg);
        cellPositionP <- cellPosition;
        xBorder <- xBorder_arg;
        yBorder <- yBorder_arg;
        (self#updateRectangle ());
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Created: "))#append ((java_string_of (Obj.repr self)))))), self, commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButton" (fun arguments -> Obj.repr (new touchButton (Obj.obj arguments)))

let createButton : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int * int -> _ = fun (touchButtonInput_arg, touchButtonResource, rawRectangle_arg, cellPosition, (xBorder_arg : int), (yBorder_arg : int)) ->
        let touchButtonInput_arg = Obj.repr touchButtonInput_arg in
        let touchButtonResource = Obj.repr touchButtonResource in
        let rawRectangle_arg = Obj.repr rawRectangle_arg in
        let cellPosition = Obj.repr cellPosition in
        begin
        (new touchButton ((Obj.magic touchButtonInput_arg), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic touchButtonResource)#rESOURCE))#getInstance (0)), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic touchButtonResource)#hINT))#getInstance (0)), (Obj.magic rawRectangle_arg), (Obj.magic cellPosition), xBorder_arg, yBorder_arg))
        end [@@warning "-20"]
let () = java_register_static "TouchButton.createButton" (fun arguments -> Obj.repr (createButton (Obj.obj arguments)))


