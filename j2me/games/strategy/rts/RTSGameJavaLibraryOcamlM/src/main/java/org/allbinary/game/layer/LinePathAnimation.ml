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

class linePathAnimation () =
  object
    

    method paint : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (graphics, point, nextPoint, _tiledLayer) ->
        let graphics = Obj.repr graphics in
        let point = Obj.repr point in
        let nextPoint = Obj.repr nextPoint in
        begin
        ignore ((Obj.magic graphics)#drawLine (((Obj.magic nextPoint)#getX ()), ((Obj.magic nextPoint)#getY ()), ((Obj.magic point)#getX ()), ((Obj.magic point)#getY ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LinePathAnimation" (fun arguments -> Obj.repr (new linePathAnimation (Obj.obj arguments)))

let instance = (new linePathAnimation ())
let get_instance () = instance
let () = java_register_static "LinePathAnimation.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LinePathAnimation.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


