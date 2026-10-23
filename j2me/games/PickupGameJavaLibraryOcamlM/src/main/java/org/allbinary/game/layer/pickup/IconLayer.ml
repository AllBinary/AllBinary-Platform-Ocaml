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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.view.ViewPosition *)

class iconLayer (animationInterface_arg, (width : int), (height : int)) =
  object (self)
    inherit AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, width, height)))), (ViewPosition.getInstanceD ()))
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), (self#x), (self#y)))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic animationInterface)#paintThreedXYZ ((Obj.magic graphics), (self#x), (self#y), (self#z)))
        end [@@warning "-7-20"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterface)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationInterface <- Obj.repr (animationInterface_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "IconLayer" (fun arguments -> Obj.repr (new iconLayer (Obj.obj arguments)))

let nULL_ICON_LAYER = (new iconLayer (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)), 0, 0))
let get_nULL_ICON_LAYER () = nULL_ICON_LAYER
let () = java_register_static "IconLayer.get_nULL_ICON_LAYER" (fun _ -> Obj.repr (get_nULL_ICON_LAYER ()))


