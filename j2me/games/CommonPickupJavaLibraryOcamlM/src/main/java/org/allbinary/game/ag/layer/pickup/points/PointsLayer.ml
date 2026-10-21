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
(* package org.allbinary.game.ag.layer.pickup.points *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.view.ViewPosition *)

class pointsLayer ((points_arg : int)) =
  object
    inherit AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))), (ViewPosition.getInstanceD ()))
    val mutable points : int = 0
    method points = points
    method set_points value' = points <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method visit : 'any1. 'any1 -> unit = fun (scoreableInterface) ->
        let scoreableInterface = Obj.repr scoreableInterface in
        begin
        ignore ((Obj.magic scoreableInterface)#addPoints (points))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        points <- points_arg
      end
  end
let () = java_register_constructor "PointsLayer" (fun arguments -> Obj.repr (new pointsLayer (Obj.obj arguments)))


