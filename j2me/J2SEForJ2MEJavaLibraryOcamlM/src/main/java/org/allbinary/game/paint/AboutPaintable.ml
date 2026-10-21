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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.Paintable *)

class aboutPaintable ((info_arg : string array), (developers_arg : string array)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable aBOUT : string = ""
    method aBOUT = aBOUT
    method set_aBOUT value' = aBOUT <- value'
    val mutable info : string array = (Obj.magic 0)
    method info = info
    method set_info value' = info <- value'
    val mutable developers : string array = (Obj.magic 0)
    method developers = developers
    method set_developers value' = developers <- value'
    val mutable paintableArray : Paintable.paintable array = (Obj.magic 0)
    method paintableArray = paintableArray
    method set_paintableArray value' = paintableArray <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'
    val mutable aboutBeginWidth : int = 0
    method aboutBeginWidth = aboutBeginWidth
    method set_aboutBeginWidth value' = aboutBeginWidth <- value'
    val mutable infoBeginWidth : int array = (Obj.magic 0)
    method infoBeginWidth = infoBeginWidth
    method set_infoBeginWidth value' = infoBeginWidth <- value'
    val mutable developersBeginWidth : int array = (Obj.magic 0)
    method developersBeginWidth = developersBeginWidth
    method set_developersBeginWidth value' = developersBeginWidth <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        charHeight <- ((Obj.magic !font)#getHeight ());
        aboutBeginWidth <- ((((Obj.magic !font)#stringWidth (aBOUT)) asr 1));
        let infoSize : int ref = ref ((Array.length info)) in ();
        for index = 0 to !infoSize - 1 do
            infoBeginWidth.(index) <- ((((Obj.magic !font)#stringWidth (info.(index))) asr 1))
        done;
        let size : int ref = ref ((Array.length developers)) in ();
        for index = 0 to !size - 1 do
            developersBeginWidth.(index) <- ((((Obj.magic !font)#stringWidth (developers.(index))) asr 1))
        done;
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method getPaintableArrayInstance () : Paintable.paintable array =
        begin
        paintableArray
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let halfWidth : int ref = ref ((displayInfoSingleton#getLastHalfWidth ())) in ();
        ignore ((Obj.magic graphics)#drawString (aBOUT, (!halfWidth - aboutBeginWidth), (2 * charHeight), anchor));
        let infoSize : int ref = ref ((Array.length info)) in ();
        for index = 0 to !infoSize - 1 do
            ignore ((Obj.magic graphics)#drawString (info.(index), (!halfWidth - infoBeginWidth.(index)), (((4 + index)) * charHeight), anchor))
        done;
        let size : int ref = ref ((Array.length developers)) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic graphics)#drawString (developers.(index), (!halfWidth - developersBeginWidth.(index)), ((((5 + !infoSize) + index)) * charHeight), anchor))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        aBOUT <- (CanvasStrings.getInstance ())#aBOUT;
        ();
        ();
        paintableArray <- [| self |];
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        charHeight <- 0;
        aboutBeginWidth <- 0;
        ();
        ();
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        info <- info_arg;
        infoBeginWidth <- (Array.make ((Array.length info)) 0);
        developers <- developers_arg;
        developersBeginWidth <- (Array.make ((Array.length developers)) 0)
      end
  end
let () = java_register_constructor "AboutPaintable" (fun arguments -> Obj.repr (new aboutPaintable (Obj.obj arguments)))

let getInstance ((info_arg : string array), (developers_arg : string array)) =
        begin
        (new aboutPaintable (info_arg, developers_arg))
        end
let () = java_register_static "AboutPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


