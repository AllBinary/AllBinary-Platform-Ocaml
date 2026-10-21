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
(* package org.allbinary.game.part *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)

let xXStringWidth : int ref = ref (0)
let get_xXStringWidth () = !xXStringWidth
let set_xXStringWidth value' = xXStringWidth := value'
let () = java_register_static "CountedLayersHudPaintable.get_xXStringWidth" (fun _ -> Obj.repr (get_xXStringWidth ()))
class countedLayersHudPaintable ((partInterfaceArray_arg : PartInterface.partInterface array), (dropSize_arg : int), (startIndex_arg : int), (countedTotalStringColor_arg : int), (countedPartsBorder_arg : int)) =
  object (self)
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable partInterfaceArray : PartInterface.partInterface array = (Obj.magic 0)
    method partInterfaceArray = partInterfaceArray
    method set_partInterfaceArray value' = partInterfaceArray <- value'
    val mutable countedTotalStringColor : int = 0
    method countedTotalStringColor = countedTotalStringColor
    method set_countedTotalStringColor value' = countedTotalStringColor <- value'
    val mutable countedPartsBorder : int = 0
    method countedPartsBorder = countedPartsBorder
    method set_countedPartsBorder value' = countedPartsBorder <- value'
    val mutable startIndex : int = 0
    method startIndex = startIndex
    method set_startIndex value' = startIndex <- value'
    val mutable dropSize : int = 0
    method dropSize = dropSize
    method set_dropSize value' = dropSize <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable height : int = 0
    method height = height
    method set_height value' = height <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        height <- ((Obj.magic !font)#getHeight ());
        if (dropSize > ((Obj.magic !font)#getHeight ())) then begin
            height <- dropSize
        end;
        if (!xXStringWidth == 0) then begin
            let xXString : string ref = ref ("XX") in ();
            xXStringWidth := ((Obj.magic !font)#stringWidth (!xXString))
        end;
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let lastWidth : int ref = ref ((displayInfoSingleton#getLastWidth ())) in ();
        let widthEdge : int ref = ref ((!lastWidth - dropSize)) in ();
        let size : int ref = ref ((Array.length partInterfaceArray)) in ();
        let count : int ref = ref (0) in ();
        let y : int ref = ref (0) in ();
        let countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart ref = ref (((Obj.magic 0) :> CountedLayerInterfaceFactoryPart.countedLayerInterfaceFactoryPart)) in ();
        let pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface ref = ref (((Obj.magic 0) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)) in ();
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        let charArray : char array ref = ref ((Obj.magic 0)) in ();
        for index = startIndex to !size - 1 do
            countedLayerInterfaceFactory := (Obj.magic partInterfaceArray.(index));
            if ((!countedLayerInterfaceFactory#getTotal ()) > 0) then begin
                pickedUpLayerInterfaceFactoryInterface := (!countedLayerInterfaceFactory#getCountedPickedUpLayerInterfaceFactory ());
                layerInterface := (!pickedUpLayerInterfaceFactoryInterface#getIconLayer ());
                y := (40 + ((!count * height)));
                ignore (!layerInterface#setPosition (!widthEdge, !y, (!layerInterface#getZP ())));
                ignore (!layerInterface#paint ((Obj.magic graphics)));
                ignore ((Obj.magic graphics)#setColor (countedTotalStringColor));
                ignore (!countedLayerInterfaceFactory#paint ((Obj.magic graphics)));
                charArray := (!countedLayerInterfaceFactory#getTotalString ());
                ignore ((Obj.magic graphics)#drawChars (!charArray, 0, (Array.length !charArray), (!widthEdge - (!countedLayerInterfaceFactory#getXOffset ())), !y, 0));
                count := !count + 1
            end
        done;
        if (!count > 0) then begin
            ignore ((Obj.magic graphics)#setColor (countedPartsBorder));
            ignore ((Obj.magic graphics)#drawRect ((!lastWidth - ((!xXStringWidth + dropSize))), 40, (!xXStringWidth + dropSize), (((!count * height)) + 3)))
        end
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        ();
        ();
        ();
        ();
        ();
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        height <- 0;
        ();
        partInterfaceArray <- partInterfaceArray_arg;
        startIndex <- startIndex_arg;
        countedTotalStringColor <- countedTotalStringColor_arg;
        countedPartsBorder <- countedPartsBorder_arg;
        dropSize <- dropSize_arg
      end
  end
let () = java_register_constructor "CountedLayersHudPaintable" (fun arguments -> Obj.repr (new countedLayersHudPaintable (Obj.obj arguments)))


