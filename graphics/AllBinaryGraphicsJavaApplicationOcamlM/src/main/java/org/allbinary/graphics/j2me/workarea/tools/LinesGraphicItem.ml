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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import javax.swing.tree.MutableTreeNode *)
(* import org.allbinary.dom.DomHelper *)
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.j2me.StatusFactory *)
(* import org.allbinary.graphics.j2me.workarea.canvas.CanvasDom *)
(* import org.allbinary.graphics.j2me.workarea.canvas.IntegerDimension *)
(* import org.allbinary.graphics.pipeline.BasicGraphicsPipeline *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let rECT : string = "rect"
let get_rECT () = rECT
let () = java_register_static "LinesGraphicItem.get_rECT" (fun _ -> Obj.repr (get_rECT ()))
let aRC : string = "arc"
let get_aRC () = aRC
let () = java_register_static "LinesGraphicItem.get_aRC" (fun _ -> Obj.repr (get_aRC ()))
let sTRING : string = "string"
let get_sTRING () = sTRING
let () = java_register_static "LinesGraphicItem.get_sTRING" (fun _ -> Obj.repr (get_sTRING ()))
let cHAR : string = "char"
let get_cHAR () = cHAR
let () = java_register_static "LinesGraphicItem.get_cHAR" (fun _ -> Obj.repr (get_cHAR ()))
let iMAGE : string = "image"
let get_iMAGE () = iMAGE
let () = java_register_static "LinesGraphicItem.get_iMAGE" (fun _ -> Obj.repr (get_iMAGE ()))
let item : int ref = ref (0)
let get_item () = !item
let set_item value' = item := value'
let () = java_register_static "LinesGraphicItem.get_item" (fun _ -> Obj.repr (get_item ()))
let nAME : string = "Line Tool"
let get_nAME () = nAME
let () = java_register_static "LinesGraphicItem.get_nAME" (fun _ -> Obj.repr (get_nAME ()))

let getStaticName () : string =
        begin
        nAME
        end

let () = java_register_static "LinesGraphicItem.getStaticName" (fun arguments -> Obj.repr (getStaticName (Obj.obj arguments)))
class linesGraphicItem () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable treeNode : Obj.t = Obj.repr 0
    method treeNode : 'r. 'r = Obj.magic treeNode
    method set_treeNode : 'v. 'v -> unit = fun value' -> treeNode <- Obj.repr value'
    val mutable pointTreeNodeVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method pointTreeNodeVector = pointTreeNodeVector
    method set_pointTreeNodeVector value' = pointTreeNodeVector <- value'
    val mutable currentMousePoint : GPoint.gPoint = (Obj.magic 0)
    method currentMousePoint = currentMousePoint
    method set_currentMousePoint value' = currentMousePoint <- value'
    val mutable fulcrumPoint : GPoint.gPoint = (Obj.magic 0)
    method fulcrumPoint = fulcrumPoint
    method set_fulcrumPoint value' = fulcrumPoint <- value'
    val mutable active : bool = false
    method active = active
    method set_active value' = active <- value'
    val mutable theta : float = 0.0
    method theta = theta
    method set_theta value' = theta <- value'
    val mutable color : Obj.t = Obj.repr 0
    method color : 'r. 'r = Obj.magic color
    method set_color : 'v. 'v -> unit = fun value' -> color <- Obj.repr value'
    val mutable points : Obj.t = Obj.repr 0
    method points : 'r. 'r = Obj.magic points
    method set_points : 'v. 'v -> unit = fun value' -> points <- Obj.repr value'
    
    
    

    method init () : unit =
        begin
        treeNode <- Obj.repr ((new DefaultMutableTreeNode.defaultMutableTreeNode (((Obj.magic (java_call_static "PointsDomUtil.getInstance" (Obj.repr ())))#lINES + !item))));
        item := !item + 1;
        ignore ((Obj.magic points)#init ());
        pointTreeNodeVector <- (new BasicArrayListD.basicArrayListD ());
        fulcrumPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (0, 0))
        end
    

    method translate ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus (("Translating: " ^ java_string_of (Obj.repr (((Obj.magic points)#getPoints ()))))));
        let basicGraphicsPipeline : BasicGraphicsPipeline.basicGraphicsPipeline ref = ref (((new BasicGraphicsPipeline.basicGraphicsPipeline (((Obj.magic points)#getPoints ()))) :> BasicGraphicsPipeline.basicGraphicsPipeline)) in ();
        ignore (!basicGraphicsPipeline#translate (x, y));
        points <- Obj.repr ((new Points.points ()));
        ignore ((Obj.magic points)#addPoints ((!basicGraphicsPipeline#getMatrix ())))
        end
    

    method setRotate ((theta_arg : float)) : unit =
        let theta_arg = ref theta_arg in
        begin
        while (!theta_arg > (2 * (Obj.magic (java_call_static "Math.get_pI" (Obj.repr ()))))) do
            theta_arg := (!theta_arg -. (2 * (Obj.magic (java_call_static "Math.get_pI" (Obj.repr ())))))
        done;
        while (!theta_arg < 0.) do
            theta_arg := (!theta_arg +. (2 * (Obj.magic (java_call_static "Math.get_pI" (Obj.repr ())))))
        done;
        theta <- !theta_arg
        end
    

    method addRotate ((theta_arg : float)) : unit =
        begin
        (self#setRotate ((theta +. theta_arg)))
        end
    

    method setAngle ((angle : float)) : unit =
        begin
        (self#setRotate (((angle) *. Float.pi /. 180.0)))
        end
    

    method addAngle ((angle : float)) : unit =
        begin
        (self#setRotate ((theta +. ((angle) *. Float.pi /. 180.0))))
        end
    

    method getTreeNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (Obj.magic treeNode))))
        end
    

    method getName () : string =
        begin
        nAME
        end
    

    method addPoint : 'any1. 'any1 -> unit = fun (pointNodes) ->
        let pointNodes = Obj.repr pointNodes in
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((DomHelper.getInstance ())#getWithoutTextNodes ((Obj.magic pointNodes))) :> BasicArrayList.basicArrayList)) in ();
        let xNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList ((PositionStrings.getInstance ())#x, !list)))) in ();
        let xTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !xNode)#getFirstChild ()))) in ();
        let xInteger : int ref = ref ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !xTextNode)#getNodeValue ())))))) in ();
        let yNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList ((PositionStrings.getInstance ())#y, !list)))) in ();
        let yTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !yNode)#getFirstChild ()))) in ();
        let yInteger : int ref = ref ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !yTextNode)#getNodeValue ())))))) in ();
        let point : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (!xInteger, !yInteger)) :> GPoint.gPoint)) in ();
        (self#addPoint (!point))
        end [@@warning "-20"]
    

    (* Java overload addPoint(GPoint) is not converted: OCaml has one method per name *)
    

    method removePoint () : GPoint.gPoint =
        begin
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        if (((Obj.magic points)#getSize ()) > 0) then begin
            let lastPoint : int ref = ref ((((Obj.magic points)#getSize ()) - 1)) in ();
            point := (Obj.magic (((Obj.magic points)#getPoints ())#removeAt (!lastPoint)));
            let index : int ref = ref (((pointTreeNodeVector#size ()) - 1)) in ();
            if (!index > 0) then begin
                ignore ((Obj.magic treeNode)#remove ((Obj.magic (pointTreeNodeVector#get (!index)))));
                ignore (pointTreeNodeVector#remove (!index))
            end
        end;
        (!point :> GPoint.gPoint)
        end
    

    method isActive () : bool =
        begin
        active
        end
    

    method deactivate () : unit =
        begin
        active <- false
        end
    

    method activate () : unit =
        begin
        active <- true
        end
    

    method duplicatePoints : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let point : GPoint.gPoint ref = ref (((Obj.magic ((Obj.magic list)#get (index))) :> GPoint.gPoint)) in ();
            if (!point != (Obj.magic 0)) then begin
                ignore (((Obj.magic points)#getPoints ())#add (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY ((!point#getX ()), (!point#getY ())))));
                ignore (pointTreeNodeVector#add ((new DefaultMutableTreeNode.defaultMutableTreeNode ((java_string_of (Obj.repr !point))))));
                ignore ((Obj.magic treeNode)#add ((Obj.magic (pointTreeNodeVector#get (((pointTreeNodeVector#size ()) - 1))))))
            end
        done
        end [@@warning "-20"]
    

    method duplicate : 'return. unit -> 'return = fun () ->
        begin
        let linesGraphicItem : Obj.t ref = ref ((Obj.repr (new linesGraphicItem ()))) in ();
        ignore ((Obj.magic !linesGraphicItem)#duplicatePoints (((Obj.magic points)#getPoints ())));
        ignore ((Obj.magic !linesGraphicItem)#deactivate ());
        (Obj.magic ((Obj.magic !linesGraphicItem)))
        end
    

    method getAngle () : float =
        begin
        ((theta) *. 180.0 /. Float.pi)
        end
    

    method setFulcrumPoint : 'any1. 'any1 -> unit = fun (point) ->
        let point = Obj.repr point in
        begin
        fulcrumPoint <- (Obj.magic point)
        end [@@warning "-20"]
    

    method paint : 'any1 'any3. 'any1 * float * 'any3 * int * int -> unit = fun (g, (canvasAngle : float), dimension, (x : int), (y : int)) ->
        let g = Obj.repr g in
        let dimension = Obj.repr dimension in
        begin
        (try
            let graphics : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic g)))) in ();
            ignore ((Obj.magic !graphics)#setColor ((self#getColor ())));
            ignore ((Obj.magic !graphics)#setStroke ((new BasicStroke.basicStroke (x))));
            if ((self#isActive ()) && (currentMousePoint != (Obj.magic 0))) then begin
                ignore (((Obj.magic points)#getPoints ())#add (currentMousePoint))
            end;
            let tempPointVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic (java_call_static "PointsUtil.getInstance" (Obj.repr ())))#doTransforms (((Obj.magic points)#getPoints ()), canvasAngle, ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic dimension)#getWidth ()), ((Obj.magic dimension)#getHeight ()))))) :> BasicArrayList.basicArrayList)) in ();
            if ((self#isActive ()) && (currentMousePoint != (Obj.magic 0))) then begin
                currentMousePoint <- (Obj.magic (((Obj.magic points)#getPoints ())#removeAt ((((Obj.magic points)#getSize ()) - 1))))
            end;
            let size : int ref = ref ((!tempPointVector#size ())) in ();
            let firstPoint : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
            if (!size > 0) then begin
                firstPoint := (Obj.magic (!tempPointVector#get (0)))
            end;
            for index = 1 to !size - 1 do
                let secondPoint : GPoint.gPoint ref = ref (((Obj.magic (!tempPointVector#get (index))) :> GPoint.gPoint)) in ();
                ignore ((Obj.magic !graphics)#drawLine (((((!firstPoint#getX ()) * x)) - ((x / 4))), ((((!firstPoint#getY ()) * y)) - ((y / 4))), ((((!secondPoint#getX ()) * x)) - ((x / 4))), ((((!secondPoint#getY ()) * y)) - ((y / 4)))));
                firstPoint := !secondPoint
            done
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "mouseMoved", e))
        end)
        end [@@warning "-20"]
    

    method toDom : 'any1 'return. 'any1 -> 'return = fun (canvasDom) ->
        let canvasDom = Obj.repr canvasDom in
        begin
        (Obj.magic (((Obj.magic (java_call_static "PointsDomUtil.getInstance" (Obj.repr ())))#toDom ((Obj.magic canvasDom), ((Obj.magic points)#getPoints ())))))
        end [@@warning "-20"]
    

    method isValid () : bool =
        begin
        ((Obj.magic points)#isValid ())
        end
    

    method getPointsInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic points)))
        end
    

    method setPointsInterface : 'any1. 'any1 -> unit = fun (points_arg) ->
        let points_arg = Obj.repr points_arg in
        begin
        points <- Obj.repr ((Obj.magic points_arg))
        end [@@warning "-20"]
    

    method getColor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic color)))
        end
    

    method setColor : 'any1. 'any1 -> unit = fun (color_arg) ->
        let color_arg = Obj.repr color_arg in
        begin
        color <- Obj.repr ((Obj.magic color_arg))
        end [@@warning "-20"]
    

    method mouseClicked : 'any1. 'any1 * int * int -> unit = fun (mouseEvent, (x : int), (y : int)) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        (try
            let mousePoint : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic mouseEvent)#getPoint ())#x, ((Obj.magic mouseEvent)#getPoint ())#y)) :> GPoint.gPoint)) in ();
            if ((Obj.repr ((((Obj.magic mouseEvent)#getModifiers ()) land (Obj.magic mouseEvent)#bUTTON1_MASK))) == (Obj.repr (Obj.magic mouseEvent)#bUTTON1_MASK)) then begin
                let point : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((!mousePoint#getX ()) / x), ((!mousePoint#getY ()) / y))) :> GPoint.gPoint)) in ();
                ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus (("Line Point Added: " ^ (java_string_of (Obj.repr !point)))));
                (self#addPoint (!point))
            end else if ((Obj.repr ((((Obj.magic mouseEvent)#getModifiers ()) land (Obj.magic mouseEvent)#bUTTON3_MASK))) == (Obj.repr (Obj.magic mouseEvent)#bUTTON3_MASK)) then begin
                ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Line Point Removed"));
                ignore (self#removePoint ())
            end;
            currentMousePoint <- !mousePoint
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "mouseMoved", e))
        end)
        end [@@warning "-20"]
    

    method mouseEntered : 'any1. 'any1 -> unit = fun (_mouseEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseExited : 'any1. 'any1 -> unit = fun (_mouseEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mousePressed : 'any1. 'any1 * int * int -> unit = fun (_mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseReleased : 'any1. 'any1 * int * int -> unit = fun (_mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseDragged : 'any1. 'any1 * int * int -> unit = fun (_mouseEvent, (_xPixelsPerCell : int), (_yPixelsPerCell : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method mouseMoved : 'any1. 'any1 * int * int -> unit = fun (mouseEvent, (x : int), (y : int)) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        (try
            let mousePoint : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((Obj.magic mouseEvent)#getPoint ())#x, ((Obj.magic mouseEvent)#getPoint ())#y)) :> GPoint.gPoint)) in ();
            let point : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((!mousePoint#getX ()) / x), ((!mousePoint#getY ()) / y))) :> GPoint.gPoint)) in ();
            currentMousePoint <- !point
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "mouseMoved", e))
        end)
        end [@@warning "-20"]
    

    method keyPressed : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        (try
            let keyCode : int ref = ref (((Obj.magic keyEvent)#getKeyCode ())) in ();
            if (!keyCode = (Obj.magic keyEvent)#vK_ESCAPE) then begin
                ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Deactivated"));
                (self#deactivate ())
            end else if (!keyCode = (Obj.magic keyEvent)#vK_UP) then begin
                (self#translate (0, (-1)))
            end else if (!keyCode = (Obj.magic keyEvent)#vK_DOWN) then begin
                (self#translate (0, 1))
            end else if (!keyCode = (Obj.magic keyEvent)#vK_LEFT) then begin
                (self#translate ((-1), 0))
            end else if (!keyCode = (Obj.magic keyEvent)#vK_RIGHT) then begin
                (self#translate (1, 0))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, gameInputStrings#kEY_PRESSED, e))
        end)
        end [@@warning "-20"]
    

    method keyReleased : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method keyTyped : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        treeNode <- (Obj.repr (Obj.magic 0));
        pointTreeNodeVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        currentMousePoint <- ((Obj.magic 0) :> GPoint.gPoint);
        fulcrumPoint <- ((Obj.magic 0) :> GPoint.gPoint);
        active <- false;
        theta <- 0.;
        color <- (Obj.repr (Obj.obj (java_new "Color" (Obj.repr (((BasicColorFactory.getInstance ())#wHITE#intValue ()))))));
        ();
        ();
        points <- Obj.repr ((new Points.points ()));
        (try
            (self#init ());
            active <- true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "LinesGraphicItem" (fun arguments -> Obj.repr (new linesGraphicItem (Obj.obj arguments)))


