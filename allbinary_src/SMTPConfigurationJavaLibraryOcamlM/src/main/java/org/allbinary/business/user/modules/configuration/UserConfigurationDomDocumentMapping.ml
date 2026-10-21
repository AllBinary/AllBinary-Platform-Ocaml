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
(* package org.allbinary.business.user.modules.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class userConfigurationDomDocumentMapping ((userConfigurationInterface_arg : UserConfigurationInterface.userConfigurationInterface)) =
  object (self)
    val mutable userConfigurationInterface : UserConfigurationInterface.userConfigurationInterface = (Obj.magic 0)
    method userConfigurationInterface = userConfigurationInterface
    method set_userConfigurationInterface value' = userConfigurationInterface <- value'
    
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr ((new UserConfigurationView.userConfigurationView (userConfigurationInterface))#toXmlNode ((Obj.magic !document))))) in ();
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
        userConfigurationInterface <- userConfigurationInterface_arg
      end
  end
let () = java_register_constructor "UserConfigurationDomDocumentMapping" (fun arguments -> Obj.repr (new userConfigurationDomDocumentMapping (Obj.obj arguments)))


