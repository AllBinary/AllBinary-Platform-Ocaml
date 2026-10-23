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
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.view.ViewPositionBase *)
(* import org.allbinary.view.event.ViewPositionEvent *)
(* import org.allbinary.view.event.ViewPositionEventListenerInterface *)

class allBinaryGameLayer ((name : string), layerInfo, (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit AllBinaryLayer.allBinaryLayer (name, layerInfo, viewPosition) as super
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable rED : BasicColor.basicColor = (Obj.magic 0)
    method rED = rED
    method set_rED value' = rED <- value'
    val mutable paintable : Paintable.paintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable gameKeyEventList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method gameKeyEventList = gameKeyEventList
    method set_gameKeyEventList value' = gameKeyEventList <- value'
    
    

    method set : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method move () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getGameKeyEventList () : BasicArrayList.basicArrayList =
        begin
        (gameKeyEventList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onViewPositionChangeEvent () : unit =
        begin
        (self#onChangeEvent ((self#viewPositionEvent)))
        end [@@warning "-7"]
    

    method onChangeEvent : 'any1. 'any1 -> unit = fun (_layerManagerEvent) ->
        begin
        if (GameLayerUtil.isOnScreen (self)) then begin
            ignore (self#setVisible (true))
        end else begin
            ignore (self#setVisible (false))
        end
        end [@@warning "-7-20"]
    

    method paintFirst : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (paintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintDebug : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let viewX : int ref = ref ((!viewPosition#getX ())) in ();
        let viewY : int ref = ref ((!viewPosition#getY ())) in ();
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), rED));
        ignore ((Obj.magic graphics)#drawRect (!viewX, !viewY, (self#getWidth ()), (self#getHeight ())))
        end [@@warning "-7-20"]
    

    method setWidth ((width : int)) : unit =
        begin
        ignore (super#setLayerWidth (width));
        ignore (self#setHalfWidth ((width asr 1)))
        end [@@warning "-7"]
    

    method setHeight ((height : int)) : unit =
        begin
        ignore (super#setLayerHeight (height));
        ignore (self#setHalfHeight ((height asr 1)))
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        rED <- ((BasicColorFactory.getInstance ())#rED :> BasicColor.basicColor);
        paintable <- ((if (SWTUtil.get_isSWT ()) then (object (self)
        inherit Paintable.paintable () as super
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil)
        bLACK <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor)
        

        method paint : 'any1. 'any1 -> unit = fun (graphics) ->
            let graphics = Obj.repr graphics in
            begin
            ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#bLACK)))
            end [@@warning "-20"]
    end) else (NullPaintable.getInstance ())) :> Paintable.paintable);
        gameKeyEventList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AllBinaryGameLayer" (fun arguments -> Obj.repr (new allBinaryGameLayer (Obj.obj arguments)))


