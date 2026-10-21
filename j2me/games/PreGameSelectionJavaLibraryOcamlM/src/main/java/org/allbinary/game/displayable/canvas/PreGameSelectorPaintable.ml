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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.draw.CanvasDrawLineString *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)

class preGameSelectorPaintable ((title_arg : string), (preGameScrollSelectionForm_arg : PreGameScrollSelectionForm.preGameScrollSelectionForm)) =
  object (self)
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable title : string = ""
    method title = title
    method set_title value' = title <- value'
    val mutable canvasDrawLineString : CanvasDrawLineString.canvasDrawLineString = (Obj.magic 0)
    method canvasDrawLineString = canvasDrawLineString
    method set_canvasDrawLineString value' = canvasDrawLineString <- value'
    val mutable preGameScrollSelectionForm : PreGameScrollSelectionForm.preGameScrollSelectionForm = (Obj.magic 0)
    method preGameScrollSelectionForm = preGameScrollSelectionForm
    method set_preGameScrollSelectionForm value' = preGameScrollSelectionForm <- value'
    
    

    method update () : unit =
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        canvasDrawLineString <- (new CanvasDrawLineString.canvasDrawLineString ((!displayInfo#getLastHalfWidth ()), 0))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (((BasicColorFactory.getInstance ())#wHITE#intValue ())));
        ignore (canvasDrawLineString#paint ((Obj.magic graphics), title, 0));
        ignore ((self#getPreGameSelectionForm ())#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method getPreGameSelectionForm () : PreGameScrollSelectionForm.preGameScrollSelectionForm =
        begin
        (preGameScrollSelectionForm :> PreGameScrollSelectionForm.preGameScrollSelectionForm)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        title <- title_arg;
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        canvasDrawLineString <- (new CanvasDrawLineString.canvasDrawLineString ((!displayInfo#getLastHalfWidth ()), 0));
        preGameScrollSelectionForm <- preGameScrollSelectionForm_arg
      end
  end
let () = java_register_constructor "PreGameSelectorPaintable" (fun arguments -> Obj.repr (new preGameSelectorPaintable (Obj.obj arguments)))


