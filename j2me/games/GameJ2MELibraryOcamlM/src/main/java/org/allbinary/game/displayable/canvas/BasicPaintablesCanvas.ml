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
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.paint.ColorFillBasePaintable *)
(* import org.allbinary.game.paint.ColorFillPaintableFactory *)
(* import org.allbinary.graphics.paint.Paintable *)

class basicPaintablesCanvas (cmdListener, (name : string), (allBinaryGameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager), (paintableArray_arg : Paintable.paintable array)) =
  object
    inherit GameCommandCanvas.gameCommandCanvas (cmdListener, name, (allBinaryGameLayerManager#getBackgroundBasicColor ()), (allBinaryGameLayerManager#getForegroundBasicColor ())) as super
    val mutable paintableArray : Paintable.paintable array = (Obj.magic 0)
    method paintableArray = paintableArray
    method set_paintableArray value' = paintableArray <- value'
    val mutable colorFillPaintable : ColorFillBasePaintable.colorFillBasePaintable = (Obj.magic 0)
    method colorFillPaintable = colorFillPaintable
    method set_colorFillPaintable value' = colorFillPaintable <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (colorFillPaintable#paint ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor (foregroundColor));
        for index = ((Array.length paintableArray) - 1) downto 0 do
            ignore (paintableArray.(index)#paint ((Obj.magic graphics)))
        done;
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        paintableArray <- paintableArray_arg;
        colorFillPaintable <- ((Obj.magic (java_call_static "ColorFillPaintableFactory.getInstance" (Obj.repr ())))#getInstance ((allBinaryGameLayerManager#getBackgroundBasicColor ()), false))
      end
  end
let () = java_register_constructor "BasicPaintablesCanvas" (fun arguments -> Obj.repr (new basicPaintablesCanvas (Obj.obj arguments)))


