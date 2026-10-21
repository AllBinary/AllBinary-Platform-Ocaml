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
(* package org.allbinary.game.graphics.hud *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)

class basicHud ((location_arg : int), (direction_arg : int), (bufferZone_arg : int), (basicColor_arg : BasicColor.basicColor)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable location : int = 0
    method location = location
    method set_location value' = location <- value'
    val mutable direction : int = 0
    method direction = direction
    method set_direction value' = direction <- value'
    val mutable bufferZone : int = 0
    method bufferZone = bufferZone
    method set_bufferZone value' = bufferZone <- value'
    val mutable bufferZoneY : int = 0
    method bufferZoneY = bufferZoneY
    method set_bufferZoneY value' = bufferZoneY <- value'
    val mutable hudGraphicsPosition : HudGraphicsPosition.hudGraphicsPosition = (Obj.magic 0)
    method hudGraphicsPosition = hudGraphicsPosition
    method set_hudGraphicsPosition value' = hudGraphicsPosition <- value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable color : int = 0
    method color = color
    method set_color value' = color <- value'
    val mutable updateMaxWidth : int = 0
    method updateMaxWidth = updateMaxWidth
    method set_updateMaxWidth value' = updateMaxWidth <- value'
    val mutable updateMaxHeight : int = 0
    method updateMaxHeight = updateMaxHeight
    method set_updateMaxHeight value' = updateMaxHeight <- value'
    val mutable offsetY : int = 0
    method offsetY = offsetY
    method set_offsetY value' = offsetY <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        (try
            hudGraphicsPosition <- (self#getHudGraphicsPositionWH ((displayInfo#getLastWidth ()), (displayInfo#getLastHeight ()), updateMaxWidth, updateMaxHeight));
            x <- ((hudGraphicsPosition#getPoint ())#getX ());
            (self#setY (((hudGraphicsPosition#getPoint ())#getY ())))
        with e -> begin
            let commonStrings_arg : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings_arg#eXCEPTION, self, canvasStrings#oN_DISPLAY_CHANGE_EVENT, e))
        end);
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method getLocation () : int =
        begin
        location
        end
    

    method getDirection () : int =
        begin
        direction
        end
    

    method getHudGraphicsPositionWH ((width : int), (height : int), (maxWidth : int), (maxHeight : int)) : HudGraphicsPosition.hudGraphicsPosition =
        begin
        let x_arg : int ref = ref (0) in ();
        let y_arg : int ref = ref (0) in ();
        let anchor : int ref = ref (0) in ();
        let basicHudFactory : BasicHudFactory.basicHudFactory ref = ref (((BasicHudFactory.getInstance ()) :> BasicHudFactory.basicHudFactory)) in ();
        if (!basicHudFactory#bOTTOMLEFT == (self#getLocation ())) then begin
            x_arg := (bufferZone + 2);
            y_arg := ((height - maxHeight) - bufferZone);
            anchor := ((Obj.magic (java_call_static "Graphics.get_bOTTOM" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_lEFT" (Obj.repr ()))))
        end else if (!basicHudFactory#bOTTOMRIGHT == (self#getLocation ())) then begin
            x_arg := (width - maxWidth);
            y_arg := ((height - maxHeight) - bufferZone);
            anchor := ((Obj.magic (java_call_static "Graphics.get_bOTTOM" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_rIGHT" (Obj.repr ()))))
        end else if (!basicHudFactory#tOPLEFT == (self#getLocation ())) then begin
            x_arg := (bufferZone + 2);
            y_arg := bufferZoneY;
            anchor := (Anchor.get_tOP_LEFT ())
        end else if (!basicHudFactory#tOPRIGHT == (self#getLocation ())) then begin
            x_arg := (width - maxWidth);
            y_arg := bufferZoneY;
            anchor := ((Obj.magic (java_call_static "Graphics.get_tOP" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_rIGHT" (Obj.repr ()))))
        end else if (!basicHudFactory#tOPCENTER == (self#getLocation ())) then begin
            x_arg := ((((width - maxWidth)) / 2));
            y_arg := bufferZoneY;
            anchor := ((Obj.magic (java_call_static "Graphics.get_tOP" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_hCENTER" (Obj.repr ()))))
        end else if (!basicHudFactory#bOTTOMCENTER == (self#getLocation ())) then begin
            x_arg := ((((width - maxWidth)) / 2));
            y_arg := ((height - maxHeight) - bufferZone);
            anchor := ((Obj.magic (java_call_static "Graphics.get_bOTTOM" (Obj.repr ()))) land (Obj.magic (java_call_static "Graphics.get_hCENTER" (Obj.repr ()))))
        end else if (!basicHudFactory#aBSOLUTE == (self#getLocation ())) then begin
            x_arg := maxHeight;
            y_arg := maxWidth;
            anchor := 0
        end;
        ((new HudGraphicsPosition.hudGraphicsPosition ((self#getPoint (!x_arg, !y_arg)), !anchor)) :> HudGraphicsPosition.hudGraphicsPosition)
        end
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-20"]
    

    method getPoint ((x_arg : int), (y_arg : int)) : GPoint.gPoint =
        begin
        (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (x_arg, y_arg)) :> GPoint.gPoint)
        end
    

    method getBufferZone () : int =
        begin
        bufferZone
        end
    

    method setBufferZone ((bufferZone_arg : int)) : unit =
        begin
        bufferZone <- bufferZone_arg;
        if (J2MEUtil.isHTML ()) then begin
            bufferZoneY <- bufferZone
        end else begin
            bufferZoneY <- (bufferZone + 5)
        end
        end
    

    method setLocation ((location_arg : int)) : unit =
        begin
        location <- location_arg
        end
    

    method setDirection ((direction_arg : int)) : unit =
        begin
        direction <- direction_arg
        end
    

    method getHudGraphicsPosition () : HudGraphicsPosition.hudGraphicsPosition =
        begin
        (hudGraphicsPosition :> HudGraphicsPosition.hudGraphicsPosition)
        end
    

    method getColor () : int =
        begin
        color
        end
    

    method getX () : int =
        begin
        x
        end
    

    method setX ((x_arg : int)) : unit =
        begin
        x <- x_arg
        end
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end
    

    method setY ((y_arg : int)) : unit =
        begin
        y <- y_arg
        end
    

    method getY () : int =
        begin
        y
        end
    

    method paintSSO : 'any1. 'any1 * string * string * int -> unit = fun (graphics, (string : string), (string2 : string), (offset : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        ignore ((Obj.magic graphics)#drawString (string, x, (self#getY ()), (hudGraphicsPosition#getAnchor ())));
        ignore ((Obj.magic graphics)#drawString (string2, (x + offset), (self#getY ()), (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]
    

    method paintSSOO : 'any1. 'any1 * string * string * int * int -> unit = fun (graphics, (string : string), (string2 : string), (offset : int), (offset2 : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor ((self#getColor ())));
        ignore ((Obj.magic graphics)#drawString (string, (x + offset), (self#getY ()), (hudGraphicsPosition#getAnchor ())));
        ignore ((Obj.magic graphics)#drawString (string2, (x + offset2), (self#getY ()), (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]
    

    method paintDXY : 'any1. 'any1 * char array * int * int * char array * int * int * int * int -> unit = fun (graphics, (charArray : char array), (offset : int), (len : int), (charArray2 : char array), (offset2 : int), (len2 : int), (xOffset : int), (xOffset2 : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        let y_arg : int ref = ref ((self#getY ())) in ();
        ignore ((Obj.magic graphics)#drawChars (charArray, offset, len, (x + xOffset), !y_arg, (hudGraphicsPosition#getAnchor ())));
        ignore ((Obj.magic graphics)#drawChars (charArray2, offset2, len2, (x + xOffset2), !y_arg, (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]
    

    method paintDX : 'any1. 'any1 * char array * int * int * char array * int * int * int -> unit = fun (graphics, (charArray : char array), (offset : int), (len : int), (charArray2 : char array), (offset2 : int), (len2 : int), (xOffset : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        let y_arg : int ref = ref ((self#getY ())) in ();
        ignore ((Obj.magic graphics)#drawChars (charArray, offset, len, x, !y_arg, (hudGraphicsPosition#getAnchor ())));
        ignore ((Obj.magic graphics)#drawChars (charArray2, offset2, len2, (x + xOffset), !y_arg, (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]
    

    method paintOffsetAndLength : 'any1. 'any1 * char array * int * int -> unit = fun (graphics, (charArray : char array), (offset : int), (len : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        let y_arg : int ref = ref ((self#getY ())) in ();
        ignore ((Obj.magic graphics)#drawChars (charArray, offset, len, x, !y_arg, (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]
    

    method paintString : 'any1. 'any1 * string -> unit = fun (graphics, (string : string)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        let y_arg : int ref = ref (((self#getY ()) + offsetY)) in ();
        ignore ((Obj.magic graphics)#drawString (string, x, !y_arg, (hudGraphicsPosition#getAnchor ())))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        location <- 0;
        direction <- 0;
        bufferZone <- 0;
        bufferZoneY <- 0;
        hudGraphicsPosition <- ((HudGraphicsPosition.get_nULL_HUD_GRAPHICS_POSITION ()) :> HudGraphicsPosition.hudGraphicsPosition);
        x <- 0;
        y <- 0;
        basicColor <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        ();
        updateMaxWidth <- 0;
        updateMaxHeight <- 0;
        offsetY <- 0;
        ();
        (self#setLocation (location_arg));
        (self#setDirection (direction_arg));
        (self#setBufferZone (bufferZone_arg));
        (self#onDisplayChangeEvent ((DisplayInfoSingleton.getInstance ())#displayChangeEvent));
        (self#setBasicColorP (basicColor_arg));
        color <- (basicColor_arg#intValue ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicHud" (fun arguments -> Obj.repr (new basicHud (Obj.obj arguments)))


