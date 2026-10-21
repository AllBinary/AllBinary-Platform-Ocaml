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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.vector.RectangleFilledAnimation *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.layer.SWTUtil *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.draw.DrawVerticalStringUtil *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.threed.SWTJOGLProcessor *)

let nAME : string = "MENU"
let get_nAME () = nAME
let () = java_register_static "BasicPopupMenuPaintable.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class basicPopupMenuPaintable (rectangle_arg, (_backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor_arg : BasicColor.basicColor)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable drawStringUtil : DrawVerticalStringUtil.drawVerticalStringUtil = (Obj.magic 0)
    method drawStringUtil = drawStringUtil
    method set_drawStringUtil value' = drawStringUtil <- value'
    val mutable label : string = ""
    method label = label
    method set_label value' = label <- value'
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    val mutable bORDER : int = 0
    method bORDER = bORDER
    method set_bORDER value' = bORDER <- value'
    val mutable heightOffset : int = 0
    method heightOffset = heightOffset
    method set_heightOffset value' = heightOffset <- value'
    val mutable offset : int = 0
    method offset = offset
    method set_offset value' = offset <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let isOpenGL : bool ref = ref ((!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL))) in ();
        ignore (drawStringUtil#updateMeasurement ((Obj.magic graphics), label));
        let bORDER_arg : int ref = ref (0) in ();
        if ((J2MEUtil.isHTML ()) || !isOpenGL) then begin
            bORDER_arg := ((MyFontProcessor.defaultCharWidth ((Obj.magic !font))) / 2)
        end else if (((Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) || (J2MEUtil.isJ2SE ())) || (SWTUtil.get_isSWT ())) then begin
            bORDER_arg := (MyFontProcessor.defaultCharWidth ((Obj.magic !font)))
        end else begin
            bORDER_arg := ((MyFontProcessor.defaultCharWidth ((Obj.magic !font))) * 2)
        end;
        bORDER <- !bORDER_arg;
        heightOffset <- (((Obj.magic rectangle)#getHeight ()) - ((((Obj.magic !font)#getHeight ()) * (nAME#length ()))));
        if ((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) then begin
            heightOffset <- (heightOffset - (((Obj.magic !font)#getHeight ()) + 2));
            if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
                heightOffset <- ((Obj.magic !font)#getHeight ())
            end else begin
                heightOffset <- (heightOffset - (((Obj.magic !font)#getHeight ()) + 2))
            end
        end;
        offset <- (((heightOffset asr 1)) + ((if ((Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ())))#isJOGL ()) then 4 else 0)));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method init : 'any1. 'any1 -> unit = fun (rectangle_arg) ->
        let rectangle_arg = Obj.repr rectangle_arg in
        begin
        rectangle <- Obj.repr ((Obj.magic rectangle_arg));
        let width : int ref = ref (((Obj.magic rectangle)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic rectangle)#getHeight ())) in ();
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            ()
        end else begin
            let rectangleFilledAnimation : RectangleFilledAnimation.rectangleFilledAnimation ref = ref (((Obj.magic (Obj.magic animationInterface)) :> RectangleFilledAnimation.rectangleFilledAnimation)) in ();
            ignore (!rectangleFilledAnimation#setWidth (!width));
            ignore (!rectangleFilledAnimation#setHeight (!height))
        end
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let point : GPoint.gPoint ref = ref ((((Obj.magic rectangle)#getPoint ()) :> GPoint.gPoint)) in ();
        let x : int ref = ref ((!point#getX ())) in ();
        let y : int ref = ref ((!point#getY ())) in ();
        let width : int ref = ref (((Obj.magic rectangle)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic rectangle)#getHeight ())) in ();
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), !x, !y));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), foregroundBasicColor));
        ignore (drawStringUtil#paintVerticle ((Obj.magic graphics), label, (!x + bORDER), (!y + offset), 0));
        ignore ((Obj.magic graphics)#drawRect (!x, !y, !width, !height))
        end [@@warning "-7-20"]

    initializer
      begin
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        drawStringUtil <- ((DrawVerticalStringUtil.getInstance ()) :> DrawVerticalStringUtil.drawVerticalStringUtil);
        ();
        ();
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        ();
        bORDER <- 0;
        heightOffset <- 0;
        offset <- 0;
        animationInterface <- (Obj.repr (Obj.magic 0));
        ();
        foregroundBasicColor <- foregroundBasicColor_arg;
        label <- nAME;
        rectangle <- Obj.repr (rectangle_arg);
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            animationInterface <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))
        end else begin
            animationInterface <- Obj.repr ((new RectangleFilledAnimation.rectangleFilledAnimation (((Obj.magic rectangle)#getWidth ()), ((Obj.magic rectangle)#getHeight ()), (BasicColorFactory.getInstance ())#tRANSPARENT_GREY)))
        end;
        (self#init (rectangle_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicPopupMenuPaintable" (fun arguments -> Obj.repr (new basicPopupMenuPaintable (Obj.obj arguments)))


