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
[@@@warning "-20"]

class transformInfoFactory () =
  object
    
    

    method getInstance () : TransformInfoInterface.transformInfoInterface =
        begin
        ((Obj.magic 0) :> TransformInfoInterface.transformInfoInterface)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoFactory" (fun arguments -> Obj.repr (new transformInfoFactory (Obj.obj arguments)))


