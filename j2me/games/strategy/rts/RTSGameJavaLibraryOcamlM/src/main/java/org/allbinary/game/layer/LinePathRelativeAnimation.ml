(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.layer.Layer *)

class linePathRelativeAnimation () =
  object
    inherit LinePathAnimation.linePathAnimation ()
    

    method paint : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (graphics, point, nextPoint, tiledLayer) ->
        let graphics = Obj.repr graphics in
        let point = Obj.repr point in
        let nextPoint = Obj.repr nextPoint in
        let tiledLayer = Obj.repr tiledLayer in
        begin
        ignore ((Obj.magic graphics)#drawLine ((((Obj.magic nextPoint)#getX ()) - ((Obj.magic tiledLayer)#getXP ())), (((Obj.magic nextPoint)#getY ()) - ((Obj.magic tiledLayer)#getYP ())), (((Obj.magic point)#getX ()) - ((Obj.magic tiledLayer)#getXP ())), (((Obj.magic point)#getY ()) - ((Obj.magic tiledLayer)#getYP ()))))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LinePathRelativeAnimation" (fun arguments -> Obj.repr (new linePathRelativeAnimation (Obj.obj arguments)))

let instanceC = (new linePathRelativeAnimation ())
let get_instanceC () = instanceC
let () = java_register_static "LinePathRelativeAnimation.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () : LinePathAnimation.linePathAnimation =
        begin
        (instanceC :> LinePathAnimation.linePathAnimation)
        end
let () = java_register_static "LinePathRelativeAnimation.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


