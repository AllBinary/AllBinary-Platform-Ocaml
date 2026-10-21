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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.CircularIndexUtil *)
(* import org.allbinary.view.ViewPosition *)
(* import org.allbinary.view.ViewPositionBase *)

class animationDamageFloaters ((layerInterface_arg : AllBinaryLayer.allBinaryLayer), (animationInterfaceArray_arg : IndexedAnimation.indexedAnimation array), (dx_arg : int), (dy_arg : int)) =
  object (self)
    inherit DamageFloaters.damageFloaters ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable layerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method layerInterface = layerInterface
    method set_layerInterface value' = layerInterface <- value'
    val mutable animationInterfaceArray : IndexedAnimation.indexedAnimation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method add ((_damage : int)) : unit =
        begin
        let i : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore (animationInterfaceArray.(!i)#setFrame (0));
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((layerInterface#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
            let x : int ref = ref ((!viewPosition#getX ())) in ();
            let y : int ref = ref ((!viewPosition#getY ())) in ();
            for index = 0 to (Array.length animationInterfaceArray) - 1 do
                let animationInterface : IndexedAnimation.indexedAnimation ref = ref ((animationInterfaceArray.(index) :> IndexedAnimation.indexedAnimation)) in ();
                if ((!animationInterface#getFrame ()) < ((!animationInterface#getAnimationSize ()) - 1)) then begin
                    let delta : int ref = ref (((!animationInterface#getFrame ()) * 20)) in ();
                    ignore (!animationInterface#paintXY ((Obj.magic graphics), (!x + dx), ((!y - !delta) + dy)));
                    ignore (!animationInterface#nextFrame ())
                end
            done
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            let canvasStrings : CanvasStrings.canvasStrings ref = ref (((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !canvasStrings#pAINT, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        animationInterfaceArray <- animationInterfaceArray_arg;
        for index = ((Array.length animationInterfaceArray) - 1) downto 0 do
            ignore (animationInterfaceArray.(index)#setFrame (((animationInterfaceArray.(index)#getSize ()) - 1)))
        done;
        layerInterface <- layerInterface_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance ((Array.length animationInterfaceArray)));
        dx <- dx_arg;
        dy <- dy_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AnimationDamageFloaters" (fun arguments -> Obj.repr (new animationDamageFloaters (Obj.obj arguments)))


