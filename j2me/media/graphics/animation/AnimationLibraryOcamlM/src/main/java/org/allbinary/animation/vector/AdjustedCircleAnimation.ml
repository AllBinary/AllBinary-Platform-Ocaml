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
(* package org.allbinary.animation.vector *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.graphics.color.BasicColor *)

class adjustedCircleAnimation ((width : int), (height : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit CircleAnimation.circleAnimation (width, height, basicColor)
    val mutable xAdjustment : int = 0
    method xAdjustment = xAdjustment
    method set_xAdjustment value' = xAdjustment <- value'
    val mutable yAdjustment : int = 0
    method yAdjustment = yAdjustment
    method set_yAdjustment value' = yAdjustment <- value'
    
    

    method initXY ((xAdjustment_arg : int), (yAdjustment_arg : int)) : unit =
        begin
        xAdjustment <- xAdjustment_arg;
        yAdjustment <- yAdjustment_arg
        end [@@warning "-7"]
    

    method init ((innerWidth : int)) : unit =
        begin
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            let widthPortion : int ref = ref (((((((innerWidth / 3)) * 10)) / 7))) in ();
            xAdjustment <- (-(((((self#width) asr 1)) - !widthPortion)));
            yAdjustment <- xAdjustment
        end else begin
            xAdjustment <- (-(((((self#width) asr 1)) - innerWidth)));
            yAdjustment <- xAdjustment
        end
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())));
        ignore ((Obj.magic graphics)#drawArc ((x + xAdjustment), (y + yAdjustment), (self#width), (self#height), 0, (self#tOTAL_ANGLE)))
        end [@@warning "-7-20"]

    initializer
      begin
        xAdjustment <- 0;
        yAdjustment <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AdjustedCircleAnimation" (fun arguments -> Obj.repr (new adjustedCircleAnimation (Obj.obj arguments)))

let createAnimation : 'any5. int * int * int * int * 'any5 -> _ = fun ((width : int), (height : int), (xAdjustment_arg : int), (yAdjustment_arg : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let adjustedCircleAnimation : Obj.t ref = ref ((Obj.repr (new adjustedCircleAnimation (width, height, (Obj.magic basicColor))))) in ();
        ignore ((Obj.magic !adjustedCircleAnimation)#initXY (xAdjustment_arg, yAdjustment_arg));
        (Obj.magic !adjustedCircleAnimation)
        end [@@warning "-20"]

and createW : 'any4. int * int * int * 'any4 -> _ = fun ((width : int), (height : int), (innerWidth : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let adjustedCircleAnimation : Obj.t ref = ref ((Obj.repr (new adjustedCircleAnimation (width, height, (Obj.magic basicColor))))) in ();
        ignore ((Obj.magic !adjustedCircleAnimation)#init (innerWidth));
        (Obj.magic !adjustedCircleAnimation)
        end [@@warning "-20"]
let () = java_register_static "AdjustedCircleAnimation.createAnimation" (fun arguments -> Obj.repr (createAnimation (Obj.obj arguments)))
let () = java_register_static "AdjustedCircleAnimation.createW" (fun arguments -> Obj.repr (createW (Obj.obj arguments)))


