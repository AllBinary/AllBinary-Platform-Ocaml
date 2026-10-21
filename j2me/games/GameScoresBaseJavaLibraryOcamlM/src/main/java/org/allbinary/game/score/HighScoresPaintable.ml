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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.ColorChangeEvent *)
(* import org.allbinary.graphics.color.ColorChangeListener *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.util.BasicArrayList *)

class highScoresPaintable () =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable highScores : Obj.t = Obj.repr 0
    method highScores : 'r. 'r = Obj.magic highScores
    method set_highScores : 'v. 'v -> unit = fun value' -> highScores <- Obj.repr value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        charHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (eventObject) ->
        let eventObject = Obj.repr eventObject in
        begin
        let colorChangeEvent : ColorChangeEvent.colorChangeEvent ref = ref (((Obj.magic (Obj.magic eventObject)) :> ColorChangeEvent.colorChangeEvent)) in ();
        basicColor <- (!colorChangeEvent#getBasicColorP ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let width : int ref = ref ((displayInfoSingleton#getLastWidth ())) in ();
        let height : int ref = ref ((displayInfoSingleton#getLastHeight ())) in ();
        ignore ((Obj.magic graphics)#setColor (((self#getBasicColorP ())#intValue ())));
        let heading : string ref = ref (((Obj.magic highScores)#getHeading ())) in ();
        let topScoresWidth : int ref = ref ((((((Obj.magic graphics)#getFont ())#stringWidth (!heading)) asr 1))) in ();
        let charHeight_arg : int ref = ref (charHeight) in ();
        ignore ((Obj.magic graphics)#drawString (!heading, (((!width asr 1)) - !topScoresWidth), !charHeight_arg, anchor));
        ignore ((Obj.magic graphics)#drawString (((Obj.magic highScores)#getColumnOneHeading ()), 10, (!charHeight_arg * 3), anchor));
        let columnTwoHeading : string ref = ref (((Obj.magic highScores)#getColumnTwoHeading ())) in ();
        let columnTwoHeadingWidth : int ref = ref ((((Obj.magic graphics)#getFont ())#stringWidth (!columnTwoHeading))) in ();
        ignore ((Obj.magic graphics)#drawString (!columnTwoHeading, ((!width - 10) - !columnTwoHeadingWidth), (!charHeight_arg * 3), anchor));
        let index : int ref = ref (4) in ();
        let largestSecondColumnWidth : int ref = ref (!columnTwoHeadingWidth) in ();
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic highScores)#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let vectorIndex : int ref = ref (0) in ();
        let highScore : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        while ((!vectorIndex < !size) && ((!charHeight_arg * !index) < (!height - ((!charHeight_arg * 2))))) do
            highScore := Obj.repr ((Obj.magic !list#objectArray.(!vectorIndex)));
            let nextScoreWidth : int ref = ref ((((Obj.magic graphics)#getFont ())#stringWidth (((Obj.magic !highScore)#getScoreString ())))) in ();
            if (!nextScoreWidth > !largestSecondColumnWidth) then begin
                largestSecondColumnWidth := !nextScoreWidth
            end;
            vectorIndex := !vectorIndex + 1
        done;
        vectorIndex := 0;
        while ((!vectorIndex < !size) && ((!charHeight_arg * !index) < (!height - ((!charHeight_arg * 2))))) do
            highScore := Obj.repr ((Obj.magic !list#objectArray.(!vectorIndex)));
            ignore ((Obj.magic graphics)#drawString (((Obj.magic !highScore)#getName ()), 10, (!charHeight_arg * !index), anchor));
            ignore ((Obj.magic graphics)#drawString (((Obj.magic !highScore)#getScoreString ()), ((!width - 10) - !largestSecondColumnWidth), (!charHeight_arg * !index), anchor));
            index := !index + 1;
            vectorIndex := !vectorIndex + 1
        done
        end [@@warning "-7-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method setHighScores : 'any1. 'any1 -> unit = fun (highScores_arg) ->
        let highScores_arg = Obj.repr highScores_arg in
        begin
        highScores <- Obj.repr ((Obj.magic highScores_arg))
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        highScores <- (Obj.repr (NullHighScoresSingletonFactory.getInstance ()));
        anchor <- (Anchor.get_tOP_LEFT ());
        charHeight <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoresPaintable" (fun arguments -> Obj.repr (new highScoresPaintable (Obj.obj arguments)))


