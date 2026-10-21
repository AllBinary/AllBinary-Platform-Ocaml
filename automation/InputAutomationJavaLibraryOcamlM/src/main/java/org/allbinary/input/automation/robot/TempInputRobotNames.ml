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
(* package org.allbinary.input.automation.robot *)

open Allbinary_java [@@warning "-33"]

let lOW_NAME : string = "Low Level"
let get_lOW_NAME () = lOW_NAME
let () = java_register_static "TempInputRobotNames.get_lOW_NAME" (fun _ -> Obj.repr (get_lOW_NAME ()))
let sYS_NAME : string = "System Drivers"
let get_sYS_NAME () = sYS_NAME
let () = java_register_static "TempInputRobotNames.get_sYS_NAME" (fun _ -> Obj.repr (get_sYS_NAME ()))
let dX_NAME : string = "DirectX"
let get_dX_NAME () = dX_NAME
let () = java_register_static "TempInputRobotNames.get_dX_NAME" (fun _ -> Obj.repr (get_dX_NAME ()))
class tempInputRobotNames () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TempInputRobotNames" (fun arguments -> Obj.repr (new tempInputRobotNames (Obj.obj arguments)))


