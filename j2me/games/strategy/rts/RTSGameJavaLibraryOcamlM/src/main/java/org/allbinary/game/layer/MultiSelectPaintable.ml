(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.NullUtil *)

class multiSelectPaintable () =
  object (self)
    inherit SelectionHudPaintable.selectionHudPaintable () as super
    val mutable rootNameList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method rootNameList = rootNameList
    method set_rootNameList value' = rootNameList <- value'
    val mutable totalCharArray : char array = (Obj.magic 0)
    method totalCharArray = totalCharArray
    method set_totalCharArray value' = totalCharArray <- value'
    val mutable rootNamesString : string = ""
    method rootNamesString = rootNamesString
    method set_rootNamesString value' = rootNamesString <- value'
    val mutable tOTAL : string = ""
    method tOTAL = tOTAL
    method set_tOTAL value' = tOTAL <- value'
    val mutable backgroundColor : int = 0
    method backgroundColor = backgroundColor
    method set_backgroundColor value' = backgroundColor <- value'
    val mutable totalWidth : int = 0
    method totalWidth = totalWidth
    method set_totalWidth value' = totalWidth <- value'
    val mutable textLine2Y : int = 0
    method textLine2Y = textLine2Y
    method set_textLine2Y value' = textLine2Y <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        totalWidth <- ((Obj.magic !font)#stringWidth (tOTAL));
        textLine2Y <- ((y + ((Obj.magic !font)#getHeight ())))
        end [@@warning "-7-20"]
    

    method update : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        (self#clear ());
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        totalCharArray <- ((self#getPrimitiveLongUtil ())#getCharArray (!size));
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic ((Obj.magic list)#get (index))) :> RTSLayer.rTSLayer)) in ();
            if (not (rootNameList#contains ((!rtsLayer#getRootName ())))) then begin
                ignore (rootNameList#add ((!rtsLayer#getRootName ())))
            end
        done;
        let cOMMA_SEP : string ref = ref ((CommonSeps.getInstance ())#cOMMA_SEP) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for index = ((rootNameList#size ()) - 1) downto 0 do
            let rootName : string ref = ref ((Obj.magic (rootNameList#get (index)))) in ();
            ignore (!stringBuffer#append (!rootName));
            if (index <> 0) then begin
                ignore (!stringBuffer#append (!cOMMA_SEP))
            end
        done;
        rootNamesString <- (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]
    

    method clear () : unit =
        begin
        ignore (rootNameList#clear ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (backgroundColor));
        ignore ((Obj.magic graphics)#drawRect ((self#getX ()), y, (self#getWidth ()), (self#getHeight ())));
        ignore ((Obj.magic graphics)#setColor ((self#getColor ())));
        ignore ((Obj.magic graphics)#drawString (tOTAL, textX, y, 0));
        ignore ((Obj.magic graphics)#drawChars (totalCharArray, 0, ((self#getPrimitiveLongUtil ())#getCurrentTotalDigits ()), (textX + totalWidth), y, 0));
        ignore ((Obj.magic graphics)#drawString (rootNamesString, textX, textLine2Y, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        rootNameList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        totalCharArray <- (NullUtil.getInstance ())#nULL_CHAR_ARRAY;
        rootNamesString <- (StringUtil.getInstance ())#eMPTY_STRING;
        tOTAL <- "Total Selected: ";
        backgroundColor <- ((BasicColorFactory.getInstance ())#gREY#intValue ());
        totalWidth <- 0;
        textLine2Y <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "MultiSelectPaintable" (fun arguments -> Obj.repr (new multiSelectPaintable (Obj.obj arguments)))


