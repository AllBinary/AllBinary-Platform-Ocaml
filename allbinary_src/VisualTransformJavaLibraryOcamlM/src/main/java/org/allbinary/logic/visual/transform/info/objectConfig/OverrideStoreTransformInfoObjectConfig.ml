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
(* package org.allbinary.logic.visual.transform.info.objectConfig *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)

class overrideStoreTransformInfoObjectConfig ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object
    inherit GenericStoreTransformInfoObjectConfig.genericStoreTransformInfoObjectConfig (abeClientInformation, transformInfoInterface) as super
    
    
    
    

    method generate : 'any1 'return. 'any1 -> 'return = fun (objectConfigDocument) ->
        let objectConfigDocument = Obj.repr objectConfigDocument in
        begin
        let newObjectConfigDocument : Obj.t ref = ref ((Obj.repr (super#generate ((Obj.magic objectConfigDocument))))) in ();
        (Obj.magic ((Obj.magic !newObjectConfigDocument)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "OverrideStoreTransformInfoObjectConfig" (fun arguments -> Obj.repr (new overrideStoreTransformInfoObjectConfig (Obj.obj arguments)))


