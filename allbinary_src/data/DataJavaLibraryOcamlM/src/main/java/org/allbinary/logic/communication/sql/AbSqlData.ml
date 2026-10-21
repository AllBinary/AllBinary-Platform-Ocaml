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
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]

let aNYSINGLECHARACTERMATCH : string = "_"
let get_aNYSINGLECHARACTERMATCH () = aNYSINGLECHARACTERMATCH
let () = java_register_static "AbSqlData.get_aNYSINGLECHARACTERMATCH" (fun _ -> Obj.repr (get_aNYSINGLECHARACTERMATCH ()))
let aNYMULTICHARACTERMATCH : string = "%"
let get_aNYMULTICHARACTERMATCH () = aNYMULTICHARACTERMATCH
let () = java_register_static "AbSqlData.get_aNYMULTICHARACTERMATCH" (fun _ -> Obj.repr (get_aNYMULTICHARACTERMATCH ()))
let mAXNUM : int = 19
let get_mAXNUM () = mAXNUM
let () = java_register_static "AbSqlData.get_mAXNUM" (fun _ -> Obj.repr (get_mAXNUM ()))
let mINSTRING : int = 1
let get_mINSTRING () = mINSTRING
let () = java_register_static "AbSqlData.get_mINSTRING" (fun _ -> Obj.repr (get_mINSTRING ()))
let mAXSTRING : int = 255
let get_mAXSTRING () = mAXSTRING
let () = java_register_static "AbSqlData.get_mAXSTRING" (fun _ -> Obj.repr (get_mAXSTRING ()))
let mAXBLOB : int = 32000
let get_mAXBLOB () = mAXBLOB
let () = java_register_static "AbSqlData.get_mAXBLOB" (fun _ -> Obj.repr (get_mAXBLOB ()))
class abSqlData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AbSqlData" (fun arguments -> Obj.repr (new abSqlData (Obj.obj arguments)))


