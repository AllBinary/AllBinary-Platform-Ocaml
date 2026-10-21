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
(* package org.allbinary.business.context.configuration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.logic.control.crypt.file.CryptFileReader *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class contextConfigurationInterfaceFactory () =
  object
    
    

    (* Java overload getInstance(Document) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ContextConfigurationInterfaceFactory" (fun arguments -> Obj.repr (new contextConfigurationInterfaceFactory (Obj.obj arguments)))

let instance = (new contextConfigurationInterfaceFactory ())
let get_instance () = instance
let () = java_register_static "ContextConfigurationInterfaceFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ContextConfigurationInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


