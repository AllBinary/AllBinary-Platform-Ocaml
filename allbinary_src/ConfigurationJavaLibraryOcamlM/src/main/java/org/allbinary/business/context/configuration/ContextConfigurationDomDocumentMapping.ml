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
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class contextConfigurationDomDocumentMapping ((contextConfigurationInterface_arg : ContextConfigurationInterface.contextConfigurationInterface)) =
  object (self)
    val mutable contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface = (Obj.magic 0)
    method contextConfigurationInterface = contextConfigurationInterface
    method set_contextConfigurationInterface value' = contextConfigurationInterface <- value'
    
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr ((new ContextConfigurationView.contextConfigurationView (contextConfigurationInterface))#toXmlNode ((Obj.magic !document))))) in ();
        ignore ((Obj.magic !document)#appendChild ((Obj.magic !node)));
        (Obj.magic ((Obj.magic !document)))
        end
    

    method toDomDocumentString () : string =
        begin
        (XmlDocumentHelper.toString ((self#toXmlDoc ())))
        end

    initializer
      begin
        ();
        ();
        contextConfigurationInterface <- contextConfigurationInterface_arg
      end
  end
let () = java_register_constructor "ContextConfigurationDomDocumentMapping" (fun arguments -> Obj.repr (new contextConfigurationDomDocumentMapping (Obj.obj arguments)))


