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
(* package org.allbinary.game.layer.geographic.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.image.PaintableToImageUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.view.ViewPositionBase *)

class imageMiniMapLayer ((geographicMapInterface : BasicGeographicMap.basicGeographicMap), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit MiniMapLayer.miniMapLayer (geographicMapInterface, viewPosition)
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method init () : unit =
        begin
        let aWidth : int ref = ref ((allBinaryTiledLayer#getWidth ())) in ();
        let aHeight : int ref = ref ((allBinaryTiledLayer#getHeight ())) in ();
        image <- Obj.repr ((PaintableToImageUtil.getImage (allBinaryTiledLayer, !aWidth, !aHeight)))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic image), x, y, anchor));
        ignore (self#paintDots ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        image <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageMiniMapLayer" (fun arguments -> Obj.repr (new imageMiniMapLayer (Obj.obj arguments)))


