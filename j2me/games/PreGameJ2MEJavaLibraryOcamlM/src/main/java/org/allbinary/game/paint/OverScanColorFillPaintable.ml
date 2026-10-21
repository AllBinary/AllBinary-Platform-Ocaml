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

class overScanColorFillPaintable ((basicColor : BasicColor.basicColor)) =
  object
    inherit ColorFillPaintable.colorFillPaintable (basicColor)
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (colorP));
        ignore ((Obj.magic graphics)#fillRect ((-((Obj.magic graphics)#getClipX ())), (-((Obj.magic graphics)#getClipY ())), ((displayInfoSingleton#getLastWidth ()) + ((((Obj.magic graphics)#getClipX ()) * 2))), ((displayInfoSingleton#getLastHeight ()) + ((((Obj.magic graphics)#getClipY ()) * 2)))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "OverScanColorFillPaintable" (fun arguments -> Obj.repr (new overScanColorFillPaintable (Obj.obj arguments)))


