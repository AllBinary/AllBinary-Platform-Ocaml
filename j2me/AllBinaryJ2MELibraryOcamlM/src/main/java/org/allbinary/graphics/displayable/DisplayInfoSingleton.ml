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
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Displayable *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.threed.SWTJOGLProcessor *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class displayInfoSingleton () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonLabels : CommonLabels.commonLabels = (Obj.magic 0)
    method commonLabels = commonLabels
    method set_commonLabels value' = commonLabels <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable oRIENTATION : string = ""
    method oRIENTATION = oRIENTATION
    method set_oRIENTATION value' = oRIENTATION <- value'
    val mutable aDJUSTING_FOR_SCALING_IN_PORTRAIT : string = ""
    method aDJUSTING_FOR_SCALING_IN_PORTRAIT = aDJUSTING_FOR_SCALING_IN_PORTRAIT
    method set_aDJUSTING_FOR_SCALING_IN_PORTRAIT value' = aDJUSTING_FOR_SCALING_IN_PORTRAIT <- value'
    val mutable aDJUSTING_FOR_SCALING_IN_LANDSCAPE : string = ""
    method aDJUSTING_FOR_SCALING_IN_LANDSCAPE = aDJUSTING_FOR_SCALING_IN_LANDSCAPE
    method set_aDJUSTING_FOR_SCALING_IN_LANDSCAPE value' = aDJUSTING_FOR_SCALING_IN_LANDSCAPE <- value'
    val mutable last : int array = (Obj.magic 0)
    method last = last
    method set_last value' = last <- value'
    val mutable lastHalf : int array = (Obj.magic 0)
    method lastHalf = lastHalf
    method set_lastHalf value' = lastHalf <- value'
    val mutable full : int array = (Obj.magic 0)
    method full = full
    method set_full value' = full <- value'
    val mutable top : int = 0
    method top = top
    method set_top value' = top <- value'
    val mutable left : int = 0
    method left = left
    method set_left value' = left <- value'
    val mutable xOffset : int = 0
    method xOffset = xOffset
    method set_xOffset value' = xOffset <- value'
    val mutable yOffset : int = 0
    method yOffset = yOffset
    method set_yOffset value' = yOffset <- value'
    val mutable scaleLargestTo : float = 0.0
    method scaleLargestTo = scaleLargestTo
    method set_scaleLargestTo value' = scaleLargestTo <- value'
    val mutable wIDTH : int = 0
    method wIDTH = wIDTH
    method set_wIDTH value' = wIDTH <- value'
    val mutable hEIGHT : int = 0
    method hEIGHT = hEIGHT
    method set_hEIGHT value' = hEIGHT <- value'
    val mutable cUSTOM_WIDTH : int = 0
    method cUSTOM_WIDTH = cUSTOM_WIDTH
    method set_cUSTOM_WIDTH value' = cUSTOM_WIDTH <- value'
    val mutable cUSTOM_HEIGHT : int = 0
    method cUSTOM_HEIGHT = cUSTOM_HEIGHT
    method set_cUSTOM_HEIGHT value' = cUSTOM_HEIGHT <- value'
    val mutable scalableListener : BaseScalable.baseScalable = (Obj.magic 0)
    method scalableListener = scalableListener
    method set_scalableListener value' = scalableListener <- value'
    val mutable displayRatio : float = 0.0
    method displayRatio = displayRatio
    method set_displayRatio value' = displayRatio <- value'
    val mutable ratio : float = 0.0
    method ratio = ratio
    method set_ratio value' = ratio <- value'
    val mutable sET_LAST_SIZE_METHOD_NAME : string = ""
    method sET_LAST_SIZE_METHOD_NAME = sET_LAST_SIZE_METHOD_NAME
    method set_sET_LAST_SIZE_METHOD_NAME value' = sET_LAST_SIZE_METHOD_NAME <- value'
    val mutable fULL_WIDTH : string = ""
    method fULL_WIDTH = fULL_WIDTH
    method set_fULL_WIDTH value' = fULL_WIDTH <- value'
    val mutable fULL_HEIGHT : string = ""
    method fULL_HEIGHT = fULL_HEIGHT
    method set_fULL_HEIGHT value' = fULL_HEIGHT <- value'
    val mutable lAST_WIDTH : string = ""
    method lAST_WIDTH = lAST_WIDTH
    method set_lAST_WIDTH value' = lAST_WIDTH <- value'
    val mutable lAST_HEIGHT : string = ""
    method lAST_HEIGHT = lAST_HEIGHT
    method set_lAST_HEIGHT value' = lAST_HEIGHT <- value'
    val mutable pORTRAIT : string = ""
    method pORTRAIT = pORTRAIT
    method set_pORTRAIT value' = pORTRAIT <- value'
    val mutable lANDSCAPE : string = ""
    method lANDSCAPE = lANDSCAPE
    method set_lANDSCAPE value' = lANDSCAPE <- value'
    val mutable displayChangeEvent : DisplayChangeEvent.displayChangeEvent = (Obj.magic 0)
    method displayChangeEvent = displayChangeEvent
    method set_displayChangeEvent value' = displayChangeEvent <- value'
    val mutable fIRE_METHOD_NAME : string = ""
    method fIRE_METHOD_NAME = fIRE_METHOD_NAME
    method set_fIRE_METHOD_NAME value' = fIRE_METHOD_NAME <- value'
    val mutable rEASON : string = ""
    method rEASON = rEASON
    method set_rEASON value' = rEASON <- value'
    val mutable uPDATE_FROM_ORIENTATION_CHANGE : string = ""
    method uPDATE_FROM_ORIENTATION_CHANGE = uPDATE_FROM_ORIENTATION_CHANGE
    method set_uPDATE_FROM_ORIENTATION_CHANGE value' = uPDATE_FROM_ORIENTATION_CHANGE <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable dISPLAY_INFO : string = ""
    method dISPLAY_INFO = dISPLAY_INFO
    method set_dISPLAY_INFO value' = dISPLAY_INFO <- value'
    val mutable fULL : string = ""
    method fULL = fULL
    method set_fULL value' = fULL <- value'
    val mutable lAST : string = ""
    method lAST = lAST
    method set_lAST value' = lAST <- value'
    val mutable lAST_HALF : string = ""
    method lAST_HALF = lAST_HALF
    method set_lAST_HALF value' = lAST_HALF <- value'
    
    

    method getLastHalf () : int array =
        begin
        lastHalf
        end
    

    method getLast () : int array =
        begin
        last
        end
    

    method getFull () : int array =
        begin
        full
        end
    

    method getScaleLargestTo () : float =
        begin
        scaleLargestTo
        end
    

    method setScaleLargestTo ((scaleLargestTo_arg : int)) : unit =
        begin
        scaleLargestTo <- (float_of_int (scaleLargestTo_arg))
        end
    

    method setLastSize ((aLastWidth : int), (aLastHeight : int), (reason : string)) : unit =
        begin
        if ((full.(wIDTH) <> aLastWidth) || (full.(hEIGHT) <> aLastHeight)) then begin
            (self#setLastSizeForce (aLastWidth, aLastHeight, reason))
        end
        end
    

    method setLastSizeForce ((aLastWidth : int), (aLastHeight : int), (reason : string)) : unit =
        let aLastWidth = ref aLastWidth in
        let aLastHeight = ref aLastHeight in
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (reason)))), self, sET_LAST_SIZE_METHOD_NAME));
        let aFullWidth : int ref = ref (!aLastWidth) in ();
        let aFullHeight : int ref = ref (!aLastHeight) in ();
        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((!stringMaker#append (fULL_WIDTH))#appendint (!aFullWidth))#append (fULL_HEIGHT))#appendint (!aFullHeight))#append ((java_string_of (Obj.repr self)))))), self, sET_LAST_SIZE_METHOD_NAME));
        let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
        if (!operatingSystemInterface#isOverScan ()) then begin
            aLastWidth := ((!aLastWidth * (!operatingSystemInterface#getOverScanXPercent ())) / 100);
            aLastHeight := ((!aLastHeight * (!operatingSystemInterface#getOverScanYPercent ())) / 100)
        end;
        if (!operatingSystemInterface#isScalable ()) then begin
            if (self#isPortraitWH (!aLastWidth, !aLastHeight)) then begin
                if ((float_of_int (!aLastHeight)) > scaleLargestTo) then begin
                    displayRatio <- (scaleLargestTo /. (float_of_int (!aLastHeight)));
                    ratio <- ((float_of_int (!aLastHeight)) /. scaleLargestTo);
                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (aDJUSTING_FOR_SCALING_IN_PORTRAIT))#appendfloat (displayRatio)))), self, sET_LAST_SIZE_METHOD_NAME));
                    aLastWidth := (int_of_float ((((float_of_int (!aLastWidth)) *. displayRatio))));
                    aLastHeight := (int_of_float ((((float_of_int (!aLastHeight)) *. displayRatio))));
                    ignore (scalableListener#scale (ratio))
                end else begin
                    ratio <- 1.0;
                    ignore (scalableListener#scale (ratio))
                end
            end else begin
                if ((float_of_int (!aLastWidth)) > scaleLargestTo) then begin
                    displayRatio <- (scaleLargestTo /. (float_of_int (!aLastWidth)));
                    ratio <- ((float_of_int (!aLastWidth)) /. scaleLargestTo);
                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (aDJUSTING_FOR_SCALING_IN_LANDSCAPE))#appendfloat (displayRatio)))), self, sET_LAST_SIZE_METHOD_NAME));
                    aLastWidth := (int_of_float ((((float_of_int (!aLastWidth)) *. displayRatio))));
                    aLastHeight := (int_of_float ((((float_of_int (!aLastHeight)) *. displayRatio))));
                    ignore (scalableListener#scale (ratio))
                end else begin
                    ratio <- 1.0;
                    ignore (scalableListener#scale (ratio))
                end
            end
        end;
        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((!stringMaker#append (lAST_WIDTH))#appendint (!aLastWidth))#append (lAST_HEIGHT))#appendint (!aLastHeight)))), self, sET_LAST_SIZE_METHOD_NAME));
        xOffset <- (!aFullWidth - !aLastWidth);
        yOffset <- (!aFullHeight - !aLastHeight);
        left <- (scalableListener#getLeft (xOffset));
        top <- (scalableListener#getTop (yOffset));
        full.(wIDTH) <- !aFullWidth;
        full.(hEIGHT) <- !aFullHeight;
        last.(wIDTH) <- !aLastWidth;
        lastHalf.(wIDTH) <- ((last.(wIDTH) asr 1));
        last.(hEIGHT) <- !aLastHeight;
        lastHalf.(hEIGHT) <- ((last.(hEIGHT) asr 1));
        ignore ((Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ())))#setCustom (!aLastWidth, !aLastHeight, ratio));
        (self#add (sET_LAST_SIZE_METHOD_NAME))
        end
    

    method isPortraitWH ((lastWidth : int), (lastHeight : int)) : bool =
        try
        begin
        if (lastHeight > lastWidth) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isPortrait () : bool =
        begin
        (self#isPortraitWH (last.(wIDTH), last.(hEIGHT)))
        end
    

    method add ((reason : string)) : unit =
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (rEASON))#append (reason)))), self, fIRE_METHOD_NAME));
        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
        ignore ((Obj.magic logUtil)#putF ((self#toStringAppend (!stringMaker)), self, fIRE_METHOD_NAME));
        ignore (list#add (reason))
        end
    

    method process () : unit =
        begin
        (try
            if ((list#size ()) > 0) then begin
                (self#processForced ())
            end;
            ignore (list#clear ())
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, fIRE_METHOD_NAME, e))))
        end)
        end
    

    method processForced () : unit =
        begin
        (try
            let swtJOGLProcessor : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !swtJOGLProcessor)#clear ());
            ignore ((DisplayChangeEventHandler.getInstance ())#fireEvent (displayChangeEvent));
            ignore ((LastDisplayChangeEventHandler.getInstance ())#fireEvent (displayChangeEvent));
            ignore ((Obj.magic !swtJOGLProcessor)#onSurfaceChanged ())
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, fIRE_METHOD_NAME, e))))
        end)
        end
    

    method update : 'any1. 'any1 * string -> unit = fun (displayable, (reason : string)) ->
        let displayable = Obj.repr displayable in
        begin
        let aLastWidth : int ref = ref (((Obj.magic displayable)#getWidth ())) in ();
        let aLastHeight : int ref = ref (((Obj.magic displayable)#getHeight ())) in ();
        let aFullWidth : int ref = ref (!aLastWidth) in ();
        let aFullHeight : int ref = ref (!aLastHeight) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((((((!stringMaker#append ((CommonLabels.getInstance ())#sTART_LABEL))#append (reason))#append (lAST_WIDTH))#appendint (!aLastWidth))#append (lAST_HEIGHT))#appendint (!aLastHeight))#append (commonSeps#sPACE))#append ((java_string_of (Obj.repr self)))))), self, commonStrings#uPDATE));
        if ((!aLastWidth > 0) && (!aLastHeight > 0)) then begin
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
            if (((not (!features#isDefault (!openGLFeatureFactory#oPENGL))) || (last.(wIDTH) <> !aLastWidth)) || (last.(hEIGHT) <> !aLastHeight)) then begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (!stringMaker#append (uPDATE_FROM_ORIENTATION_CHANGE)))), self, commonStrings#uPDATE));
                let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
                if (!operatingSystemInterface#isOverScan ()) then begin
                    aLastWidth := ((!aLastWidth * (!operatingSystemInterface#getOverScanXPercent ())) / 100);
                    aLastHeight := ((!aLastHeight * (!operatingSystemInterface#getOverScanYPercent ())) / 100)
                end;
                if (!operatingSystemInterface#isScalable ()) then begin
                    if (self#isPortraitWH (!aLastWidth, !aLastHeight)) then begin
                        if ((float_of_int (!aLastHeight)) > scaleLargestTo) then begin
                            displayRatio <- (scaleLargestTo /. (float_of_int (!aLastHeight)));
                            ratio <- ((float_of_int (!aLastHeight)) /. scaleLargestTo);
                            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (aDJUSTING_FOR_SCALING_IN_PORTRAIT))#appendfloat (displayRatio)))), self, commonStrings#uPDATE));
                            aLastWidth := (int_of_float ((((float_of_int (!aLastWidth)) *. displayRatio))));
                            aLastHeight := (int_of_float ((((float_of_int (!aLastHeight)) *. displayRatio))));
                            ignore (scalableListener#scale (ratio))
                        end else begin
                            ratio <- 1.0;
                            ignore (scalableListener#scale (ratio))
                        end
                    end else begin
                        if ((float_of_int (!aLastWidth)) > scaleLargestTo) then begin
                            displayRatio <- (scaleLargestTo /. (float_of_int (!aLastWidth)));
                            ratio <- ((float_of_int (!aLastWidth)) /. scaleLargestTo);
                            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (aDJUSTING_FOR_SCALING_IN_LANDSCAPE))#appendfloat (displayRatio)))), self, commonStrings#uPDATE));
                            aLastWidth := (int_of_float ((((float_of_int (!aLastWidth)) *. displayRatio))));
                            aLastHeight := (int_of_float ((((float_of_int (!aLastHeight)) *. displayRatio))));
                            ignore (scalableListener#scale (ratio))
                        end else begin
                            ratio <- 1.0;
                            ignore (scalableListener#scale (ratio))
                        end
                    end
                end;
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((!stringMaker#append (uPDATE_FROM_ORIENTATION_CHANGE))#append (lAST_WIDTH))#appendint (!aLastWidth))#append (lAST_HEIGHT))#appendint (!aLastHeight)))), self, commonStrings#uPDATE));
                xOffset <- (!aFullWidth - !aLastWidth);
                yOffset <- (!aFullHeight - !aLastHeight);
                left <- (scalableListener#getLeft (xOffset));
                top <- (scalableListener#getTop (yOffset));
                full.(wIDTH) <- !aFullWidth;
                full.(hEIGHT) <- !aFullHeight;
                last.(wIDTH) <- !aLastWidth;
                lastHalf.(wIDTH) <- ((last.(wIDTH) asr 1));
                last.(hEIGHT) <- !aLastHeight;
                lastHalf.(hEIGHT) <- ((last.(hEIGHT) asr 1));
                ignore ((Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ())))#setCustom (!aLastWidth, !aLastHeight, ratio));
                (self#add (commonStrings#uPDATE))
            end
        end
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (self#toStringAppend (!stringBuffer))
        end
    

    method toStringAppend : 'any1. 'any1 -> string = fun (stringBuffer) ->
        let stringBuffer = Obj.repr stringBuffer in
        begin
        ignore ((Obj.magic stringBuffer)#append (dISPLAY_INFO));
        ignore ((Obj.magic stringBuffer)#append (fULL));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#wIDTH_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (full.(wIDTH)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (fULL));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#hEIGHT_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (full.(hEIGHT)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (lAST));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#wIDTH_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (last.(wIDTH)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (lAST));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#hEIGHT_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (last.(hEIGHT)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (lAST_HALF));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#wIDTH_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (lastHalf.(wIDTH)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (lAST_HALF));
        ignore ((Obj.magic stringBuffer)#append (commonLabels#hEIGHT_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint (lastHalf.(hEIGHT)));
        ignore ((Obj.magic stringBuffer)#append (commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append ((if (self#isPortrait ()) then pORTRAIT else lANDSCAPE)));
        (java_string_of (Obj.repr (Obj.magic stringBuffer)))
        end [@@warning "-20"]
    

    method getTop () : int =
        begin
        top
        end
    

    method getLeft () : int =
        begin
        left
        end
    

    method getLastWidth () : int =
        begin
        last.(wIDTH)
        end
    

    method getLastHeight () : int =
        begin
        last.(hEIGHT)
        end
    

    method getLastHalfWidth () : int =
        begin
        lastHalf.(wIDTH)
        end
    

    method getLastHalfHeight () : int =
        begin
        lastHalf.(hEIGHT)
        end
    

    method getCustomLastWidth () : int =
        begin
        last.(cUSTOM_WIDTH)
        end
    

    method getCustomLastHeight () : int =
        begin
        last.(cUSTOM_HEIGHT)
        end
    

    method getRawLastWidth () : int =
        begin
        last.(wIDTH)
        end
    

    method getRawLastHeight () : int =
        begin
        last.(hEIGHT)
        end
    

    method setCustom ((width : int), (height : int)) : unit =
        begin
        last.(cUSTOM_WIDTH) <- width;
        lastHalf.(cUSTOM_WIDTH) <- ((last.(cUSTOM_WIDTH) asr 1));
        last.(cUSTOM_HEIGHT) <- height;
        lastHalf.(cUSTOM_HEIGHT) <- ((last.(cUSTOM_HEIGHT) asr 1))
        end
    

    method setScalableListener : 'any1. 'any1 -> unit = fun (scalableListener_arg) ->
        let scalableListener_arg = Obj.repr scalableListener_arg in
        begin
        scalableListener <- (Obj.magic scalableListener_arg)
        end [@@warning "-20"]
    

    method getScalableListener () : ScalableListener.scalableListener =
        begin
        (scalableListener :> ScalableListener.scalableListener)
        end
    

    method getRatio () : float =
        begin
        ratio
        end
    

    method getDisplayRatio () : float =
        begin
        displayRatio
        end
    

    method setOffset ((left_arg : int), (_top_arg : int)) : unit =
        begin
        left <- left_arg
        end
    

    method getxOffset () : int =
        begin
        xOffset
        end
    

    method getyOffset () : int =
        begin
        yOffset
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonLabels <- ((CommonLabels.getInstance ()) :> CommonLabels.commonLabels);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        oRIENTATION <- "ORIENTATION";
        aDJUSTING_FOR_SCALING_IN_PORTRAIT <- "Adjusting for Scaling in portrait display ratio: ";
        aDJUSTING_FOR_SCALING_IN_LANDSCAPE <- "Adjusting for Scaling in landscape display ratio: ";
        last <- (Array.make (4) 0);
        lastHalf <- (Array.make (4) 0);
        full <- (Array.make (4) 0);
        top <- 0;
        left <- 0;
        xOffset <- 0;
        yOffset <- 0;
        scaleLargestTo <- 0.0;
        wIDTH <- 0;
        hEIGHT <- 1;
        cUSTOM_WIDTH <- 2;
        cUSTOM_HEIGHT <- 3;
        scalableListener <- ((new BaseScalable.baseScalable ()) :> BaseScalable.baseScalable);
        displayRatio <- 0.0;
        ratio <- 1.0;
        sET_LAST_SIZE_METHOD_NAME <- "setLastSize";
        fULL_WIDTH <- " FullWidth: ";
        fULL_HEIGHT <- " FullHeight: ";
        lAST_WIDTH <- "LastWidth: ";
        lAST_HEIGHT <- " LastHeight: ";
        pORTRAIT <- "Portrait";
        lANDSCAPE <- "Landscape";
        displayChangeEvent <- ((new DisplayChangeEvent.displayChangeEvent (self)) :> DisplayChangeEvent.displayChangeEvent);
        fIRE_METHOD_NAME <- "fire";
        rEASON <- "reason: ";
        uPDATE_FROM_ORIENTATION_CHANGE <- "Updating from Orientation Change ";
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        dISPLAY_INFO <- "Display Info: ";
        fULL <- "full";
        lAST <- "last";
        lAST_HALF <- "lastHalf";
        ();
        let size : int ref = ref ((Array.length last)) in ();
        for index = 0 to !size - 1 do
            last.(index) <- 0;
            lastHalf.(index) <- 0;
            full.(index) <- 0
        done;
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            scaleLargestTo <- 640.
        end else begin
            scaleLargestTo <- 1080.
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "DisplayInfoSingleton" (fun arguments -> Obj.repr (new displayInfoSingleton (Obj.obj arguments)))

let sINGLETON = (new displayInfoSingleton ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "DisplayInfoSingleton.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "DisplayInfoSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


