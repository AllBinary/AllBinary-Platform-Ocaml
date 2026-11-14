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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.paint.Paintable *)

class sWTBlackPaintable () =
  object
    inherit Paintable.paintable ()
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable bLACK : BasicColor.basicColor = (Obj.magic 0)
    method bLACK = bLACK
    method set_bLACK value' = bLACK <- value'
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), bLACK))
        end [@@warning "-7-20"]

    initializer
      begin
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        bLACK <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        ()
      end
  end
let () = java_register_constructor "SWTBlackPaintable" (fun arguments -> Obj.repr (new sWTBlackPaintable (Obj.obj arguments)))


