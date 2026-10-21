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
(* import java.util.HashMap *)
(* import org.allbinary.animation.vector.VectorCenterGenerator *)
(* import org.allbinary.dom.DomHelper *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.GraphicsStrings *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanel *)
(* import org.allbinary.graphics.j2me.workarea.tools.GraphicItemFactory *)
(* import org.allbinary.graphics.j2me.workarea.tools.GraphicItemInterface *)
(* import org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Node *)

let fRAME : string = "frame"
let get_fRAME () = fRAME
let () = java_register_static "CanvasDom.get_fRAME" (fun _ -> Obj.repr (get_fRAME ()))
let rOTATE : string = "rotate"
let get_rOTATE () = rOTATE
let () = java_register_static "CanvasDom.get_rOTATE" (fun _ -> Obj.repr (get_rOTATE ()))
let sIZE : string = "size"
let get_sIZE () = sIZE
let () = java_register_static "CanvasDom.get_sIZE" (fun _ -> Obj.repr (get_sIZE ()))
let x : string = "X"
let get_x () = x
let () = java_register_static "CanvasDom.get_x" (fun _ -> Obj.repr (get_x ()))
let y : string = "Y"
let get_y () = y
let () = java_register_static "CanvasDom.get_y" (fun _ -> Obj.repr (get_y ()))
let zOOM : string = "zoom"
let get_zOOM () = zOOM
let () = java_register_static "CanvasDom.get_zOOM" (fun _ -> Obj.repr (get_zOOM ()))
let gRID : string = "grid"
let get_gRID () = gRID
let () = java_register_static "CanvasDom.get_gRID" (fun _ -> Obj.repr (get_gRID ()))
let eNABLED : string = "enabled"
let get_eNABLED () = eNABLED
let () = java_register_static "CanvasDom.get_eNABLED" (fun _ -> Obj.repr (get_eNABLED ()))
let pOSSIBLE : string = "possible"
let get_pOSSIBLE () = pOSSIBLE
let () = java_register_static "CanvasDom.get_pOSSIBLE" (fun _ -> Obj.repr (get_pOSSIBLE ()))
let gRAPHICITEMS : string = "graphicItems"
let get_gRAPHICITEMS () = gRAPHICITEMS
let () = java_register_static "CanvasDom.get_gRAPHICITEMS" (fun _ -> Obj.repr (get_gRAPHICITEMS ()))
let rEAL_SIZE : string = "realSize"
let get_rEAL_SIZE () = rEAL_SIZE
let () = java_register_static "CanvasDom.get_rEAL_SIZE" (fun _ -> Obj.repr (get_rEAL_SIZE ()))
class canvasDom (canvasNode) =
  object (self)
    val mutable graphicsStrings : GraphicsStrings.graphicsStrings = (Obj.magic 0)
    method graphicsStrings = graphicsStrings
    method set_graphicsStrings value' = graphicsStrings <- value'
    val mutable graphicItemHashMap : java_hash_map = (Obj.magic 0)
    method graphicItemHashMap = graphicItemHashMap
    method set_graphicItemHashMap value' = graphicItemHashMap <- value'
    val mutable angle : float = 0.0
    method angle = angle
    method set_angle value' = angle <- value'
    val mutable dimension : IntegerDimension.integerDimension = (Obj.magic 0)
    method dimension = dimension
    method set_dimension value' = dimension <- value'
    val mutable grid : Obj.t = Obj.repr 0
    method grid : 'r. 'r = Obj.magic grid
    method set_grid : 'v. 'v -> unit = fun value' -> grid <- Obj.repr value'
    
    
    

    method getAngle () : float =
        begin
        angle
        end
    

    method getGraphicItemHashMap () : java_hash_map =
        begin
        (graphicItemHashMap :> java_hash_map)
        end
    

    method setAngle ((angle_arg : float)) : unit =
        begin
        angle <- angle_arg
        end
    

    method setWorkArea ((x : int), (y : int)) : unit =
        begin
        (self#setDimension ((new IntegerDimension.integerDimension (x, y))))
        end
    

    method setGrid ((gridX : int), (gridY : int)) : unit =
        begin
        ignore ((Obj.magic grid)#set_grid (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (gridX, gridY))))
        end
    

    method getPointNode : 'any1 'return. 'any1 * string -> 'return = fun (point, (pointName : string)) ->
        let point = Obj.repr point in
        begin
        let document : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "WorkAreaJPanel.getDocument" (Obj.repr ()))))) in ();
        let pointNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (pointName))))) in ();
        let xNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (x))))) in ();
        let xTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic point)#getX ())))))))) in ();
        ignore ((Obj.magic !xNode)#appendChild ((Obj.magic !xTextNode)));
        let yNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (y))))) in ();
        let yTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic point)#getY ())))))))) in ();
        ignore ((Obj.magic !yNode)#appendChild ((Obj.magic !yTextNode)));
        ignore ((Obj.magic !pointNode)#appendChild ((Obj.magic !xNode)));
        ignore ((Obj.magic !pointNode)#appendChild ((Obj.magic !yNode)));
        (Obj.magic ((Obj.magic !pointNode)))
        end [@@warning "-20"]
    

    method toDom : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "WorkAreaJPanel.getDocument" (Obj.repr ()))))) in ();
        let frameNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (fRAME))))) in ();
        let angleNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (rOTATE))))) in ();
        let angleTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((java_string_of (Obj.repr (self#getAngle ())))))))) in ();
        ignore ((Obj.magic !angleNode)#appendChild ((Obj.magic !angleTextNode)));
        let sizeNode : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getPointNode (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((self#getDimension ())#getWidth ()), ((self#getDimension ())#getHeight ()))), sIZE))))) in ();
        let zoomNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (zOOM))))) in ();
        let zoomTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (((self#getGrid ())#getZoom ())))))))))))) in ();
        ignore ((Obj.magic !zoomNode)#appendChild ((Obj.magic !zoomTextNode)));
        let gridNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (gRID))))) in ();
        let gridSizeNode : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getPointNode ((self#getGrid ())#grid, sIZE))))) in ();
        ignore ((Obj.magic !gridNode)#appendChild ((Obj.magic !gridSizeNode)));
        let enableNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (eNABLED))))) in ();
        let enableTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((java_string_of (Obj.repr (Obj.obj (java_new "Boolean" (Obj.repr (((self#getGrid ())#isGridOn ())))))))))))) in ();
        ignore ((Obj.magic !enableNode)#appendChild ((Obj.magic !enableTextNode)));
        ignore ((Obj.magic !gridNode)#appendChild ((Obj.magic !enableNode)));
        let possibleNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (pOSSIBLE))))) in ();
        let possibleTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((java_string_of (Obj.repr (Obj.obj (java_new "Boolean" (Obj.repr (((self#getGrid ())#isGridPossible ())))))))))))) in ();
        ignore ((Obj.magic !possibleNode)#appendChild ((Obj.magic !possibleTextNode)));
        ignore ((Obj.magic !gridNode)#appendChild ((Obj.magic !possibleNode)));
        let realSizeNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (rEAL_SIZE))))) in ();
        let vectorCenterGenerator : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "VectorCenterGenerator" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !vectorCenterGenerator)#calculate ((self#getGraphicItemHashMap ())));
        let widthNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (graphicsStrings#wIDTH))))) in ();
        let widthTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic !vectorCenterGenerator)#getWidth ())))))))) in ();
        ignore ((Obj.magic !widthNode)#appendChild ((Obj.magic !widthTextNode)));
        ignore ((Obj.magic !realSizeNode)#appendChild ((Obj.magic !widthNode)));
        let heightNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (graphicsStrings#hEIGHT))))) in ();
        let heightTextNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createTextNode ((string_of_int (((Obj.magic !vectorCenterGenerator)#getHeight ())))))))) in ();
        ignore ((Obj.magic !heightNode)#appendChild ((Obj.magic !heightTextNode)));
        ignore ((Obj.magic !realSizeNode)#appendChild ((Obj.magic !heightNode)));
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !angleNode)));
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !sizeNode)));
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !zoomNode)));
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !gridNode)));
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !realSizeNode)));
        let graphicItemNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !document)#createElement (gRAPHICITEMS))))) in ();
        let graphicItemArray : Obj.t array ref = ref ((((self#getGraphicItemHashMap ())#keySet ())#toArray ())) in ();
        let size : int ref = ref ((Array.length !graphicItemArray)) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic (graphicItemHashMap#get (!graphicItemArray.(index)))))) in ();
            if (((Obj.magic !item)#getName ()) = (Obj.magic (java_call_static "LinesGraphicItem.getStaticName" (Obj.repr ())))) then begin
                if ((Obj.magic !item)#isValid ()) then begin
                    ignore ((Obj.magic !graphicItemNode)#appendChild (((Obj.magic !item)#toDom (self))))
                end
            end
        done;
        ignore ((Obj.magic !frameNode)#appendChild ((Obj.magic !graphicItemNode)));
        (Obj.magic ((Obj.magic !frameNode)))
        end
    

    method getDimension () : IntegerDimension.integerDimension =
        begin
        (dimension :> IntegerDimension.integerDimension)
        end
    

    method setDimension : 'any1. 'any1 -> unit = fun (dimension_arg) ->
        let dimension_arg = Obj.repr dimension_arg in
        begin
        dimension <- (Obj.magic dimension_arg)
        end [@@warning "-20"]
    

    method getGrid : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic grid)))
        end

    initializer
      begin
        graphicsStrings <- ((GraphicsStrings.getInstance ()) :> GraphicsStrings.graphicsStrings);
        ();
        ();
        ();
        ();
        ();
        grid <- Obj.repr ((Obj.obj (java_new "Grid" (Obj.repr ()))));
        ignore ((Obj.magic grid)#set_grid (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (0, 0))));
        dimension <- (new IntegerDimension.integerDimension (0, 0));
        let name : string ref = ref ((canvasNode#getNodeName ())) in ();
        if ((String.compare !name (fRAME)) == 0) then begin
            graphicItemHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
            let angleNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (rOTATE, (canvasNode#getChildNodes ()))))) in ();
            let angleTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !angleNode)#getFirstChild ()))) in ();
            let angle_arg : float ref = ref ((((Obj.magic !angleTextNode)#getNodeValue ())#doubleValue ())) in ();
            (self#setAngle (!angle_arg));
            let sizeNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (sIZE, (canvasNode#getChildNodes ()))))) in ();
            let xNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (x, ((Obj.magic !sizeNode)#getChildNodes ()))))) in ();
            let xTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !xNode)#getFirstChild ()))) in ();
            let x : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !xTextNode)#getNodeValue ())))))#intValue ())) in ();
            let yNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (y, ((Obj.magic !sizeNode)#getChildNodes ()))))) in ();
            let yTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !yNode)#getFirstChild ()))) in ();
            let y : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !yTextNode)#getNodeValue ())))))#intValue ())) in ();
            (self#setWorkArea (!x, !y));
            let zoomNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (zOOM, (canvasNode#getChildNodes ()))))) in ();
            let zoomTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !zoomNode)#getFirstChild ()))) in ();
            ignore ((Obj.magic grid)#setZoom (((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !zoomTextNode)#getNodeValue ())))))#intValue ())));
            let gridNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (gRID, (canvasNode#getChildNodes ()))))) in ();
            let gridSizeNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (sIZE, ((Obj.magic !gridNode)#getChildNodes ()))))) in ();
            let gridXNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (x, ((Obj.magic !gridSizeNode)#getChildNodes ()))))) in ();
            let gridXTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !gridXNode)#getFirstChild ()))) in ();
            let gridX : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !gridXTextNode)#getNodeValue ())))))#intValue ())) in ();
            let gridYNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (y, ((Obj.magic !gridSizeNode)#getChildNodes ()))))) in ();
            let gridYTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !gridYNode)#getFirstChild ()))) in ();
            let gridY : int ref = ref (((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic !gridYTextNode)#getNodeValue ())))))#intValue ())) in ();
            (self#setGrid (!gridX, !gridY));
            let enableNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (eNABLED, ((Obj.magic !gridNode)#getChildNodes ()))))) in ();
            let enableTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !enableNode)#getFirstChild ()))) in ();
            ignore ((Obj.magic grid)#showGrid (((Obj.obj (java_new "Boolean" (Obj.repr (((Obj.magic !enableTextNode)#getNodeValue ())))))#booleanValue ())));
            let possibleNode : Obj.t ref = ref ((Obj.repr ((DomHelper.getInstance ())#searchNodeList (pOSSIBLE, ((Obj.magic !gridNode)#getChildNodes ()))))) in ();
            let possibleTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !possibleNode)#getFirstChild ()))) in ();
            ignore ((Obj.magic grid)#set_isGridPossible (((Obj.obj (java_new "Boolean" (Obj.repr (((Obj.magic !possibleTextNode)#getNodeValue ())))))#booleanValue ())));
            let graphicItemNodeList : BasicArrayList.basicArrayList ref = ref ((((DomHelper.getInstance ())#getChildrenWithoutTextNodes (gRAPHICITEMS, (canvasNode#getChildNodes ()))) :> BasicArrayList.basicArrayList)) in ();
            if (!graphicItemNodeList != (Obj.magic 0)) then begin
                graphicItemHashMap <- ((GraphicItemFactory.getInstance ())#getInstance (!graphicItemNodeList))
            end
        end else begin
            raise (Failure (("Frame Element Not Found but Found: " ^ !name)))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CanvasDom" (fun arguments -> Obj.repr (new canvasDom (Obj.obj arguments)))


