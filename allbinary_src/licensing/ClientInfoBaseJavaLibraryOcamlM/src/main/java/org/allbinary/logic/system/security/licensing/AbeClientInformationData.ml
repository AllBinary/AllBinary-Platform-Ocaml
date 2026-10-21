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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class abeClientInformationData () =
  object
    val mutable kEY : string = ""
    method kEY = kEY
    method set_kEY value' = kEY <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable vERSION : string = ""
    method vERSION = vERSION
    method set_vERSION value' = vERSION <- value'
    val mutable sPECIALNAME : string = ""
    method sPECIALNAME = sPECIALNAME
    method set_sPECIALNAME value' = sPECIALNAME <- value'
    val mutable lICENSEID : string = ""
    method lICENSEID = lICENSEID
    method set_lICENSEID value' = lICENSEID <- value'
    val mutable lICENSE_TYPE : string = ""
    method lICENSE_TYPE = lICENSE_TYPE
    method set_lICENSE_TYPE value' = lICENSE_TYPE <- value'
    val mutable pREVIOUSLICENSEID : string = ""
    method pREVIOUSLICENSEID = pREVIOUSLICENSEID
    method set_pREVIOUSLICENSEID value' = pREVIOUSLICENSEID <- value'
    val mutable oSNAME : string = ""
    method oSNAME = oSNAME
    method set_oSNAME value' = oSNAME <- value'
    val mutable oSARCH : string = ""
    method oSARCH = oSARCH
    method set_oSARCH value' = oSARCH <- value'
    val mutable oSVERSION : string = ""
    method oSVERSION = oSVERSION
    method set_oSVERSION value' = oSVERSION <- value'
    val mutable oS : string = ""
    method oS = oS
    method set_oS value' = oS <- value'
    val mutable hARDWARE : string = ""
    method hARDWARE = hARDWARE
    method set_hARDWARE value' = hARDWARE <- value'
    val mutable lICENSESERVERS : string = ""
    method lICENSESERVERS = lICENSESERVERS
    method set_lICENSESERVERS value' = lICENSESERVERS <- value'
    val mutable nEWLICENSE : string = ""
    method nEWLICENSE = nEWLICENSE
    method set_nEWLICENSE value' = nEWLICENSE <- value'
    val mutable iSNEW : string = ""
    method iSNEW = iSNEW
    method set_iSNEW value' = iSNEW <- value'
    val mutable sPECIAL : string = ""
    method sPECIAL = sPECIAL
    method set_sPECIAL value' = sPECIAL <- value'
    

    initializer
      begin
        kEY <- "KEY";
        nAME <- "NAME";
        vERSION <- "VERSION";
        sPECIALNAME <- "SPECIALNAME";
        lICENSEID <- "LICENSEID";
        lICENSE_TYPE <- "LICENSETYPE";
        pREVIOUSLICENSEID <- "PREVIOUSLICENSEID";
        oSNAME <- "OSNAME";
        oSARCH <- "OSARCH";
        oSVERSION <- "OSVERSION";
        oS <- "OS";
        hARDWARE <- "HARDWARE";
        lICENSESERVERS <- "LICENSESERVERS";
        nEWLICENSE <- "NEWLICENSE";
        iSNEW <- "ISNEW";
        sPECIAL <- "SPECIAL";
        ();
        ()
      end
  end
let () = java_register_constructor "AbeClientInformationData" (fun arguments -> Obj.repr (new abeClientInformationData (Obj.obj arguments)))

let instance = (new abeClientInformationData ())
let get_instance () = instance
let () = java_register_static "AbeClientInformationData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbeClientInformationData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


