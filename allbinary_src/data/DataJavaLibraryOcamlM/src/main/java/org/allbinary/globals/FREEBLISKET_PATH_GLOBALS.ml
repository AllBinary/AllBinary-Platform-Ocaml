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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)

class fREEBLISKET_PATH_GLOBALS () =
  object
    val mutable iNSTALLPATH : string = ""
    method iNSTALLPATH = iNSTALLPATH
    method set_iNSTALLPATH value' = iNSTALLPATH <- value'
    val mutable xSLPATH : string = ""
    method xSLPATH = xSLPATH
    method set_xSLPATH value' = xSLPATH <- value'
    val mutable tEMPLATEPATH : string = ""
    method tEMPLATEPATH = tEMPLATEPATH
    method set_tEMPLATEPATH value' = tEMPLATEPATH <- value'
    val mutable sTYLEPATH : string = ""
    method sTYLEPATH = sTYLEPATH
    method set_sTYLEPATH value' = sTYLEPATH <- value'
    val mutable tHEMEPATH : string = ""
    method tHEMEPATH = tHEMEPATH
    method set_tHEMEPATH value' = tHEMEPATH <- value'
    val mutable dBINITPATH : string = ""
    method dBINITPATH = dBINITPATH
    method set_dBINITPATH value' = dBINITPATH <- value'
    val mutable lINEDATAPATH : string = ""
    method lINEDATAPATH = lINEDATAPATH
    method set_lINEDATAPATH value' = lINEDATAPATH <- value'
    val mutable cONFIGURATIONPATH : string = ""
    method cONFIGURATIONPATH = cONFIGURATIONPATH
    method set_cONFIGURATIONPATH value' = cONFIGURATIONPATH <- value'
    val mutable uSERCONFIGURATIONPATH : string = ""
    method uSERCONFIGURATIONPATH = uSERCONFIGURATIONPATH
    method set_uSERCONFIGURATIONPATH value' = uSERCONFIGURATIONPATH <- value'
    val mutable cONTEXTCONFIGURATIONPATH : string = ""
    method cONTEXTCONFIGURATIONPATH = cONTEXTCONFIGURATIONPATH
    method set_cONTEXTCONFIGURATIONPATH value' = cONTEXTCONFIGURATIONPATH <- value'
    val mutable lICENSEERRORPAGE : string = ""
    method lICENSEERRORPAGE = lICENSEERRORPAGE
    method set_lICENSEERRORPAGE value' = lICENSEERRORPAGE <- value'
    val mutable eRRORPAGE : string = ""
    method eRRORPAGE = eRRORPAGE
    method set_eRRORPAGE value' = eRRORPAGE <- value'
    

    initializer
      begin
        ();
        ();
        tEMPLATEPATH <- ("template" ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)));
        sTYLEPATH <- ((tEMPLATEPATH ^ "style") ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)));
        tHEMEPATH <- ((sTYLEPATH ^ "theme") ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)));
        dBINITPATH <- ((java_string_of (Obj.repr ((pATH_GLOBALS#getInstance ())#iNIT_PATH)) ^ "db") ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)));
        lINEDATAPATH <- ((java_string_of (Obj.repr ((pATH_GLOBALS#getInstance ())#iNIT_PATH)) ^ "lineData") ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)));
        ();
        ();
        ();
        lICENSEERRORPAGE <- "LicensingError.jsp";
        eRRORPAGE <- "Error.jsp";
        ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("install"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        iNSTALLPATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append ((pATH_GLOBALS#getInstance ())#iNIT_PATH));
        ignore (!stringBuffer#append ("views"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        xSLPATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (xSLPATH));
        ignore (!stringBuffer#append ("configuration"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        cONFIGURATIONPATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (cONFIGURATIONPATH));
        ignore (!stringBuffer#append ("user"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        uSERCONFIGURATIONPATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (cONFIGURATIONPATH));
        ignore (!stringBuffer#append ("context"));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
        cONTEXTCONFIGURATIONPATH <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())))
      end
  end
let () = java_register_constructor "FREEBLISKET_PATH_GLOBALS" (fun arguments -> Obj.repr (new fREEBLISKET_PATH_GLOBALS (Obj.obj arguments)))

let instance = (new fREEBLISKET_PATH_GLOBALS ())
let get_instance () = instance
let () = java_register_static "FREEBLISKET_PATH_GLOBALS.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FREEBLISKET_PATH_GLOBALS.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


