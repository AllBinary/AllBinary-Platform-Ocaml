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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class touchButtonsMappingPaintable ((basicColor : BasicColor.basicColor)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable foregroundColor : int = 0
    method foregroundColor = foregroundColor
    method set_foregroundColor value' = foregroundColor <- value'
    val mutable paintableTable : Paintable.paintable array array = (Obj.magic 0)
    method paintableTable = paintableTable
    method set_paintableTable value' = paintableTable <- value'
    val mutable touchButtonLocationHelper : TouchButtonLocationHelper.touchButtonLocationHelper = (Obj.magic 0)
    method touchButtonLocationHelper = touchButtonLocationHelper
    method set_touchButtonLocationHelper value' = touchButtonLocationHelper <- value'
    
    

    method init () : unit =
        begin
        (try
            paintableTable <- (self#createPaintableTable ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "updateRectangle", e))
        end)
        end [@@warning "-7"]
    

    method createPaintableTable () : Paintable.paintable array array =
        begin
        let totalColumns : int ref = ref ((touchButtonLocationHelper#getTotalColumns ())) in ();
        let totalRows : int ref = ref ((touchButtonLocationHelper#getTotalRows ())) in ();
        let paintableTable_arg : Paintable.paintable array array ref = ref ((Array.make_matrix (!totalColumns) (!totalRows) (Obj.magic 0))) in ();
        let cellPositionFactory : CellPositionFactory.cellPositionFactory ref = ref (((CellPositionFactory.getInstance ()) :> CellPositionFactory.cellPositionFactory)) in ();
        let commonButtons : CommonButtons.commonButtons ref = ref (((CommonButtons.getInstance ()) :> CommonButtons.commonButtons)) in ();
        for index = (!totalColumns - 1) downto 0 do
            for rowIndex = (!totalRows - 1) downto 0 do
                paintableTable.(index).(rowIndex) <- (Obj.magic (java_call_static "TouchButton.createButton" (Obj.repr ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#nONE, (TouchButtonBlankResource.getInstance ()), !commonButtons#nORMAL_BUTTON, (!cellPositionFactory#getInstanceColRow (index, rowIndex)), (touchButtonLocationHelper#getColumnsRemainderHalf ()), (touchButtonLocationHelper#getRowsRemainderHalf ())))))
            done
        done;
        !paintableTable_arg
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let totalColumns : int ref = ref ((touchButtonLocationHelper#getTotalColumns ())) in ();
        let totalRows : int ref = ref ((touchButtonLocationHelper#getTotalRows ())) in ();
        for index = (!totalColumns - 1) downto 0 do
            for rowIndex = (!totalRows - 1) downto 0 do
                ignore (paintableTable.(index).(rowIndex)#paint ((Obj.magic graphics)))
            done
        done
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        paintableTable <- (Array.make_matrix (0) (0) (Obj.magic 0));
        touchButtonLocationHelper <- ((new TouchButtonLocationHelper.touchButtonLocationHelper ()) :> TouchButtonLocationHelper.touchButtonLocationHelper);
        ();
        foregroundColor <- (basicColor#intValue ());
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButtonsMappingPaintable" (fun arguments -> Obj.repr (new touchButtonsMappingPaintable (Obj.obj arguments)))


