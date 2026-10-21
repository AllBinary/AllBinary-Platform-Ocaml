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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)

class colorFillPaintable ((basicColor : BasicColor.basicColor)) =
  object
    inherit ColorFillBasePaintable.colorFillBasePaintable (basicColor)
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (colorP));
        ignore ((Obj.magic graphics)#fillRect (0, 0, (displayInfoSingleton#getLastWidth ()), (displayInfoSingleton#getLastHeight ())))
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ColorFillPaintable" (fun arguments -> Obj.repr (new colorFillPaintable (Obj.obj arguments)))


