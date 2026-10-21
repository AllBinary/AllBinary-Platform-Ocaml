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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]

class transformInfoData () =
  object
    val mutable pARENT : string = ""
    method pARENT = pARENT
    method set_pARENT value' = pARENT <- value'
    val mutable mAPPED : string = ""
    method mAPPED = mAPPED
    method set_mAPPED value' = mAPPED <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'
    val mutable cATEGORY : string = ""
    method cATEGORY = cATEGORY
    method set_cATEGORY value' = cATEGORY <- value'
    val mutable oBJECTFILENAME : string = ""
    method oBJECTFILENAME = oBJECTFILENAME
    method set_oBJECTFILENAME value' = oBJECTFILENAME <- value'
    val mutable oBJECT : string = ""
    method oBJECT = oBJECT
    method set_oBJECT value' = oBJECT <- value'
    val mutable oBJECTCONFIGFILENAME : string = ""
    method oBJECTCONFIGFILENAME = oBJECTCONFIGFILENAME
    method set_oBJECTCONFIGFILENAME value' = oBJECTCONFIGFILENAME <- value'
    val mutable oBJECTCONFIG : string = ""
    method oBJECTCONFIG = oBJECTCONFIG
    method set_oBJECTCONFIG value' = oBJECTCONFIG <- value'
    val mutable tEMPLATEFILENAME : string = ""
    method tEMPLATEFILENAME = tEMPLATEFILENAME
    method set_tEMPLATEFILENAME value' = tEMPLATEFILENAME <- value'
    val mutable tEMPLATE : string = ""
    method tEMPLATE = tEMPLATE
    method set_tEMPLATE value' = tEMPLATE <- value'
    val mutable dATAFILENAME : string = ""
    method dATAFILENAME = dATAFILENAME
    method set_dATAFILENAME value' = dATAFILENAME <- value'
    val mutable dATA : string = ""
    method dATA = dATA
    method set_dATA value' = dATA <- value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    val mutable oWNER : string = ""
    method oWNER = oWNER
    method set_oWNER value' = oWNER <- value'
    val mutable pARTIAL : string = ""
    method pARTIAL = pARTIAL
    method set_pARTIAL value' = pARTIAL <- value'
    

    initializer
      begin
        pARENT <- "TRANSFORM_INFO_PARENT";
        mAPPED <- "TRANSFORM_INFO_MAPPED";
        nAME <- "TRANSFORM_INFO_NAME";
        dESCRIPTION <- "TRANSFORM_INFO_DESCRIPTION";
        cATEGORY <- "TRANSFORM_INFO_CATEGORY";
        oBJECTFILENAME <- "TRANSFORM_INFO_OBJECTFILENAME";
        oBJECT <- "TRANSFORM_INFO_OBJECT";
        oBJECTCONFIGFILENAME <- "TRANSFORM_INFO_OBJECTCONFIGFILENAME";
        oBJECTCONFIG <- "TRANSFORM_INFO_OBJECTCONFIG";
        tEMPLATEFILENAME <- "TRANSFORM_INFO_TEMPLATEFILENAME";
        tEMPLATE <- "TRANSFORM_INFO_TEMPLATE";
        dATAFILENAME <- "TRANSFORM_INFO_DATAFILENAME";
        dATA <- "TRANSFORM_INFO_DATA";
        lABEL <- "TRANSFORM_INFO_LABEL";
        oWNER <- ("OWNER_" ^ nAME);
        pARTIAL <- ("PARTIAL_" ^ nAME);
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoData" (fun arguments -> Obj.repr (new transformInfoData (Obj.obj arguments)))

let instance = (new transformInfoData ())
let get_instance () = instance
let () = java_register_static "TransformInfoData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfoData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


