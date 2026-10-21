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
(* package org.allbinary.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.time.TimeDelayHelper *)

class allBinaryVisualDebugVibration () =
  object (self)
    inherit AllBinaryVibrationME.allBinaryVibrationME ()
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable vIBRATING : string = ""
    method vIBRATING = vIBRATING
    method set_vIBRATING value' = vIBRATING <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        width <- ((Obj.magic !font)#stringWidth (vIBRATING));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method vibrate ((duration : int), (_type_ : int), (_volume : int)) : unit =
        begin
        timeDelayHelper#set_delay (duration)
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (timeDelayHelper#isTimeTNT ()) then begin
            timeDelayHelper#set_delay (2147483647);
            ignore (myFontProcessor#process ((Obj.magic graphics)));
            ignore ((Obj.magic graphics)#drawString (vIBRATING, ((displayInfoSingleton#getLastHalfWidth ()) - ((width asr 1))), 0, anchor))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (2147483647)) :> TimeDelayHelper.timeDelayHelper);
        vIBRATING <- "Vibrating";
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        anchor <- (Anchor.get_tOP_LEFT ());
        width <- 0;
        ()
      end
  end
let () = java_register_constructor "AllBinaryVisualDebugVibration" (fun arguments -> Obj.repr (new allBinaryVisualDebugVibration (Obj.obj arguments)))


