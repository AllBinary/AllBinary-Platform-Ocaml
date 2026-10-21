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

let nAME : string = "CUSTOMIZER_TRANSFORM_INFO_NAME"
let get_nAME () = nAME
let () = java_register_static "CustomizerTransformInfoData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class customizerTransformInfoData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CustomizerTransformInfoData" (fun arguments -> Obj.repr (new customizerTransformInfoData (Obj.obj arguments)))


