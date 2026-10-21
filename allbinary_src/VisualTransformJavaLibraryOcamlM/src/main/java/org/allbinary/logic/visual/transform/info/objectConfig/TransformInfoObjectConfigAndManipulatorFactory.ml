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
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)

class transformInfoObjectConfigAndManipulatorFactory () =
  object
    inherit TransformInfoObjectConfigAndManipulatorFactoryBase.transformInfoObjectConfigAndManipulatorFactoryBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface, AbPath) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(AbeClientInformationInterface, TransformInfoInterface, Document) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformInfoObjectConfigAndManipulatorFactory" (fun arguments -> Obj.repr (new transformInfoObjectConfigAndManipulatorFactory (Obj.obj arguments)))

let instance = (new transformInfoObjectConfigAndManipulatorFactory ())
let get_instance () = instance
let () = java_register_static "TransformInfoObjectConfigAndManipulatorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfoObjectConfigAndManipulatorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


