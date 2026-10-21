(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]

class simpleCompositeShaderUpdater ((uniformBlockArray : string array), (uniformArray : string array), (attributeArray : string array), (attributeHandleArray : int array)) =
  object
    inherit CompositeShaderUpdater.compositeShaderUpdater (uniformBlockArray, uniformArray, attributeArray, attributeHandleArray)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SimpleCompositeShaderUpdater" (fun arguments -> Obj.repr (new simpleCompositeShaderUpdater (Obj.obj arguments)))


