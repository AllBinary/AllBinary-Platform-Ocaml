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
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)

class virtual transformInfoObjectConfigAndManipulatorFactoryInterface =
  object
    method virtual getInstance : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> TransformInfoObjectConfigInterface.transformInfoObjectConfigInterface
    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface) is not converted: OCaml has one method per name *)
    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface, Document) is not converted: OCaml has one method per name *)
  end


