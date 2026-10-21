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
(* package org.allbinary.business.context.modules.storefront *)

open Allbinary_java [@@warning "-33"]

class storeFrontData () =
  object
    val mutable cANCEL : string = ""
    method cANCEL = cANCEL
    method set_cANCEL value' = cANCEL <- value'
    val mutable sELECT : string = ""
    method sELECT = sELECT
    method set_sELECT value' = sELECT <- value'
    val mutable iNSTALL : string = ""
    method iNSTALL = iNSTALL
    method set_iNSTALL value' = iNSTALL <- value'
    val mutable iNSTALL_COMPLETE : string = ""
    method iNSTALL_COMPLETE = iNSTALL_COMPLETE
    method set_iNSTALL_COMPLETE value' = iNSTALL_COMPLETE <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable cURRENTHOSTNAME : string = ""
    method cURRENTHOSTNAME = cURRENTHOSTNAME
    method set_cURRENTHOSTNAME value' = cURRENTHOSTNAME <- value'
    val mutable cURRENTHOSTNAMEPATH : string = ""
    method cURRENTHOSTNAMEPATH = cURRENTHOSTNAMEPATH
    method set_cURRENTHOSTNAMEPATH value' = cURRENTHOSTNAMEPATH <- value'
    val mutable cURRENTHOMEHOSTNAME : string = ""
    method cURRENTHOMEHOSTNAME = cURRENTHOMEHOSTNAME
    method set_cURRENTHOMEHOSTNAME value' = cURRENTHOMEHOSTNAME <- value'
    val mutable cURRENTHOMEHOSTNAMEPATH : string = ""
    method cURRENTHOMEHOSTNAMEPATH = cURRENTHOMEHOSTNAMEPATH
    method set_cURRENTHOMEHOSTNAMEPATH value' = cURRENTHOMEHOSTNAMEPATH <- value'
    val mutable hOMEHOSTNAME : string = ""
    method hOMEHOSTNAME = hOMEHOSTNAME
    method set_hOMEHOSTNAME value' = hOMEHOSTNAME <- value'
    val mutable hOMEHOSTNAMEPATH : string = ""
    method hOMEHOSTNAMEPATH = hOMEHOSTNAMEPATH
    method set_hOMEHOSTNAMEPATH value' = hOMEHOSTNAMEPATH <- value'
    val mutable hOSTNAME : string = ""
    method hOSTNAME = hOSTNAME
    method set_hOSTNAME value' = hOSTNAME <- value'
    val mutable hOSTNAMEPATH : string = ""
    method hOSTNAMEPATH = hOSTNAMEPATH
    method set_hOSTNAMEPATH value' = hOSTNAMEPATH <- value'
    val mutable tESTHOMEHOSTNAME : string = ""
    method tESTHOMEHOSTNAME = tESTHOMEHOSTNAME
    method set_tESTHOMEHOSTNAME value' = tESTHOMEHOSTNAME <- value'
    val mutable tESTHOMEHOSTNAMEPATH : string = ""
    method tESTHOMEHOSTNAMEPATH = tESTHOMEHOSTNAMEPATH
    method set_tESTHOMEHOSTNAMEPATH value' = tESTHOMEHOSTNAMEPATH <- value'
    val mutable tESTHOSTNAME : string = ""
    method tESTHOSTNAME = tESTHOSTNAME
    method set_tESTHOSTNAME value' = tESTHOSTNAME <- value'
    val mutable tESTHOSTNAMEPATH : string = ""
    method tESTHOSTNAMEPATH = tESTHOSTNAMEPATH
    method set_tESTHOSTNAMEPATH value' = tESTHOSTNAMEPATH <- value'
    val mutable iMAGEPATH : string = ""
    method iMAGEPATH = iMAGEPATH
    method set_iMAGEPATH value' = iMAGEPATH <- value'
    val mutable sTATICPATH : string = ""
    method sTATICPATH = sTATICPATH
    method set_sTATICPATH value' = sTATICPATH <- value'
    val mutable cATEGORYPATH : string = ""
    method cATEGORYPATH = cATEGORYPATH
    method set_cATEGORYPATH value' = cATEGORYPATH <- value'
    val mutable iNVENTORYCONTROL : string = ""
    method iNVENTORYCONTROL = iNVENTORYCONTROL
    method set_iNVENTORYCONTROL value' = iNVENTORYCONTROL <- value'
    val mutable cONFIGURATION : string = ""
    method cONFIGURATION = cONFIGURATION
    method set_cONFIGURATION value' = cONFIGURATION <- value'
    val mutable sUBSTORES : string = ""
    method sUBSTORES = sUBSTORES
    method set_sUBSTORES value' = sUBSTORES <- value'
    val mutable tAGLOCATION : string = ""
    method tAGLOCATION = tAGLOCATION
    method set_tAGLOCATION value' = tAGLOCATION <- value'
    val mutable pACKAGELOCATION : string = ""
    method pACKAGELOCATION = pACKAGELOCATION
    method set_pACKAGELOCATION value' = pACKAGELOCATION <- value'
    val mutable fTP : string = ""
    method fTP = fTP
    method set_fTP value' = fTP <- value'
    val mutable fTPPATH : string = ""
    method fTPPATH = fTPPATH
    method set_fTPPATH value' = fTPPATH <- value'
    val mutable fTPUSERNAME : string = ""
    method fTPUSERNAME = fTPUSERNAME
    method set_fTPUSERNAME value' = fTPUSERNAME <- value'
    val mutable fTPPASSWORD : string = ""
    method fTPPASSWORD = fTPPASSWORD
    method set_fTPPASSWORD value' = fTPPASSWORD <- value'
    val mutable tESTFTP : string = ""
    method tESTFTP = tESTFTP
    method set_tESTFTP value' = tESTFTP <- value'
    val mutable tESTFTPPATH : string = ""
    method tESTFTPPATH = tESTFTPPATH
    method set_tESTFTPPATH value' = tESTFTPPATH <- value'
    val mutable tESTFTPUSERNAME : string = ""
    method tESTFTPUSERNAME = tESTFTPUSERNAME
    method set_tESTFTPUSERNAME value' = tESTFTPUSERNAME <- value'
    val mutable tESTFTPPASSWORD : string = ""
    method tESTFTPPASSWORD = tESTFTPPASSWORD
    method set_tESTFTPPASSWORD value' = tESTFTPPASSWORD <- value'
    val mutable sELECTSTORENAME : string = ""
    method sELECTSTORENAME = sELECTSTORENAME
    method set_sELECTSTORENAME value' = sELECTSTORENAME <- value'

    initializer
      begin
        cANCEL <- "Cancel Store Front";
        sELECT <- "Select Store Front";
        iNSTALL <- "Install Store Front";
        iNSTALL_COMPLETE <- "Install Store Front Complete";
        nAME <- "STOREFRONT_NAME";
        cURRENTHOSTNAME <- "STOREFRONT_CURRENTHOSTNAME";
        cURRENTHOSTNAMEPATH <- "STOREFRONT_CURRENTHOSTNAMEPATH";
        cURRENTHOMEHOSTNAME <- "STOREFRONT_CURRENTHOMEHOSTNAME";
        cURRENTHOMEHOSTNAMEPATH <- "STOREFRONT_CURRENTHOMEHOSTNAMEPATH";
        hOMEHOSTNAME <- "STOREFRONT_HOMEHOSTNAME";
        hOMEHOSTNAMEPATH <- "STOREFRONT_HOMEHOSTNAMEPATH";
        hOSTNAME <- "STOREFRONT_HOSTNAME";
        hOSTNAMEPATH <- "STOREFRONT_HOSTNAMEPATH";
        tESTHOMEHOSTNAME <- "STOREFRONT_TESTHOMEHOSTNAME";
        tESTHOMEHOSTNAMEPATH <- "STOREFRONT_TESTHOMEHOSTNAMEPATH";
        tESTHOSTNAME <- "STOREFRONT_TESTHOSTNAME";
        tESTHOSTNAMEPATH <- "STOREFRONT_TESTHOSTNAMEPATH";
        iMAGEPATH <- "STOREFRONT_IMAGEPATH";
        sTATICPATH <- "STOREFRONT_STATICPATH";
        cATEGORYPATH <- "STOREFRONT_CATEGORYPATH";
        iNVENTORYCONTROL <- "STOREFRONT_INVENTORYCONTROL";
        cONFIGURATION <- "STOREFRONT_CONFIGURATION";
        sUBSTORES <- "STOREFRONT_SUBSTORES";
        tAGLOCATION <- "STOREFRONT_TAGLOCATION";
        pACKAGELOCATION <- "STOREFRONT_PACKAGELOCATION";
        fTP <- "STOREFRONT_FTP";
        fTPPATH <- "STOREFRONT_FTPPATH";
        fTPUSERNAME <- "STOREFRONT_FTPUSERNAME";
        fTPPASSWORD <- "STOREFRONT_FTPPASSWORD";
        tESTFTP <- "STOREFRONT_TESTFTP";
        tESTFTPPATH <- "STOREFRONT_TESTFTPPATH";
        tESTFTPUSERNAME <- "STOREFRONT_TESTFTPUSERNAME";
        tESTFTPPASSWORD <- "STOREFRONT_TESTFTPPASSWORD";
        sELECTSTORENAME <- "STOREFRONT_SELECTSTORENAME";
        ()
      end
  end
let () = java_register_constructor "StoreFrontData" (fun arguments -> Obj.repr (new storeFrontData (Obj.obj arguments)))

let instance = (new storeFrontData ())
let get_instance () = instance
let () = java_register_static "StoreFrontData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


