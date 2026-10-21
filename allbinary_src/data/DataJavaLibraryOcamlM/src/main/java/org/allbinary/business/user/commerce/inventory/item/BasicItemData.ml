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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]

class basicItemData () =
  object
    val mutable iTEM : string = ""
    method iTEM = iTEM
    method set_iTEM value' = iTEM <- value'
    val mutable tOTAL : string = ""
    method tOTAL = tOTAL
    method set_tOTAL value' = tOTAL <- value'
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable nUMBER : string = ""
    method nUMBER = nUMBER
    method set_nUMBER value' = nUMBER <- value'
    val mutable iNBASKETS : string = ""
    method iNBASKETS = iNBASKETS
    method set_iNBASKETS value' = iNBASKETS <- value'
    val mutable wEIGHT : string = ""
    method wEIGHT = wEIGHT
    method set_wEIGHT value' = wEIGHT <- value'
    val mutable nEWORUSED : string = ""
    method nEWORUSED = nEWORUSED
    method set_nEWORUSED value' = nEWORUSED <- value'
    val mutable sUMMARY : string = ""
    method sUMMARY = sUMMARY
    method set_sUMMARY value' = sUMMARY <- value'
    val mutable dISTRIBUTOR : string = ""
    method dISTRIBUTOR = dISTRIBUTOR
    method set_dISTRIBUTOR value' = dISTRIBUTOR <- value'
    val mutable iDUSEDBYDISTRIBUTOR : string = ""
    method iDUSEDBYDISTRIBUTOR = iDUSEDBYDISTRIBUTOR
    method set_iDUSEDBYDISTRIBUTOR value' = iDUSEDBYDISTRIBUTOR <- value'
    val mutable pRODUCEDBY : string = ""
    method pRODUCEDBY = pRODUCEDBY
    method set_pRODUCEDBY value' = pRODUCEDBY <- value'
    val mutable pRODUCTIONDATE : string = ""
    method pRODUCTIONDATE = pRODUCTIONDATE
    method set_pRODUCTIONDATE value' = pRODUCTIONDATE <- value'
    val mutable sTARTPRODUCTIONDATE : string = ""
    method sTARTPRODUCTIONDATE = sTARTPRODUCTIONDATE
    method set_sTARTPRODUCTIONDATE value' = sTARTPRODUCTIONDATE <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'
    val mutable kEYWORDS : string = ""
    method kEYWORDS = kEYWORDS
    method set_kEYWORDS value' = kEYWORDS <- value'
    val mutable cATEGORY : string = ""
    method cATEGORY = cATEGORY
    method set_cATEGORY value' = cATEGORY <- value'
    val mutable tYPE : string = ""
    method tYPE = tYPE
    method set_tYPE value' = tYPE <- value'
    val mutable iMAGE : string = ""
    method iMAGE = iMAGE
    method set_iMAGE value' = iMAGE <- value'
    val mutable sMALLIMAGE : string = ""
    method sMALLIMAGE = sMALLIMAGE
    method set_sMALLIMAGE value' = sMALLIMAGE <- value'
    val mutable mEDIUMIMAGE : string = ""
    method mEDIUMIMAGE = mEDIUMIMAGE
    method set_mEDIUMIMAGE value' = mEDIUMIMAGE <- value'
    val mutable lARGEIMAGE : string = ""
    method lARGEIMAGE = lARGEIMAGE
    method set_lARGEIMAGE value' = lARGEIMAGE <- value'
    val mutable pRICE : string = ""
    method pRICE = pRICE
    method set_pRICE value' = pRICE <- value'
    val mutable cOMMENT : string = ""
    method cOMMENT = cOMMENT
    method set_cOMMENT value' = cOMMENT <- value'
    val mutable cUSTOMS : string = ""
    method cUSTOMS = cUSTOMS
    method set_cUSTOMS value' = cUSTOMS <- value'
    val mutable dOWNLOADS : string = ""
    method dOWNLOADS = dOWNLOADS
    method set_dOWNLOADS value' = dOWNLOADS <- value'
    val mutable gROUPS : string = ""
    method gROUPS = gROUPS
    method set_gROUPS value' = gROUPS <- value'
    val mutable oPTIONS : string = ""
    method oPTIONS = oPTIONS
    method set_oPTIONS value' = oPTIONS <- value'
    val mutable pERMISSIONS : string = ""
    method pERMISSIONS = pERMISSIONS
    method set_pERMISSIONS value' = pERMISSIONS <- value'
    val mutable sPECIALS : string = ""
    method sPECIALS = sPECIALS
    method set_sPECIALS value' = sPECIALS <- value'

    initializer
      begin
        iTEM <- "BASICITEM";
        tOTAL <- "BASICITEM_TOTAL";
        iD <- "BASICITEM_ID";
        nUMBER <- "BASICITEM_NUMBER";
        iNBASKETS <- "BASICITEM_IN_BASKETS";
        wEIGHT <- "BASICITEM_WEIGHT";
        nEWORUSED <- "BASICITEM_NEW_OR_USED";
        sUMMARY <- "BASICITEM_SUMMARY";
        dISTRIBUTOR <- "BASICITEM_DISTRIBUTOR";
        iDUSEDBYDISTRIBUTOR <- "BASICITEM_IDUSEDBYDISTRIBUTOR";
        pRODUCEDBY <- "BASICITEM_PRODUCEDBY";
        pRODUCTIONDATE <- "BASICITEM_PRODUCTIONDATE";
        sTARTPRODUCTIONDATE <- "BASICITEM_STARTPRODUCTIONDATE";
        dESCRIPTION <- "BASICITEM_DESCRIPTION";
        kEYWORDS <- "BASICITEM_KEYWORDS";
        cATEGORY <- "BASICITEM_CATEGORY";
        tYPE <- "BASICITEM_TYPE";
        iMAGE <- "BASICITEM_IMG";
        sMALLIMAGE <- "BASICITEM_SMALL_IMG";
        mEDIUMIMAGE <- "BASICITEM_MEDIUM_IMG";
        lARGEIMAGE <- "BASICITEM_LARGE_IMG";
        pRICE <- "BASICITEM_PRICE";
        cOMMENT <- "BASICITEM_COMMENT";
        cUSTOMS <- "BASICITEM_CUSTOMS";
        dOWNLOADS <- "BASICITEM_DOWNLOADS";
        gROUPS <- "BASICITEM_GROUPS";
        oPTIONS <- "BASICITEM_OPTIONS";
        pERMISSIONS <- "BASICITEM_PERMISSIONS";
        sPECIALS <- "BASICITEM_SPECIALS";
        ()
      end
  end
let () = java_register_constructor "BasicItemData" (fun arguments -> Obj.repr (new basicItemData (Obj.obj arguments)))

let instance = (new basicItemData ())
let get_instance () = instance
let () = java_register_static "BasicItemData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicItemData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


