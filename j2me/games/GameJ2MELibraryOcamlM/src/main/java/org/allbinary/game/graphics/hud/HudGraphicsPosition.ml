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
(* package org.allbinary.game.graphics.hud *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)

class hudGraphicsPosition ((point_arg : GPoint.gPoint), (anchor_arg : int)) =
  object (self)
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable point : GPoint.gPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'
    
    

    method getAnchor () : int =
        begin
        anchor
        end
    

    method setAnchor ((anchor_arg : int)) : unit =
        begin
        anchor <- anchor_arg
        end
    

    method getPoint () : GPoint.gPoint =
        begin
        (point :> GPoint.gPoint)
        end
    

    method setPoint : 'any1. 'any1 -> unit = fun (point_arg) ->
        let point_arg = Obj.repr point_arg in
        begin
        point <- (Obj.magic point_arg)
        end [@@warning "-20"]

    initializer
      begin
        anchor <- 0;
        point <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        ();
        (self#setAnchor (anchor_arg));
        (self#setPoint (point_arg))
      end
  end
let () = java_register_constructor "HudGraphicsPosition" (fun arguments -> Obj.repr (new hudGraphicsPosition (Obj.obj arguments)))

let nULL_HUD_GRAPHICS_POSITION = (new hudGraphicsPosition ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 9))
let get_nULL_HUD_GRAPHICS_POSITION () = nULL_HUD_GRAPHICS_POSITION
let () = java_register_static "HudGraphicsPosition.get_nULL_HUD_GRAPHICS_POSITION" (fun _ -> Obj.repr (get_nULL_HUD_GRAPHICS_POSITION ()))


