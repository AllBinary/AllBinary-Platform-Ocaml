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
(* package org.allbinary.logic.visual.transform *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.xml.transform.URIResolver *)
(* import org.allbinary.data.tree.dom.BasicUriResolver *)
(* import org.allbinary.data.tree.dom.CustomUriResolver *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactory *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)

class transformInfoCustomUriTransformer ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit BasicTransformer.basicTransformer (abeClientInformation, transformInfoInterface)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let transformInfoObjectConfigInterface : TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface ref = ref (((Obj.magic ((TransformInfoObjectConfigAndManipulatorFactory.getInstance ())#getInstance (abeClientInformation, transformInfoInterface))) :> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface)) in ();
        ignore (self#setURIResolver ((Obj.magic (new CustomUriResolver.customUriResolver ((!transformInfoObjectConfigInterface#getImportUriPath ()), (Obj.magic (self#getURIResolver ())))))))
      end
  end
let () = java_register_constructor "TransformInfoCustomUriTransformer" (fun arguments -> Obj.repr (new transformInfoCustomUriTransformer (Obj.obj arguments)))


