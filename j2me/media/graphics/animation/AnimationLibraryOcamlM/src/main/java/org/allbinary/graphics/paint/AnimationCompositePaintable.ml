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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)

class animationCompositePaintable ((animationInterface_arg : Animation.animation)) =
  object
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintXY ((Obj.magic graphics), 0, 0))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintThreedXYZ ((Obj.magic graphics), 0, 0, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        animationInterface <- animationInterface_arg
      end
  end
let () = java_register_constructor "AnimationCompositePaintable" (fun arguments -> Obj.repr (new animationCompositePaintable (Obj.obj arguments)))


