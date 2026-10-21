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
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.view.ViewPositionBase *)


let isInside ((rectX1 : int), (rectY1 : int), (rectX2 : int), (rectY2 : int), (rect2X1 : int), (rect2Y1 : int), (rect2X2 : int), (rect2Y2 : int)) : bool =
        try
        begin
        if ((((rectX1 > rect2X1) && (rectX2 < rect2X2)) && (rectY1 > rect2Y1)) && (rectY2 < rect2Y2)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "GameLayerUtil.isInside" (fun arguments -> Obj.repr (isInside (Obj.obj arguments)))
class gameLayerUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GameLayerUtil" (fun arguments -> Obj.repr (new gameLayerUtil (Obj.obj arguments)))

let isOnScreen : 'any1. 'any1 -> bool = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref ((((Obj.magic layer)#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        (isInside ((!viewPosition#getX ()), (!viewPosition#getY ()), (!viewPosition#getX2 ()), (!viewPosition#getY2 ()), 0, 0, (!displayInfo#getLastWidth ()), (!displayInfo#getLastHeight ())))
        end [@@warning "-20"]
let () = java_register_static "GameLayerUtil.isOnScreen" (fun arguments -> Obj.repr (isOnScreen (Obj.obj arguments)))


