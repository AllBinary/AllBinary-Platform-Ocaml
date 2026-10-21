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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.event.GameKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEventUtil *)
(* import org.allbinary.game.score.displayable.HighScoresCanvas *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.util.BasicArrayList *)

class highScoresCanvasLevelChangeInputProcessor ((highScoresCanvas : HighScoresCanvas.highScoresCanvas)) =
  object (self)
    inherit HighScoresCanvasInputProcessor.highScoresCanvasInputProcessor (highScoresCanvas)
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable iNSTRUCTIONS : string = ""
    method iNSTRUCTIONS = iNSTRUCTIONS
    method set_iNSTRUCTIONS value' = iNSTRUCTIONS <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        ignore ((GameKeyEventHandler.getInstance ())#addListener (self))
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore ((GameKeyEventHandler.getInstance ())#removeListener (self))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr !list#objectArray.(index))) in ();
            let key : int ref = ref ((GameKeyEventUtil.getKey (!anyType))) in ();
            if (!key = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) then begin
                ignore (((self#getHighScoresCanvas ())#getGameInfo ())#nextGameLevel ())
            end else if (!key = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) then begin
                ignore (((self#getHighScoresCanvas ())#getGameInfo ())#previousGameLevel ())
            end;
            ignore ((self#getHighScoresCanvas ())#executeUpdate ())
        done;
        ignore (!list#clear ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let width : int ref = ref ((displayInfoSingleton#getLastWidth ())) in ();
        let topScoresWidth : int ref = ref ((((((Obj.magic graphics)#getFont ())#stringWidth (iNSTRUCTIONS)) asr 1))) in ();
        ignore ((Obj.magic graphics)#drawString (iNSTRUCTIONS, (((!width asr 1)) - !topScoresWidth), (fontHeight * 2), anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        iNSTRUCTIONS <- "(Right = Next Track, Left = Previous Track)";
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        anchor <- (Anchor.get_tOP_LEFT ());
        fontHeight <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "HighScoresCanvasLevelChangeInputProcessor" (fun arguments -> Obj.repr (new highScoresCanvasLevelChangeInputProcessor (Obj.obj arguments)))


