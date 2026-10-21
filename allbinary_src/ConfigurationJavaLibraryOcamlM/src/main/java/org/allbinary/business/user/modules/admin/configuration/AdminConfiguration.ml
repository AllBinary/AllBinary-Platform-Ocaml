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
(* package org.allbinary.business.user.modules.admin.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.context.configuration.ContextConfiguration *)
(* import org.allbinary.business.context.configuration.ContextConfigurationData *)
(* import org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping *)
(* import org.allbinary.business.context.configuration.ContextConfigurationInterface *)
(* import org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory *)
(* import org.allbinary.business.context.configuration.ContextConfigurationPathUtil *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.crypt.file.CryptFileWriter *)
(* import org.allbinary.string.CommonStrings *)

class adminConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable contextConfigurationInterface : ContextConfigurationInterface.contextConfigurationInterface = (Obj.magic 0)
    method contextConfigurationInterface = contextConfigurationInterface
    method set_contextConfigurationInterface value' = contextConfigurationInterface <- value'
    
    
    
    

    method getFormData ((storeHashMap : java_hash_map)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "getFormData"));
        (self#setContextConfigurationInterface ((Obj.magic (new ContextConfiguration.contextConfiguration (storeHashMap)))))
        end
    

    method write () : unit =
        begin
        let contextConfigurationDomDocumentMapping : ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ref = ref (((new ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping ((self#getContextConfigurationInterface ()))) :> ContextConfigurationDomDocumentMapping.contextConfigurationDomDocumentMapping)) in ();
        let cryptFileWriter : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "CryptFileWriter" (Obj.repr ((ContextConfigurationData.getInstance ())#uNCRYPTED_EXTENSION, (ContextConfigurationData.getInstance ())#eNCRYPTED_EXTENSION)))))) in ();
        ignore ((Obj.magic !cryptFileWriter)#write ((Obj.magic (java_call_static "ContextConfigurationPathUtil.getAbPath" (Obj.repr ((AdminConfigurationData.get_cONTEXTNAME ()))))), (!contextConfigurationDomDocumentMapping#toXmlDoc ())))
        end
    

    method getContextConfigurationInterface () : ContextConfigurationInterface.contextConfigurationInterface =
        begin
        (contextConfigurationInterface :> ContextConfigurationInterface.contextConfigurationInterface)
        end
    

    method setContextConfigurationInterface : 'any1. 'any1 -> unit = fun (contextConfigurationInterface_arg) ->
        let contextConfigurationInterface_arg = Obj.repr contextConfigurationInterface_arg in
        begin
        contextConfigurationInterface <- (Obj.magic contextConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        contextConfigurationInterface <- ((ContextConfigurationInterfaceFactory.getInstance ())#getInstance ((AdminConfigurationData.get_cONTEXTNAME ())))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "AdminConfiguration" (fun arguments -> Obj.repr (new adminConfiguration (Obj.obj arguments)))


