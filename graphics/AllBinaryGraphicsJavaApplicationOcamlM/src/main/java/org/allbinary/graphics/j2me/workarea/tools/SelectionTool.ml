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
(* package org.allbinary.graphics.j2me.workarea.tools *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.util.HashMap *)
(* import javax.swing.tree.MutableTreeNode *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasDom *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel *)
(* import org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.math.RectangleCollisionPointUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Node *)

let nAME : string = "Selection Tool"
let get_nAME () = nAME
let () = java_register_static "SelectionTool.get_nAME" (fun _ -> Obj.repr (get_nAME ()))

let getStaticName () : string =
        begin
        nAME
        end

let () = java_register_static "SelectionTool.getStaticName" (fun arguments -> Obj.repr (getStaticName (Obj.obj arguments)))
class selectionTool (canvasJPanel_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable canvasJPanel : Obj.t = Obj.repr 0
    method canvasJPanel : 'r. 'r = Obj.magic canvasJPanel
    method set_canvasJPanel : 'v. 'v -> unit = fun value' -> canvasJPanel <- Obj.repr value'
    val mutable active : bool = false
    method active = active
    method set_active value' = active <- value'
    val mutable controlIdDown : bool = false
    method controlIdDown = controlIdDown
    method set_controlIdDown value' = controlIdDown <- value'
    val mutable rectColor : Obj.t = Obj.repr 0
    method rectColor : 'r. 'r = Obj.magic rectColor
    method set_rectColor : 'v. 'v -> unit = fun value' -> rectColor <- Obj.repr value'
    val mutable startPoint : GPoint.gPoint = (Obj.magic 0)
    method startPoint = startPoint
    method set_startPoint value' = startPoint <- value'
    val mutable endPoint : GPoint.gPoint = (Obj.magic 0)
    method endPoint = endPoint
    method set_endPoint value' = endPoint <- value'
    
    

    method setColor : 'any1. 'any1 -> unit = fun (_color) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getTreeNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method getPointsInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method setPointsInterface : 'any1. 'any1 -> unit = fun (_points) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isValid () : bool =
        begin
        true
        end
    

    method isActive () : bool =
        begin
        active
        end
    

    method deactivate () : unit =
        begin
        ()
        end
    

    method activate () : unit =
        begin
        ()
        end
    

    method setFulcrumPoint : 'any1. 'any1 -> unit = fun (_point) ->
        begin
        ()
        end [@@warning "-20"]
    

    method translate ((_x : int), (_y : int)) : unit =
        begin
        ()
        end
    

    method setRotate ((_theta : float)) : unit =
        begin
        ()
        end
    

    method addRotate ((_theta : float)) : unit =
        begin
        ()
        end
    

    method setAngle ((_angle : float)) : unit =
        begin
        ()
        end
    

    method addAngle ((_angle : float)) : unit =
        begin
        ()
        end
    

    method getAngle () : float =
        begin
        0.
        end
    

    method makeSelection () : unit =
        begin
        let xRect : int ref = ref ((self#getXRect ())) in ();
        let xRect2 : int ref = ref (((abs (((endPoint#getX ()) - (startPoint#getX ())))) + !xRect)) in ();
        let yRect : int ref = ref ((self#getYRect ())) in ();
        let yRect2 : int ref = ref (((abs (((endPoint#getY ()) - (startPoint#getY ())))) + !yRect)) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic canvasJPanel)#getGraphicItemHashMap ()) :> java_hash_map)) in ();
        let graphicItemArray : Obj.t array ref = ref (((!hashMap#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic (!hashMap#get (!graphicItemArray.(index)))))) in ();
            if (((Obj.magic !item)#getName ()) = (Obj.magic (java_call_static "LinesGraphicItem.getStaticName" (Obj.repr ())))) then begin
                if (RectangleCollisionPointUtil.allPointsInsideCell (!xRect, !yRect, !xRect2, !yRect2, (((Obj.magic !item)#getPointsInterface ())#getPoints ()), ((Obj.magic canvasJPanel)#getXPixelsPerWorkAreaPixel ()), ((Obj.magic canvasJPanel)#getYPixelsPerWorkAreaPixel ()))) then begin
                    ignore ((Obj.magic !item)#setColor ((Obj.magic (java_call_static "Color.get_yELLOW" (Obj.repr ())))));
                    ignore ((Obj.magic !item)#activate ())
                end else if (not controlIdDown) then begin
                    ignore ((Obj.magic !item)#setColor ((Obj.magic (java_call_static "Color.get_wHITE" (Obj.repr ())))));
                    ignore ((Obj.magic !item)#deactivate ())
                end
            end
        done
        end
    

    method getXRect () : int =
        begin
        let xDiff : int ref = ref (((endPoint#getX ()) - (startPoint#getX ()))) in ();
        let xRect : int ref = ref ((startPoint#getX ())) in ();
        if (!xDiff < 0) then begin
            xRect := (endPoint#getX ())
        end;
        !xRect
        end
    

    method getYRect () : int =
        begin
        let yDiff : int ref = ref (((endPoint#getY ()) - (startPoint#getY ()))) in ();
        let yRect : int ref = ref ((startPoint#getY ())) in ();
        if (!yDiff < 0) then begin
            yRect := (endPoint#getY ())
        end;
        !yRect
        end
    

    method paint : 'any1 'any3. 'any1 * float * 'any3 * int * int -> unit = fun (g, (_canvasAngle : float), _dimension, (_x : int), (_y : int)) ->
        let g = Obj.repr g in
        begin
        ignore ((Obj.magic g)#setColor ((Obj.magic rectColor)));
        let xRect : int ref = ref ((self#getXRect ())) in ();
        let width : int ref = ref ((abs (((endPoint#getX ()) - (startPoint#getX ()))))) in ();
        let yRect : int ref = ref ((self#getYRect ())) in ();
        let height : int ref = ref ((abs (((endPoint#getY ()) - (startPoint#getY ()))))) in ();
        ignore ((Obj.magic g)#drawRect (!xRect, !yRect, !width, !height))
        end [@@warning "-20"]
    

    method toDom : 'any1 'return. 'any1 -> 'return = fun (_canvasDom) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method removePoint () : GPoint.gPoint =
        begin
        ((Obj.magic 0) :> GPoint.gPoint)
        end
    

    method addPoint : 'any1. 'any1 -> unit = fun (_point) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        nAME
        end
    

    method mouseClicked : 'any1. 'any1 * int * int -> unit = fun (_mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseMoved : 'any1. 'any1 * int * int -> unit = fun (_mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseEntered : 'any1. 'any1 -> unit = fun (_mouseEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseExited : 'any1. 'any1 -> unit = fun (_mouseEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mousePressed : 'any1. 'any1 * int * int -> unit = fun (mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, (MouseStrings.getInstance ())#mOUSE_PRESSED));
        startPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic mouseEvent)#getX ()), ((Obj.magic mouseEvent)#getY ())));
        endPoint <- startPoint
        end [@@warning "-20"]
    

    method mouseReleased : 'any1. 'any1 * int * int -> unit = fun (mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, (MouseStrings.getInstance ())#mOUSE_RELEASED));
        endPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic mouseEvent)#getX ()), ((Obj.magic mouseEvent)#getY ())));
        active <- false;
        (self#makeSelection ())
        end [@@warning "-20"]
    

    method mouseDragged : 'any1. 'any1 * int * int -> unit = fun (mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        endPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic mouseEvent)#getX ()), ((Obj.magic mouseEvent)#getY ())))
        end [@@warning "-20"]
    

    method keyPressed : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        if ((Obj.repr ((Obj.magic keyEvent)#getKeyCode ())) == (Obj.repr (Obj.magic keyEvent)#vK_CONTROL)) then begin
            controlIdDown <- true
        end
        end [@@warning "-20"]
    

    method keyReleased : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        if ((Obj.repr ((Obj.magic keyEvent)#getKeyCode ())) == (Obj.repr (Obj.magic keyEvent)#vK_CONTROL)) then begin
            controlIdDown <- false
        end
        end [@@warning "-20"]
    

    method keyTyped : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method duplicate : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        active <- true;
        controlIdDown <- false;
        rectColor <- (Obj.repr (Obj.obj (java_new "Color" (Obj.repr (((BasicColorFactory.getInstance ())#rED#intValue ()))))));
        startPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        endPoint <- (startPoint :> GPoint.gPoint);
        ();
        canvasJPanel <- Obj.repr (canvasJPanel_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "SelectionTool" (fun arguments -> Obj.repr (new selectionTool (Obj.obj arguments)))


