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

class customTransformInfo ((_outputTypeName : string), (_inputOutputTypeName : string), (_inputOutputTypeFile : string), (_name : string), (_objectFileName : string), (_objectConfigFileName : string), (_templateFileName : string), (_dataFileName : string)) =
  object
    inherit TransformInfo.transformInfo ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CustomTransformInfo" (fun arguments -> Obj.repr (new customTransformInfo (Obj.obj arguments)))


