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
(* package org.allbinary.graphics.j2me.workarea.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.util.HashMap *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import javax.swing.tree.MutableTreeNode *)
(* import org.allbinary.animation.VectorExplosionGenerator *)
(* import org.allbinary.animation.VectorMirrorGenerator *)
(* import org.allbinary.animation.vector.VectorCenterGenerator *)
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.j2me.GraphicsException *)
(* import org.allbinary.graphics.j2me.StatusFactory *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJTreeJPanel *)
(* import org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory *)
(* import org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface *)
(* import org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem *)
(* import org.allbinary.graphics.j2me.workarea.tools.MouseStrings *)
(* import org.allbinary.graphics.j2me.workarea.tools.Points *)
(* import org.allbinary.graphics.j2me.workarea.tools.ToolFactory *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener *)
(* import org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventService *)
(* import org.allbinary.graphics.pipeline.RandomRotationFactory *)
(* import org.allbinary.log.LOGGING *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.GuiLog *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.w3c.dom.Node *)

let frame : int ref = ref (0)
let get_frame () = !frame
let set_frame value' = frame := value'
let () = java_register_static "CanvasJPanel.get_frame" (fun _ -> Obj.repr (get_frame ()))
class canvasJPanel ((workAreaJTreeJPanel_arg : WorkAreaJTreeJPanel.workAreaJTreeJPanel), dimension, canvasDom) =
  object (self)
    inherit JPanel.jPanel () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable guiLog : GuiLog.guiLog = (Obj.magic 0)
    method guiLog = guiLog
    method set_guiLog value' = guiLog <- value'
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable selectedTool : Obj.t = Obj.repr 0
    method selectedTool : 'r. 'r = Obj.magic selectedTool
    method set_selectedTool : 'v. 'v -> unit = fun value' -> selectedTool <- Obj.repr value'
    val mutable graphicItemHashMap : java_hash_map = (Obj.magic 0)
    method graphicItemHashMap = graphicItemHashMap
    method set_graphicItemHashMap value' = graphicItemHashMap <- value'
    val mutable canvasDimension : Obj.t = Obj.repr 0
    method canvasDimension : 'r. 'r = Obj.magic canvasDimension
    method set_canvasDimension : 'v. 'v -> unit = fun value' -> canvasDimension <- Obj.repr value'
    val mutable angle : float = 0.0
    method angle = angle
    method set_angle value' = angle <- value'
    val mutable canvasTreeNode : Obj.t = Obj.repr 0
    method canvasTreeNode : 'r. 'r = Obj.magic canvasTreeNode
    method set_canvasTreeNode : 'v. 'v -> unit = fun value' -> canvasTreeNode <- Obj.repr value'
    val mutable frameLabel : Obj.t = Obj.repr 0
    method frameLabel : 'r. 'r = Obj.magic frameLabel
    method set_frameLabel : 'v. 'v -> unit = fun value' -> frameLabel <- Obj.repr value'
    val mutable workAreaJTreeJPanel : WorkAreaJTreeJPanel.workAreaJTreeJPanel = (Obj.magic 0)
    method workAreaJTreeJPanel = workAreaJTreeJPanel
    method set_workAreaJTreeJPanel value' = workAreaJTreeJPanel <- value'
    val mutable grid : Obj.t = Obj.repr 0
    method grid : 'r. 'r = Obj.magic grid
    method set_grid : 'v. 'v -> unit = fun value' -> grid <- Obj.repr value'
    
    
    

    method initMyComponents () : unit =
        begin
        frameLabel <- Obj.repr ((new CanvasTreeLabel.canvasTreeLabel (("FrameLabel" ^ (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!frame))))))))));
        canvasTreeNode <- Obj.repr ((new DefaultMutableTreeNode.defaultMutableTreeNode ((Obj.magic frameLabel))));
        frame := !frame + 1;
        ignore (workAreaJTreeJPanel#add ((self#getTreeNode ())));
        graphicItemHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        ignore ((Obj.magic grid)#set_grid (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (0, 0))));
        (self#setCanvasDimension ((new IntegerDimension.integerDimension (0, 0))));
        selectedTool <- Obj.repr ((Obj.magic 0));
        ignore (self#addKeyListener (self));
        ignore (self#addMouseListener (self));
        ignore (self#addMouseMotionListener (self));
        ignore (MyGraphicItemEventService.addListener (self))
        end [@@warning "-7"]
    

    method getTreeNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic canvasTreeNode)))
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        ignore (self#setLayout ((new GridLayout.gridLayout (1, 1))))
        end [@@warning "-7"]
    

    method setCanvasSize ((x : int), (y : int)) : unit =
        begin
        ignore ((Obj.magic grid)#set_isGridPossible (true));
        if (x <= 0) then begin
            ignore ((Obj.magic grid)#set_isGridPossible (false));
            raise (Failure (("X Size Error: " ^ java_string_of (Obj.repr (x))), self, "setWorkAreaSize"))
        end;
        if (y <= 0) then begin
            ignore ((Obj.magic grid)#set_isGridPossible (false));
            raise (Failure (("Y Size Error: " ^ java_string_of (Obj.repr (y))), self, "setWorkAreaSize"))
        end;
        if (x > (self#getWidth ())) then begin
            ignore ((Obj.magic grid)#set_isGridPossible (false))
        end;
        if (y > (self#getHeight ())) then begin
            ignore ((Obj.magic grid)#set_isGridPossible (false))
        end;
        (self#setCanvasDimension ((new IntegerDimension.integerDimension (x, y))));
        ignore ((Obj.magic grid)#set_isChanged (true))
        end [@@warning "-7"]
    

    method setGrid : 'any1. 'any1 -> unit = fun (point) ->
        let point = Obj.repr point in
        begin
        (self#setGrid (((Obj.magic point)#getX ()), ((Obj.magic point)#getY ())))
        end [@@warning "-7-20"]
    

    (* Java overload setGrid(INT, INT) is not converted: OCaml has one method per name *)
    

    method setDefaultGrid () : unit =
        begin
        let xPixelsPerWorkAreaPixel : int ref = ref (((self#getWidth ()) / ((self#getCanvasDimension ())#getWidth ()))) in ();
        let yPixelsPerWorkAreaPixel : int ref = ref (((self#getHeight ()) / ((self#getCanvasDimension ())#getHeight ()))) in ();
        (self#setGrid (1, 1));
        ignore ((Obj.magic grid)#set_isChanged (true))
        end [@@warning "-7"]
    

    method getAngle () : float =
        begin
        angle
        end [@@warning "-7"]
    

    method setAngle ((angle_arg : float)) : unit =
        begin
        angle <- angle_arg
        end [@@warning "-7"]
    

    method addAngle ((angle_arg : float)) : unit =
        begin
        (self#setAngle ((angle +. angle_arg)))
        end [@@warning "-7"]
    

    method explodeAll () : unit =
        begin
        let newPoints : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let graphicItemArray : Obj.t array ref = ref ((((self#getGraphicItemHashMap ())#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let graphicItemNode : Obj.t ref = ref ((Obj.repr (Obj.magic !graphicItemArray.(index)))) in ();
            let graphicItem : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get ((Obj.magic !graphicItemNode)))))) in ();
            if (((Obj.magic !graphicItem)#getName ()) = (Obj.magic (java_call_static "LinesGraphicItem.getStaticName" (Obj.repr ())))) then begin
                while ((((Obj.magic !graphicItem)#getPointsInterface ())#getSize ()) > 2) do
                    let newGraphicItem : Obj.t ref = ref ((Obj.repr (((Obj.magic (java_call_static "GraphicItemFactory.getInstance" (Obj.repr ())))#getInstance (((Obj.magic !graphicItem)#getName ())))#getInstance (self)))) in ();
                    let pointOne : GPoint.gPoint ref = ref (((GPoint.getInstance (((Obj.magic !graphicItem)#removePoint ()))) :> GPoint.gPoint)) in ();
                    let pointTwo : GPoint.gPoint ref = ref (((GPoint.getInstance (((Obj.magic !graphicItem)#removePoint ()))) :> GPoint.gPoint)) in ();
                    if ((!pointOne != (Obj.magic 0)) && (!pointTwo != (Obj.magic 0))) then begin
                        ignore ((Obj.magic !newGraphicItem)#addPoint (!pointOne));
                        ignore ((Obj.magic !newGraphicItem)#addPoint (!pointTwo))
                    end;
                    ignore (!newPoints#add ((Obj.magic !newGraphicItem)))
                done
            end
        done;
        let size2 : int ref = ref ((!newPoints#size ())) in ();
        for index = 0 to !size2 - 1 do
            let newGraphicItem : Obj.t ref = ref ((Obj.repr (Obj.magic (!newPoints#get (index))))) in ();
            ignore ((Obj.magic canvasTreeNode)#add (((Obj.magic !newGraphicItem)#getTreeNode ())));
            ignore ((self#getGraphicItemHashMap ())#put (((Obj.magic !newGraphicItem)#getTreeNode ()), (Obj.magic !newGraphicItem)))
        done;
        ignore (workAreaJTreeJPanel#updateTree ());
        ignore (workAreaJTreeJPanel#expand ());
        ignore (workAreaJTreeJPanel#repaint ())
        end [@@warning "-7"]
    

    method explode ((howMuch : int), (_explosionType : int)) : unit =
        begin
        let graphicItemArray : Obj.t array ref = ref ((((self#getGraphicItemHashMap ())#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get (!graphicItemArray.(index)))))) in ();
            let basicArrayList : BasicArrayList.basicArrayList ref = ref ((((VectorExplosionGenerator.getInstance ())#createList ((((Obj.magic !item)#getPointsInterface ())#getPoints ()), howMuch, (VectorExplosionGenerator.getInstance ())#rANDOM)) :> BasicArrayList.basicArrayList)) in ();
            let newPoints : Points.points ref = ref (((new Points.points ()) :> Points.points)) in ();
            ignore (!newPoints#addPoints (!basicArrayList));
            ignore ((Obj.magic !item)#setPointsInterface (!newPoints));
            let angleDelta : int ref = ref (((RandomRotationFactory.getInstance ())#getNextRandomAngle (howMuch))) in ();
            ignore ((Obj.magic !item)#setAngle (!angleDelta))
        done;
        (self#repaint ())
        end [@@warning "-7"]
    

    method mirror () : unit =
        begin
        let width : int ref = ref (((self#getCanvasDimension ())#getWidth ())) in ();
        let graphicItemArray : Obj.t array ref = ref ((((self#getGraphicItemHashMap ())#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get (!graphicItemArray.(index)))))) in ();
            let basicArrayList : BasicArrayList.basicArrayList ref = ref ((((VectorMirrorGenerator.getInstance ())#getInstance ((((Obj.magic !item)#getPointsInterface ())#getPoints ()), !width)) :> BasicArrayList.basicArrayList)) in ();
            let newPoints : Points.points ref = ref (((new Points.points ()) :> Points.points)) in ();
            ignore (!newPoints#addPoints (!basicArrayList));
            ignore ((Obj.magic !item)#setPointsInterface (!newPoints))
        done;
        (self#repaint ())
        end [@@warning "-7"]
    

    method center () : unit =
        begin
        ignore ((Obj.obj (java_new "VectorCenterGenerator" (Obj.repr ())))#transform ((self#getGraphicItemHashMap ())));
        (self#repaint ())
        end [@@warning "-7"]
    

    method setNewTool () : unit =
        begin
        (try
            ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Tool Selected"));
            selectedTool <- Obj.repr ((((Obj.magic (java_call_static "ToolFactory.getInstance" (Obj.repr ())))#getSelectedToolFactory ())#getInstance (self)));
            let newNode : Obj.t ref = ref ((Obj.repr ((Obj.magic selectedTool)#getTreeNode ()))) in ();
            ignore ((self#getGraphicItemHashMap ())#put ((Obj.magic !newNode), (Obj.magic selectedTool)));
            ignore ((Obj.magic canvasTreeNode)#add ((Obj.magic !newNode)));
            if ((self#getSelectedTool ()) == (Obj.magic 0)) then begin
                raise (Failure ("No Tool Selected", self, "setSelectedTool"))
            end
        with e -> begin
            ()
        end)
        end [@@warning "-7"]
    

    method duplicateGraphicItem : 'any1. 'any1 -> unit = fun (graphicItem) ->
        let graphicItem = Obj.repr graphicItem in
        begin
        let graphicItemClone : Obj.t ref = ref ((Obj.repr ((Obj.magic graphicItem)#duplicate ()))) in ();
        ignore ((self#getGraphicItemHashMap ())#put (((Obj.magic !graphicItemClone)#getTreeNode ()), (Obj.magic !graphicItemClone)));
        ignore ((Obj.magic canvasTreeNode)#add (((Obj.magic !graphicItemClone)#getTreeNode ())))
        end [@@warning "-7-20"]
    

    method duplicateGraphicItemHashMap ((hashMap : java_hash_map)) : unit =
        begin
        let mutableTreeNodeArray : Obj.t array ref = ref (((hashMap#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !mutableTreeNodeArray)) in ();
        for index = 0 to !size - 1 do
            let treeNode : Obj.t ref = ref ((Obj.repr (Obj.magic !mutableTreeNodeArray.(index)))) in ();
            let graphicItem : Obj.t ref = ref ((Obj.repr (Obj.magic (hashMap#get ((Obj.magic !treeNode)))))) in ();
            (self#duplicateGraphicItem ((Obj.magic !graphicItem)))
        done
        end [@@warning "-7"]
    

    method getGraphicItemHashMap () : java_hash_map =
        begin
        (graphicItemHashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method getXPixelsPerWorkAreaPixel () : int =
        try
        begin
        let x : int ref = ref (((((self#getGrid ())#grid#getX ()) * (((self#getWidth ()) - 10))) / ((self#getCanvasDimension ())#getWidth ()))) in ();
        if (((self#getGrid ())#getZoom ()) == 1) then begin
            raise (Java_return (Obj.repr (1)))
        end else begin
            raise (Java_return (Obj.repr (!x)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getYPixelsPerWorkAreaPixel () : int =
        try
        begin
        let y : int ref = ref (((((self#getGrid ())#grid#getY ()) * (((self#getHeight ()) - 10))) / ((self#getCanvasDimension ())#getHeight ()))) in ();
        if (((self#getGrid ())#getZoom ()) == 1) then begin
            raise (Java_return (Obj.repr (1)))
        end else begin
            raise (Java_return (Obj.repr (!y)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getSelectedTool : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic selectedTool)))
        end [@@warning "-7"]
    

    method drawItems : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let angleDouble : float ref = ref (angle) in ();
        let graphicItemArray : Obj.t array ref = ref ((((self#getGraphicItemHashMap ())#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get (!graphicItemArray.(index)))))) in ();
            ignore ((Obj.magic !item)#paint ((Obj.magic graphics), !angleDouble, (self#getCanvasDimension ()), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        done
        end [@@warning "-7-20"]
    

    method drawGrid : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let xAdjust : int ref = ref (((((self#getWidth ()) mod (self#getXPixelsPerWorkAreaPixel ()))) / 2)) in ();
        let yAdjust : int ref = ref (((((self#getHeight ()) mod (self#getYPixelsPerWorkAreaPixel ()))) / 2)) in ();
        let xLeft : int ref = ref (!xAdjust) in ();
        let yUpper : int ref = ref (!yAdjust) in ();
        let xRight : int ref = ref (((self#getWidth ()) - !xAdjust)) in ();
        let yLower : int ref = ref (((self#getHeight ()) - !yAdjust)) in ();
        ignore ((Obj.magic graphics)#setColor ((Obj.magic gridColor)));
        let value : int ref = ref (!yAdjust) in ();
        while (value <= ((self#getHeight ()) - !yAdjust)) do
            ignore ((Obj.magic graphics)#drawLine (!xLeft, value, !xRight, value));
            value <- (value + (self#getYPixelsPerWorkAreaPixel ()))
        done;
        let value : int ref = ref (!xAdjust) in ();
        while (value <= ((self#getWidth ()) - !xAdjust)) do
            ignore ((Obj.magic graphics)#drawLine (value, !yUpper, value, !yLower));
            value <- (value + (self#getYPixelsPerWorkAreaPixel ()))
        done
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            if (self#getGrid ())#isChanged then begin
                ignore ((Obj.magic graphics)#setColor ((Obj.magic backgroundColor)));
                ignore ((Obj.magic graphics)#fillRect (0, 0, (self#getWidth ()), (self#getHeight ())));
                if (((((self#getGrid ())#getZoom ()) > 2) && (self#getGrid ())#isGridOn) && (self#getGrid ())#isGridPossible) then begin
                    (self#setDefaultGrid ());
                    (self#drawGrid ((Obj.magic graphics)))
                end;
                (self#drawItems ((Obj.magic graphics)));
                ignore ((Obj.magic graphics)#drawString ((java_string_of (Obj.repr (self#getAngle ()))), ((self#getWidth ()) - 75), ((self#getHeight ()) - 15)));
                ignore ((Obj.magic grid)#set_isChanged (false))
            end
        with e -> begin
            ()
        end)
        end [@@warning "-7-20"]
    

    method repaint () : unit =
        begin
        if ((Obj.magic grid) != (Obj.magic 0)) then begin
            ignore ((Obj.magic grid)#set_isChanged (true))
        end;
        ignore (super#repaint ())
        end [@@warning "-7"]
    

    method toDom : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.obj (java_new "CanvasDom" (Obj.repr (self))))#toDom ())))
        end [@@warning "-7"]
    

    method changed () : unit =
        begin
        ignore ((Obj.magic grid)#set_isChanged (true))
        end [@@warning "-7"]
    

    method mouseClicked : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog (((MouseStrings.getInstance ())#mOUSE_CLICKED_LABEL + (self#logMouseEvent ((Obj.magic mouseEvent))))));
        if (((self#getSelectedTool ()) != (Obj.magic 0)) && ((self#getSelectedTool ())#isActive ())) then begin
            let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
            ignore ((Obj.magic !graphicItem)#mouseClicked ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        end else begin
            (self#setNewTool ());
            let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
            if ((Obj.magic !graphicItem) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !graphicItem)#mouseClicked ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
            end
        end;
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ());
        ignore (workAreaJTreeJPanel#updateTree ());
        ignore (workAreaJTreeJPanel#expand ());
        ignore (workAreaJTreeJPanel#repaint ())
        end [@@warning "-7-20"]
    

    method mouseEntered : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog ((self#logMouseEvent ((Obj.magic mouseEvent)))))
        end [@@warning "-7-20"]
    

    method mouseExited : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog ((self#logMouseEvent ((Obj.magic mouseEvent)))))
        end [@@warning "-7-20"]
    

    method mousePressed : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog (((MouseStrings.getInstance ())#mOUSE_PRESSED_LABEL + (self#logMouseEvent ((Obj.magic mouseEvent))))));
        if ((self#getSelectedTool ()) != (Obj.magic 0)) then begin
            let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
            ignore ((Obj.magic !graphicItem)#mousePressed ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        end;
        ignore (self#requestFocus ());
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ())
        end [@@warning "-7-20"]
    

    method mouseReleased : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog (((MouseStrings.getInstance ())#mOUSE_RELEASED_LABEL + (self#logMouseEvent ((Obj.magic mouseEvent))))));
        let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
        if ((Obj.magic !graphicItem) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !graphicItem)#mouseReleased ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        end;
        ignore (self#requestFocus ());
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ())
        end [@@warning "-7-20"]
    

    method mouseDragged : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog (((MouseStrings.getInstance ())#mOUSE_DRAGGED_LABEL + (self#logMouseEvent ((Obj.magic mouseEvent))))));
        let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
        if ((Obj.magic !graphicItem) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !graphicItem)#mouseDragged ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        end;
        ignore (self#requestFocus ());
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ())
        end [@@warning "-7-20"]
    

    method mouseMoved : 'any1. 'any1 -> unit = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatusNoLog (((MouseStrings.getInstance ())#mOUSE_MOVED_LABEL + (self#logMouseEvent ((Obj.magic mouseEvent))))));
        if (((self#getSelectedTool ()) != (Obj.magic 0)) && ((self#getSelectedTool ())#isActive ())) then begin
            let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
            ignore ((Obj.magic !graphicItem)#mouseMoved ((Obj.magic mouseEvent), (self#getXPixelsPerWorkAreaPixel ()), (self#getYPixelsPerWorkAreaPixel ())))
        end;
        ignore (self#requestFocus ());
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ())
        end [@@warning "-7-20"]
    

    method logMouseEvent : 'any1. 'any1 -> string = fun (mouseEvent) ->
        let mouseEvent = Obj.repr mouseEvent in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((PositionStrings.getInstance ())#x_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((((Obj.magic mouseEvent)#getX ()) / (self#getXPixelsPerWorkAreaPixel ())))))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((PositionStrings.getInstance ())#y_LABEL));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((((Obj.magic mouseEvent)#getY ()) / (self#getYPixelsPerWorkAreaPixel ())))))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]
    

    method keyPressed : 'any1. 'any1 -> unit = fun (keyEvent) ->
        let keyEvent = Obj.repr keyEvent in
        begin
        ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Key Pressed"));
        (try
            let graphicItemArray : Obj.t array ref = ref (((graphicItemHashMap#keySet ())#toArray ())) in ();
            let size : int ref = ref ((Array.length !graphicItemArray)) in ();
            for index = 0 to !size - 1 do
                let graphicItemInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (graphicItemHashMap#get (!graphicItemArray.(index)))))) in ();
                let keyCode : int ref = ref (((Obj.magic keyEvent)#getKeyCode ())) in ();
                if ((Obj.magic !graphicItemInterface)#isActive ()) then begin
                    if (!keyCode = (Obj.magic keyEvent)#vK_UP) then begin
                        ignore ((Obj.magic !graphicItemInterface)#translate (0, (-1)))
                    end else if (!keyCode = (Obj.magic keyEvent)#vK_DOWN) then begin
                        ignore ((Obj.magic !graphicItemInterface)#translate (0, 1))
                    end else if (!keyCode = (Obj.magic keyEvent)#vK_LEFT) then begin
                        ignore ((Obj.magic !graphicItemInterface)#translate ((-1), 0))
                    end else if (!keyCode = (Obj.magic keyEvent)#vK_RIGHT) then begin
                        ignore ((Obj.magic !graphicItemInterface)#translate (1, 0))
                    end
                end
            done
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, gameInputStrings#kEY_PRESSED, e))
        end);
        if (((self#getSelectedTool ()) != (Obj.magic 0)) && ((self#getSelectedTool ())#isActive ())) then begin
            ignore ((Obj.magic (java_call_static "StatusFactory.getInstance" (Obj.repr ())))#setStatus ("Key Pressed for Tool"));
            let graphicItem : Obj.t ref = ref ((Obj.repr (self#getSelectedTool ()))) in ();
            ignore ((Obj.magic !graphicItem)#keyPressed ((Obj.magic keyEvent)))
        end else begin
            (self#setNewTool ())
        end;
        ignore ((Obj.magic grid)#set_isChanged (true));
        (self#repaint ())
        end [@@warning "-7-20"]
    

    method keyReleased : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method keyTyped : 'any1. 'any1 -> unit = fun (_keyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method delete : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        ignore ((self#getGraphicItemHashMap ())#remove (((Obj.magic evt)#getTreeNode ())));
        ignore (workAreaJTreeJPanel#updateTree ());
        ignore (workAreaJTreeJPanel#expand ());
        ignore (workAreaJTreeJPanel#repaint ())
        end [@@warning "-7-20"]
    

    method deselect : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let graphicItemInterface : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get (((Obj.magic evt)#getTreeNode ())))))) in ();
        if ((Obj.magic !graphicItemInterface) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !graphicItemInterface)#setColor ((Obj.magic (java_call_static "Color.get_wHITE" (Obj.repr ())))));
            ignore ((Obj.magic !graphicItemInterface)#deactivate ());
            ignore (workAreaJTreeJPanel#repaint ())
        end
        end [@@warning "-7-20"]
    

    method highlight : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let graphicItemInterface : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get (((Obj.magic evt)#getTreeNode ())))))) in ();
        if ((Obj.magic !graphicItemInterface) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !graphicItemInterface)#setColor ((Obj.magic (java_call_static "Color.get_yELLOW" (Obj.repr ())))));
            ignore ((Obj.magic !graphicItemInterface)#activate ());
            ignore (workAreaJTreeJPanel#repaint ())
        end
        end [@@warning "-7-20"]
    

    method duplicate () =
        begin
        let newCanvasJPanel : Obj.t ref = ref ((Obj.repr (new canvasJPanel (workAreaJTreeJPanel, (self#getSize ()), ((self#getCanvasDimension ())#getWidth ()), ((self#getCanvasDimension ())#getHeight ()))))) in ();
        ignore ((Obj.magic !newCanvasJPanel)#setGrid (((self#getGrid ())#getGrid ())));
        ignore ((Obj.magic !newCanvasJPanel)#setAngle ((self#getAngle ())));
        ignore ((Obj.magic !newCanvasJPanel)#duplicateGraphicItemHashMap ((self#getGraphicItemHashMap ())));
        ignore (workAreaJTreeJPanel#updateTree ());
        ignore (workAreaJTreeJPanel#expand ());
        ignore (workAreaJTreeJPanel#repaint ());
        (Obj.magic !newCanvasJPanel)
        end [@@warning "-7"]
    

    (* Java overload duplicate(MyGraphicItemEvent) is not converted: OCaml has one method per name *)
    

    method rotate : 'any1. 'any1 -> unit = fun (event) ->
        let event = Obj.repr event in
        begin
        let treeNode : Obj.t ref = ref ((Obj.repr ((Obj.magic event)#getTreeNode ()))) in ();
        let graphicItem : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getGraphicItemHashMap ())#get ((Obj.magic !treeNode)))))) in ();
        if ((Obj.magic !graphicItem) != (Obj.magic 0)) then begin
            ignore ((Obj.magic !graphicItem)#addAngle (((Obj.magic event)#getAngle ())))
        end
        end [@@warning "-7-20"]
    

    method getCanvasDimension : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic canvasDimension)))
        end [@@warning "-7"]
    

    method setCanvasDimension : 'any1. 'any1 -> unit = fun (canvasDimension_arg) ->
        let canvasDimension_arg = Obj.repr canvasDimension_arg in
        begin
        canvasDimension <- Obj.repr ((Obj.magic canvasDimension_arg))
        end [@@warning "-7-20"]
    

    method getGrid : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic grid)))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        guiLog <- ((GuiLog.getInstance ()) :> GuiLog.guiLog);
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        selectedTool <- (Obj.repr (Obj.magic 0));
        graphicItemHashMap <- ((Obj.magic 0) :> java_hash_map);
        canvasDimension <- (Obj.repr (Obj.magic 0));
        angle <- 0.;
        canvasTreeNode <- (Obj.repr (Obj.magic 0));
        frameLabel <- (Obj.repr (Obj.magic 0));
        workAreaJTreeJPanel <- ((Obj.magic 0) :> WorkAreaJTreeJPanel.workAreaJTreeJPanel);
        ();
        ();
        grid <- Obj.repr ((Obj.obj (java_new "Grid" (Obj.repr ((canvasDom#getGrid ()))))));
        (try
            workAreaJTreeJPanel <- workAreaJTreeJPanel_arg;
            (self#initComponents ());
            (self#initMyComponents ());
            ignore (self#setSize (dimension));
            (self#setCanvasSize (((canvasDom#getDimension ())#getWidth ()), ((canvasDom#getDimension ())#getHeight ())));
            graphicItemHashMap <- (canvasDom#getGraphicItemHashMap ());
            let graphicItemArray : Obj.t array ref = ref (((graphicItemHashMap#keySet ())#toArray ())) in ();
            let size : int ref = ref ((Array.length !graphicItemArray)) in ();
            for index = 0 to !size - 1 do
                let graphicItemTreeNode : Obj.t ref = ref ((Obj.repr (Obj.magic !graphicItemArray.(index)))) in ();
                ignore ((Obj.magic canvasTreeNode)#add ((Obj.magic !graphicItemTreeNode)))
            done;
            (self#repaint ());
            (self#setAngle ((canvasDom#getAngle ())));
            ignore (workAreaJTreeJPanel#updateTree ());
            ignore (workAreaJTreeJPanel#expand ());
            ignore (workAreaJTreeJPanel#repaint ())
        with e -> begin
            if (LOGGING.contains ((LOGGING.get_gRAPHICSCREATION ()))) then begin
                ignore (guiLog#put ("Constructor Error", self, "contructor", e))
            end
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CanvasJPanel" (fun arguments -> Obj.repr (new canvasJPanel (Obj.obj arguments)))

let gridColor : Obj.t = (Obj.repr (Obj.obj (java_new "Color" (Obj.repr (((BasicColorFactory.getInstance ())#wHITE#intValue ()))))))
let get_gridColor () = Obj.magic gridColor
let () = java_register_static "CanvasJPanel.get_gridColor" (fun _ -> Obj.repr (get_gridColor ()))

let backgroundColor : Obj.t = (Obj.repr (Obj.obj (java_new "Color" (Obj.repr (((BasicColorFactory.getInstance ())#cLEAR_COLOR#intValue ()))))))
let get_backgroundColor () = Obj.magic backgroundColor
let () = java_register_static "CanvasJPanel.get_backgroundColor" (fun _ -> Obj.repr (get_backgroundColor ()))


