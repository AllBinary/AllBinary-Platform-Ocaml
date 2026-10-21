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
(* package org.allbinary.logic.control.contraints.display.browser *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "DISPLAYBROWSERCONSTRAINTS_NAME"
let get_nAME () = nAME
let () = java_register_static "DisplayInBrowserContraintsData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let fRAMEABLE : string = "DISPLAYBROWSERCONSTRAINTS_FRAMEABLE"
let get_fRAMEABLE () = fRAMEABLE
let () = java_register_static "DisplayInBrowserContraintsData.get_fRAMEABLE" (fun _ -> Obj.repr (get_fRAMEABLE ()))
let mOUNTABLE : string = "DISPLAYBROWSERCONSTRAINTS_MOUNTABLE"
let get_mOUNTABLE () = mOUNTABLE
let () = java_register_static "DisplayInBrowserContraintsData.get_mOUNTABLE" (fun _ -> Obj.repr (get_mOUNTABLE ()))
let qUICKFRAMEABLE : string = "DISPLAYBROWSERCONSTRAINTS_QUICKFRAMEABLE"
let get_qUICKFRAMEABLE () = qUICKFRAMEABLE
let () = java_register_static "DisplayInBrowserContraintsData.get_qUICKFRAMEABLE" (fun _ -> Obj.repr (get_qUICKFRAMEABLE ()))
let mOUNTABLELINK : string = "DISPLAYBROWSERCONSTRAINTS_MOUNTABLELINK"
let get_mOUNTABLELINK () = mOUNTABLELINK
let () = java_register_static "DisplayInBrowserContraintsData.get_mOUNTABLELINK" (fun _ -> Obj.repr (get_mOUNTABLELINK ()))
class displayInBrowserContraintsData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DisplayInBrowserContraintsData" (fun arguments -> Obj.repr (new displayInBrowserContraintsData (Obj.obj arguments)))


