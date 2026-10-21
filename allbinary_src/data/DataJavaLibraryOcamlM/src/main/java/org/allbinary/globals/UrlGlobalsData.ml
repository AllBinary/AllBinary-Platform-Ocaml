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

let nAME : string = "URLGLOBALS_NAME"
let get_nAME () = nAME
let () = java_register_static "UrlGlobalsData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let wEBAPPPATH : string = "URLGLOBALS_WEBAPPPATH"
let get_wEBAPPPATH () = wEBAPPPATH
let () = java_register_static "UrlGlobalsData.get_wEBAPPPATH" (fun _ -> Obj.repr (get_wEBAPPPATH ()))
let tESTINGMODE : string = "URLGLOBALS_TESTINGMODE"
let get_tESTINGMODE () = tESTINGMODE
let () = java_register_static "UrlGlobalsData.get_tESTINGMODE" (fun _ -> Obj.repr (get_tESTINGMODE ()))
let tESTINGHTMLPATH : string = "URLGLOBALS_TESTINGHTMLPATH"
let get_tESTINGHTMLPATH () = tESTINGHTMLPATH
let () = java_register_static "UrlGlobalsData.get_tESTINGHTMLPATH" (fun _ -> Obj.repr (get_tESTINGHTMLPATH ()))
let mAINPATH : string = "URLGLOBALS_MAINPATH"
let get_mAINPATH () = mAINPATH
let () = java_register_static "UrlGlobalsData.get_mAINPATH" (fun _ -> Obj.repr (get_mAINPATH ()))
class urlGlobalsData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UrlGlobalsData" (fun arguments -> Obj.repr (new urlGlobalsData (Obj.obj arguments)))


