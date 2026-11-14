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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.view.ViewPositionBase *)
(* import org.allbinary.view.event.ViewPositionEvent *)

let tYPE : string = "Type: "
let get_tYPE () = tYPE
let () = java_register_static "AllBinaryLayer.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class allBinaryLayer ((name_arg : string), (rectangle : Rectangle.rectangle), (viewPosition_arg : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit Layer.layer ((rectangle#getWidth ()), (rectangle#getHeight ())) as super
    val mutable viewPositionEvent : ViewPositionEvent.viewPositionEvent = (Obj.magic 0)
    method viewPositionEvent = viewPositionEvent
    method set_viewPositionEvent value' = viewPositionEvent <- value'
    val mutable halfWidth : int = 0
    method halfWidth = halfWidth
    method set_halfWidth value' = halfWidth <- value'
    val mutable halfHeight : int = 0
    method halfHeight = halfHeight
    method set_halfHeight value' = halfHeight <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable viewPosition : ViewPositionBase.viewPositionBase = (Obj.magic 0)
    method viewPosition = viewPosition
    method set_viewPosition value' = viewPosition <- value'
    
    

    method setPosition ((x : int), (y : int), (z : int)) : unit =
        begin
        ignore (super#setPosition (x, y, z))
        end [@@warning "-7"]
    

    method moveDXYZ ((dx : int), (dy : int), (dz : int)) : unit =
        begin
        ignore (super#moveDXYZ (dx, dy, dz))
        end [@@warning "-7"]
    

    method getXP () : int =
        begin
        (super#getXP ())
        end [@@warning "-7"]
    

    method getYP () : int =
        begin
        (super#getYP ())
        end [@@warning "-7"]
    

    method getZP () : int =
        begin
        (super#getZP ())
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        (super#getWidth ())
        end [@@warning "-7"]
    

    method getHeight () : int =
        begin
        (super#getHeight ())
        end [@@warning "-7"]
    

    method setVisible ((visible : bool)) : unit =
        begin
        ignore (super#setVisible (visible))
        end [@@warning "-7"]
    

    method isVisible () : bool =
        begin
        (super#isVisible ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method onChangeEvent : 'any1. 'any1 -> unit = fun (_layerManagerEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getX2 () : int =
        begin
        ((self#getXP ()) + (self#getWidth ()))
        end [@@warning "-7"]
    

    method getY2 () : int =
        begin
        ((self#getYP ()) + (self#getHeight ()))
        end [@@warning "-7"]
    

    method getZ2 () : int =
        begin
        (java_to_int (Obj.repr ((((self#getZP ()) + (self#getDepth ()))))))
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        name
        end [@@warning "-7"]
    

    method setHalfWidth ((halfWidth_arg : int)) : unit =
        begin
        halfWidth <- halfWidth_arg
        end [@@warning "-7"]
    

    method getHalfWidth () : int =
        begin
        halfWidth
        end [@@warning "-7"]
    

    method setHalfHeight ((halfHeight_arg : int)) : unit =
        begin
        halfHeight <- halfHeight_arg
        end [@@warning "-7"]
    

    method getHalfHeight () : int =
        begin
        halfHeight
        end [@@warning "-7"]
    

    method getHalfDepth () : int =
        begin
        ((java_to_int (Obj.repr ((self#getDepth ())))) / 2)
        end [@@warning "-7"]
    

    method getViewPosition : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (viewPosition))
        end [@@warning "-7"]
    

    method setViewPosition : 'any1. 'any1 -> unit = fun (viewPosition_arg) ->
        let viewPosition_arg = Obj.repr viewPosition_arg in
        begin
        viewPosition <- (Obj.magic viewPosition_arg)
        end [@@warning "-7-20"]
    

    method getGroupInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((BasicGroupFactory.getInstance ())#nONE_ARRAY))
        end [@@warning "-7"]
    

    method implmentsTickableInterface () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method implmentsGameInputInterface () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method implmentsArtificialIntelligenceCompositeInterface () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method implmentsCollidableInterface () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method implementsThreedInterface () : bool =
        begin
        ((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ())
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        (- 1)
        end [@@warning "-7"]
    

    method getMultiPlayerType () : int =
        begin
        (- 1)
        end [@@warning "-7"]
    

    method toStringAppend : 'any1. 'any1 -> unit = fun (stringBuffer) ->
        let stringBuffer = Obj.repr stringBuffer in
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        ignore ((Obj.magic stringBuffer)#append ((self#getName ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#cOLON));
        ignore ((Obj.magic stringBuffer)#append (tYPE));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getType ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#x_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getXP ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#y_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getYP ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!positionStrings#z_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getZP ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!commonLabels#wIDTH_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getWidth ())));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#sPACE));
        ignore ((Obj.magic stringBuffer)#append (!commonLabels#hEIGHT_LABEL));
        ignore ((Obj.magic stringBuffer)#appendint ((self#getHeight ())))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (self#toStringAppend (!stringBuffer));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        viewPositionEvent <- ((new ViewPositionEvent.viewPositionEvent ((Obj.magic self))) :> ViewPositionEvent.viewPositionEvent);
        halfWidth <- 0;
        halfHeight <- 0;
        ();
        viewPosition <- ((ViewPositionBase.get_nULL_VIEW_POSITION ()) :> ViewPositionBase.viewPositionBase);
        ();
        (* super(...) is the inherit clause *) ();
        let localName : string ref = ref ("") in ();
        localName := (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (name_arg))#append ((CommonSeps.getInstance ())#cOLON))#append ((Printf.sprintf "%x" (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#hashCode ((Obj.magic self)))))))));
        name <- !localName;
        let point : GPoint.gPoint ref = ref (((rectangle#getPoint ()) :> GPoint.gPoint)) in ();
        (self#setPosition ((!point#getX ()), (!point#getY ()), (!point#getZ ())));
        (self#setHalfWidth ((((self#getWidth ()) asr 1))));
        (self#setHalfHeight ((((self#getHeight ()) asr 1))));
        viewPosition <- viewPosition_arg;
        ignore (viewPosition#setAllbinaryLayer ((Obj.magic self)))
      end
  end
let () = java_register_constructor "AllBinaryLayer" (fun arguments -> Obj.repr (new allBinaryLayer (Obj.obj arguments)))

let nULL_ALLBINARY_LAYER = (new allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (RectangleFactory.get_sINGLETON ()), (ViewPositionBase.get_nULL_VIEW_POSITION ())))
let get_nULL_ALLBINARY_LAYER () = nULL_ALLBINARY_LAYER
let () = java_register_static "AllBinaryLayer.get_nULL_ALLBINARY_LAYER" (fun _ -> Obj.repr (get_nULL_ALLBINARY_LAYER ()))


