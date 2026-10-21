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
(* package org.allbinary.animation.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.IndexedAnimationBehavior *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class titleAnimation ((animationInterfaceArray_arg : IndexedAnimation.indexedAnimation array), (basicColorArray_arg : BasicColor.basicColor array), (dxArray_arg : int array), (dyArray_arg : int array), (y_arg : int), (width : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit SpecialAnimation.specialAnimation (animationBehavior)
    val mutable systemWrapper : ABSystemWrapper.aBSystemWrapper = (Obj.magic 0)
    method systemWrapper = systemWrapper
    method set_systemWrapper value' = systemWrapper <- value'
    val mutable deltaX : float = 0.0
    method deltaX = deltaX
    method set_deltaX value' = deltaX <- value'
    val mutable deltaY : float = 0.0
    method deltaY = deltaY
    method set_deltaY value' = deltaY <- value'
    val mutable deltaZ : float = 0.0
    method deltaZ = deltaZ
    method set_deltaZ value' = deltaZ <- value'
    val mutable basicColorArray : BasicColor.basicColor array = (Obj.magic 0)
    method basicColorArray = basicColorArray
    method set_basicColorArray value' = basicColorArray <- value'
    val mutable dxArray : int array = (Obj.magic 0)
    method dxArray = dxArray
    method set_dxArray value' = dxArray <- value'
    val mutable dyArray : int array = (Obj.magic 0)
    method dyArray = dyArray
    method set_dyArray value' = dyArray <- value'
    val mutable widthP : int = 0
    method widthP = widthP
    method set_widthP value' = widthP <- value'
    val mutable animationInterfaceArray : IndexedAnimation.indexedAnimation array = (Obj.magic 0)
    method animationInterfaceArray = animationInterfaceArray
    method set_animationInterfaceArray value' = animationInterfaceArray <- value'
    val mutable sizeP : int = 0
    method sizeP = sizeP
    method set_sizeP value' = sizeP <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable lastFrameStartTime : int = 0
    method lastFrameStartTime = lastFrameStartTime
    method set_lastFrameStartTime value' = lastFrameStartTime <- value'
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable cLEAR_COLOR : BasicColor.basicColor = (Obj.magic 0)
    method cLEAR_COLOR = cLEAR_COLOR
    method set_cLEAR_COLOR value' = cLEAR_COLOR <- value'
    
    

    method nextFrame () : unit =
        begin
        let currentTime : int ref = ref ((systemWrapper#currentTimeMillis ())) in ();
        let totalTimeElapsed : int ref = ref ((!currentTime - lastFrameStartTime)) in ();
        let indexedAnimationBehavior : IndexedAnimationBehavior.indexedAnimationBehavior ref = ref (((Obj.magic (self#getAnimationBehavior ())) :> IndexedAnimationBehavior.indexedAnimationBehavior)) in ();
        if (!totalTimeElapsed > !indexedAnimationBehavior#frameDelayTime) then begin
            (self#previousFrame ());
            lastFrameStartTime <- !currentTime
        end;
        if ((animationInterfaceArray.(0)#getFrame ()) == 0) then begin
            !indexedAnimationBehavior#set_loopIndex (!indexedAnimationBehavior#loopIndex + 1)
        end
        end [@@warning "-7"]
    

    method isComplete () : bool =
        try
        begin
        let indexedAnimationBehavior : IndexedAnimationBehavior.indexedAnimationBehavior ref = ref (((Obj.magic (self#getAnimationBehavior ())) :> IndexedAnimationBehavior.indexedAnimationBehavior)) in ();
        if (((!indexedAnimationBehavior#loopTotal == (-1)) || (!indexedAnimationBehavior#loopIndex < !indexedAnimationBehavior#loopTotal)) || ((self#getFrame ()) <> 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (animationInterfaceArray.(0)#getSize ())
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (animationInterfaceArray.(0)#getFrame ())
        end [@@warning "-7"]
    

    method setFrame ((frame : int)) : unit =
        begin
        for index = 0 to sizeP - 1 do
            ignore (animationInterfaceArray.(index)#setFrame (frame))
        done
        end [@@warning "-7"]
    

    method setLastFrame () : unit =
        begin
        (self#setFrame (((self#getSize ()) - 1)))
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        (self#setLastFrame ());
        let indexedAnimationBehavior : IndexedAnimationBehavior.indexedAnimationBehavior ref = ref ((((Obj.magic (self#getAnimationBehavior ()))) :> IndexedAnimationBehavior.indexedAnimationBehavior)) in ();
        ignore (!indexedAnimationBehavior#reset ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        for index = 0 to sizeP - 1 do
            ignore (animationInterfaceArray.(index)#previousFrame ())
        done
        end [@@warning "-7"]
    

    method paintFrameXY : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (frame : int), (x : int), (y_arg : int)) ->
        let graphics = Obj.repr graphics in
        begin
        (self#setFrame (frame));
        (self#paintXY ((Obj.magic graphics), x, y_arg))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (_ax : int), (_ay : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let x : int ref = ref (0) in ();
        if (widthP <> (-2147483648)) then begin
            x := (((((displayInfoSingleton#getLastWidth ()) - widthP)) / 2))
        end;
        let deltaX_arg : int ref = ref (0) in ();
        let deltaY_arg : int ref = ref (0) in ();
        for index = 0 to sizeP - 1 do
            deltaX_arg := (dxArray.(index) + !x);
            deltaY_arg := (dyArray.(index) + y);
            if ((Obj.repr basicColorArray.(index)) != (Obj.repr cLEAR_COLOR)) then begin
                ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), basicColorArray.(index)))
            end;
            ignore (animationInterfaceArray.(index)#paintXY ((Obj.magic graphics), !deltaX_arg, !deltaY_arg))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        systemWrapper <- ((ABSystemWrapper.getInstance ()) :> ABSystemWrapper.aBSystemWrapper);
        deltaX <- 0.0;
        deltaY <- 0.0;
        deltaZ <- 0.0;
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        cLEAR_COLOR <- ((BasicColorFactory.getInstance ())#cLEAR_COLOR :> BasicColor.basicColor);
        ();
        (* super(...) is the inherit clause *) ();
        lastFrameStartTime <- (systemWrapper#currentTimeMillis ());
        animationInterfaceArray <- animationInterfaceArray_arg;
        sizeP <- (Array.length animationInterfaceArray);
        basicColorArray <- basicColorArray_arg;
        dxArray <- dxArray_arg;
        dyArray <- dyArray_arg;
        y <- y_arg;
        widthP <- width;
        (self#reset ())
      end
  end
let () = java_register_constructor "TitleAnimation" (fun arguments -> Obj.repr (new titleAnimation (Obj.obj arguments)))

let createAnimation ((animationInterfaceArray_arg : IndexedAnimation.indexedAnimation array), (basicColorArray_arg : BasicColor.basicColor array), (dxArray_arg : int array), (dyArray_arg : int array), (y_arg : int), (width : int)) =
        begin
        (new titleAnimation (animationInterfaceArray_arg, basicColorArray_arg, dxArray_arg, dyArray_arg, y_arg, width, (new IndexedAnimationBehavior.indexedAnimationBehavior (1, 250))))
        end
let () = java_register_static "TitleAnimation.createAnimation" (fun arguments -> Obj.repr (createAnimation (Obj.obj arguments)))


