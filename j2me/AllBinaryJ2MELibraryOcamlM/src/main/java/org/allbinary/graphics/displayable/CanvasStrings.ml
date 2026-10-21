(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class canvasStrings () =
  object
    val mutable cONSTRUCTOR : string = ""
    method cONSTRUCTOR = cONSTRUCTOR
    method set_cONSTRUCTOR value' = cONSTRUCTOR <- value'
    val mutable pAUSE : string = ""
    method pAUSE = pAUSE
    method set_pAUSE value' = pAUSE <- value'
    val mutable uN_PAUSE : string = ""
    method uN_PAUSE = uN_PAUSE
    method set_uN_PAUSE value' = uN_PAUSE <- value'
    val mutable sET_FULL_SCREEN_MODE : string = ""
    method sET_FULL_SCREEN_MODE = sET_FULL_SCREEN_MODE
    method set_sET_FULL_SCREEN_MODE value' = sET_FULL_SCREEN_MODE <- value'
    val mutable sIZE_CHANGED : string = ""
    method sIZE_CHANGED = sIZE_CHANGED
    method set_sIZE_CHANGED value' = sIZE_CHANGED <- value'
    val mutable sCALED_IMAGES : string = ""
    method sCALED_IMAGES = sCALED_IMAGES
    method set_sCALED_IMAGES value' = sCALED_IMAGES <- value'
    val mutable pAINT : string = ""
    method pAINT = pAINT
    method set_pAINT value' = pAINT <- value'
    val mutable oN_DISPLAY_CHANGE_EVENT : string = ""
    method oN_DISPLAY_CHANGE_EVENT = oN_DISPLAY_CHANGE_EVENT
    method set_oN_DISPLAY_CHANGE_EVENT value' = oN_DISPLAY_CHANGE_EVENT <- value'
    val mutable uPDATE_MEASUREMENT : string = ""
    method uPDATE_MEASUREMENT = uPDATE_MEASUREMENT
    method set_uPDATE_MEASUREMENT value' = uPDATE_MEASUREMENT <- value'
    val mutable fD_WIDTH : string = ""
    method fD_WIDTH = fD_WIDTH
    method set_fD_WIDTH value' = fD_WIDTH <- value'
    val mutable fD_HEIGHT : string = ""
    method fD_HEIGHT = fD_HEIGHT
    method set_fD_HEIGHT value' = fD_HEIGHT <- value'
    val mutable eMPTY_CHILD_NAME_LIST : BasicArrayList.basicArrayList = (Obj.magic 0)
    method eMPTY_CHILD_NAME_LIST = eMPTY_CHILD_NAME_LIST
    method set_eMPTY_CHILD_NAME_LIST value' = eMPTY_CHILD_NAME_LIST <- value'
    val mutable aBOUT : string = ""
    method aBOUT = aBOUT
    method set_aBOUT value' = aBOUT <- value'
    val mutable oPTIONS : string = ""
    method oPTIONS = oPTIONS
    method set_oPTIONS value' = oPTIONS <- value'
    val mutable fONT_ATLAS : string = ""
    method fONT_ATLAS = fONT_ATLAS
    method set_fONT_ATLAS value' = fONT_ATLAS <- value'
    val mutable oBJ_MODEL : string = ""
    method oBJ_MODEL = oBJ_MODEL
    method set_oBJ_MODEL value' = oBJ_MODEL <- value'
    val mutable mD2_MODEL : string = ""
    method mD2_MODEL = mD2_MODEL
    method set_mD2_MODEL value' = mD2_MODEL <- value'
    val mutable _PNG : string = ""
    method _PNG = _PNG
    method set__PNG value' = _PNG <- value'

    initializer
      begin
        cONSTRUCTOR <- "MyCanvas::MyCanvas";
        pAUSE <- "MyCanvas::pause";
        uN_PAUSE <- "MyCanvas::unPause";
        sET_FULL_SCREEN_MODE <- "setFullScreenMode";
        sIZE_CHANGED <- "sizeChanged";
        sCALED_IMAGES <- "scaledImages";
        pAINT <- "paint";
        oN_DISPLAY_CHANGE_EVENT <- "onDisplayChangeEvent";
        uPDATE_MEASUREMENT <- "updateMeasurement";
        fD_WIDTH <- " font/display width: ";
        fD_HEIGHT <- " font/display height: ";
        eMPTY_CHILD_NAME_LIST <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        aBOUT <- "About";
        oPTIONS <- "Options";
        fONT_ATLAS <- "/font.png";
        oBJ_MODEL <- "_obj";
        mD2_MODEL <- "_md2";
        _PNG <- ".png";
        ()
      end
  end
let () = java_register_constructor "CanvasStrings" (fun arguments -> Obj.repr (new canvasStrings (Obj.obj arguments)))

let instance = (new canvasStrings ())
let get_instance () = instance
let () = java_register_static "CanvasStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CanvasStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


