(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)
(* import org.allbinary.input.motion.button.CommonButtons *)
(* import org.allbinary.input.motion.button.TouchButtonLocationHelper *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)

class selectionHudPaintable () =
  object (self)
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable textX : int = 0
    method textX = textX
    method set_textX value' = textX <- value'
    val mutable imageX : int = 0
    method imageX = imageX
    method set_imageX value' = imageX <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable color : int = 0
    method color = color
    method set_color value' = color <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable backgroundColor : int = 0
    method backgroundColor = backgroundColor
    method set_backgroundColor value' = backgroundColor <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let commonButtons : CommonButtons.commonButtons ref = ref (((CommonButtons.getInstance ()) :> CommonButtons.commonButtons)) in ();
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        (self#setHeight ((!commonButtons#sTANDARD_BUTTON_SIZE + ((Obj.magic !font)#getHeight ()))));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        let commonButtons : CommonButtons.commonButtons ref = ref (((CommonButtons.getInstance ()) :> CommonButtons.commonButtons)) in ();
        let touchButtonLocationHelper : TouchButtonLocationHelper.touchButtonLocationHelper ref = ref (((new TouchButtonLocationHelper.touchButtonLocationHelper ()) :> TouchButtonLocationHelper.touchButtonLocationHelper)) in ();
        let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        x <- (!commonButtons#sTANDARD_BUTTON_SIZE + (!touchButtonLocationHelper#getColumnsRemainderHalf ()));
        textX <- ((self#getX ()) + 4);
        width <- ((!displayInfoSingleton#getLastWidth ()) - ((self#getX ()) * 2));
        imageX <- (((self#getWidth ()) + (!touchButtonLocationHelper#getColumnsRemainderHalf ())) - 10);
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7"]
    

    method updateSelectionInfo () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method updateInfo () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getPrimitiveLongUtil () : PrimitiveLongUtil.primitiveLongUtil =
        begin
        (primitiveLongUtil :> PrimitiveLongUtil.primitiveLongUtil)
        end [@@warning "-7"]
    

    method setAnimationInterface : 'any1. 'any1 -> unit = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        animationInterface <- Obj.repr ((Obj.magic animationInterface_arg))
        end [@@warning "-7-20"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterface)))
        end [@@warning "-7"]
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg);
        (self#setColor (((Obj.magic basicColor_arg)#intValue ())))
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method setColor ((color_arg : int)) : unit =
        begin
        color <- color_arg
        end [@@warning "-7"]
    

    method getColor () : int =
        begin
        color
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        width
        end [@@warning "-7"]
    

    method setHeight ((height_arg : int)) : unit =
        begin
        height <- height_arg
        end [@@warning "-7"]
    

    method getHeight () : int =
        begin
        height
        end [@@warning "-7"]
    

    method getX () : int =
        begin
        x
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor (backgroundColor));
        ignore ((Obj.magic graphics)#drawRect ((self#getX ()), y, (self#getWidth ()), (self#getHeight ())));
        ignore ((Obj.magic graphics)#setColor ((self#getColor ())));
        ignore ((Obj.magic graphics)#drawString ((self#getName ()), textX, y, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        y <- ((CommonButtons.getInstance ())#sTANDARD_BUTTON_SIZE + 17);
        ();
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        x <- 0;
        textX <- 0;
        imageX <- 0;
        basicColor <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        color <- 0;
        width <- 0;
        height <- 0;
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        animationInterface <- (Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)));
        backgroundColor <- ((BasicColorFactory.getInstance ())#gREY#intValue ());
        ();
        (self#update ());
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (10000))
      end
  end [@@warning "-20"]
let () = java_register_constructor "SelectionHudPaintable" (fun arguments -> Obj.repr (new selectionHudPaintable (Obj.obj arguments)))


