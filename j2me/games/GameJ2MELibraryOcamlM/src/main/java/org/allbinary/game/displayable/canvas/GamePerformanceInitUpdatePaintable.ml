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
(* import org.allbinary.canvas.GameStatisticsFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)

class gamePerformanceInitUpdatePaintable () =
  object (self)
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable halfHeight : int = 0
    method halfHeight = halfHeight
    method set_halfHeight value' = halfHeight <- value'
    val mutable yArray : int array = (Obj.magic 0)
    method yArray = yArray
    method set_yArray value' = yArray <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable baseRefreshHelperCharArray : char array array = (Obj.magic 0)
    method baseRefreshHelperCharArray = baseRefreshHelperCharArray
    method set_baseRefreshHelperCharArray value' = baseRefreshHelperCharArray <- value'
    val mutable defaultStringWidth : int = 0
    method defaultStringWidth = defaultStringWidth
    method set_defaultStringWidth value' = defaultStringWidth <- value'
    val mutable rED : int = 0
    method rED = rED
    method set_rED value' = rED <- value'
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        defaultStringWidth <- (MyFontProcessor.defaultStringWidth ((Obj.magic !font), 2));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method init () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        baseRefreshHelperCharArray <- ((Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ())))#to2DCharArray ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor (rED));
        let charArray : char array ref = ref ((Obj.magic 0)) in ();
        let charArray2 : char array ref = ref ((Obj.magic 0)) in ();
        let size2 : int ref = ref (0) in ();
        let size3 : int ref = ref (0) in ();
        let size : int ref = ref (((Array.length baseRefreshHelperCharArray) - 2)) in ();
        let index : int ref = ref (!size) in ();
        while (index >= 0) do
            charArray := baseRefreshHelperCharArray.(index);
            charArray2 := baseRefreshHelperCharArray.((index + 1));
            size2 := (Array.length !charArray);
            size3 := (Array.length !charArray2);
            ignore ((Obj.magic graphics)#drawChars (!charArray, 0, !size2, 0, yArray.(index), 0));
            ignore ((Obj.magic graphics)#drawChars (!charArray2, 0, !size3, (!size2 * defaultStringWidth), yArray.((index + 1)), 0));
            index <- (index - 2)
        done
        end [@@warning "-7-20"]

    initializer
      begin
        halfHeight <- ((DisplayInfoSingleton.getInstance ())#getLastHalfHeight ());
        yArray <- [| (halfHeight + 30); (halfHeight + 30); ((halfHeight + 30) + 15); ((halfHeight + 30) + 15); ((halfHeight + 30) + 30); ((halfHeight + 30) + 30); ((halfHeight + 30) + 45); ((halfHeight + 30) + 45) |];
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        baseRefreshHelperCharArray <- (Array.make_matrix (0) (0) '\000');
        defaultStringWidth <- 0;
        rED <- ((BasicColorFactory.getInstance ())#rED#intValue ());
        ()
      end
  end
let () = java_register_constructor "GamePerformanceInitUpdatePaintable" (fun arguments -> Obj.repr (new gamePerformanceInitUpdatePaintable (Obj.obj arguments)))


