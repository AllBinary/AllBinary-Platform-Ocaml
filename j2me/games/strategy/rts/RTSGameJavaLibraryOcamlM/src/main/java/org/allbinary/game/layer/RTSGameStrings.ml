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

class rTSGameStrings () =
  object
    val mutable dRAG_TO_SPOT : string = ""
    method dRAG_TO_SPOT = dRAG_TO_SPOT
    method set_dRAG_TO_SPOT value' = dRAG_TO_SPOT <- value'
    val mutable nOT_YOURS : string = ""
    method nOT_YOURS = nOT_YOURS
    method set_nOT_YOURS value' = nOT_YOURS <- value'
    val mutable nEW_UNIT : string = ""
    method nEW_UNIT = nEW_UNIT
    method set_nEW_UNIT value' = nEW_UNIT <- value'
    val mutable nEW_WAYPOINT : string = ""
    method nEW_WAYPOINT = nEW_WAYPOINT
    method set_nEW_WAYPOINT value' = nEW_WAYPOINT <- value'
    val mutable bUILDING : string = ""
    method bUILDING = bUILDING
    method set_bUILDING value' = bUILDING <- value'
    val mutable uPGRADE : string = ""
    method uPGRADE = uPGRADE
    method set_uPGRADE value' = uPGRADE <- value'
    val mutable dOWNGRADE : string = ""
    method dOWNGRADE = dOWNGRADE
    method set_dOWNGRADE value' = dOWNGRADE <- value'
    val mutable nO_MONEY : string = ""
    method nO_MONEY = nO_MONEY
    method set_nO_MONEY value' = nO_MONEY <- value'
    val mutable sPOT_TAKEN : string = ""
    method sPOT_TAKEN = sPOT_TAKEN
    method set_sPOT_TAKEN value' = sPOT_TAKEN <- value'
    val mutable bUILDING_COLLISION : string = ""
    method bUILDING_COLLISION = bUILDING_COLLISION
    method set_bUILDING_COLLISION value' = bUILDING_COLLISION <- value'
    val mutable sTRUCTURE_TO_CLOSE : string = ""
    method sTRUCTURE_TO_CLOSE = sTRUCTURE_TO_CLOSE
    method set_sTRUCTURE_TO_CLOSE value' = sTRUCTURE_TO_CLOSE <- value'
    val mutable mAP_EDGE : string = ""
    method mAP_EDGE = mAP_EDGE
    method set_mAP_EDGE value' = mAP_EDGE <- value'
    val mutable rOAD_COLLISION : string = ""
    method rOAD_COLLISION = rOAD_COLLISION
    method set_rOAD_COLLISION value' = rOAD_COLLISION <- value'
    val mutable sELECT_BUILD_SPOT : string = ""
    method sELECT_BUILD_SPOT = sELECT_BUILD_SPOT
    method set_sELECT_BUILD_SPOT value' = sELECT_BUILD_SPOT <- value'
    val mutable bUILD_ON_PATH : string = ""
    method bUILD_ON_PATH = bUILD_ON_PATH
    method set_bUILD_ON_PATH value' = bUILD_ON_PATH <- value'
    val mutable dRAGGABLE : string = ""
    method dRAGGABLE = dRAGGABLE
    method set_dRAGGABLE value' = dRAGGABLE <- value'

    initializer
      begin
        dRAG_TO_SPOT <- "Please Drag";
        nOT_YOURS <- "Not Yours";
        nEW_UNIT <- "New Unit";
        nEW_WAYPOINT <- "New Waypoint";
        bUILDING <- "Building";
        uPGRADE <- "Upgrading";
        dOWNGRADE <- "Downgrading";
        nO_MONEY <- "Not Enough Money";
        sPOT_TAKEN <- "Spot Taken";
        bUILDING_COLLISION <- "Building Collision";
        sTRUCTURE_TO_CLOSE <- "Building To Close";
        mAP_EDGE <- "Map Edge";
        rOAD_COLLISION <- "Road Collision";
        sELECT_BUILD_SPOT <- "Select Build Spot";
        bUILD_ON_PATH <- "Not On Path";
        dRAGGABLE <- "Draggable";
        ()
      end
  end
let () = java_register_constructor "RTSGameStrings" (fun arguments -> Obj.repr (new rTSGameStrings (Obj.obj arguments)))

let instance = (new rTSGameStrings ())
let get_instance () = instance
let () = java_register_static "RTSGameStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RTSGameStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


