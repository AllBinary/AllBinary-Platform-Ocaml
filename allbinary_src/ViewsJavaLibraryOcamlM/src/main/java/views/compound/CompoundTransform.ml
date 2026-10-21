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
(* package views.compound *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import javax.xml.transform.URIResolver *)
(* import org.allbinary.data.tree.dom.BasicUriResolver *)
(* import org.allbinary.data.tree.dom.StoreUriResolver *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.AbTransformer *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import views.compound.objectConfig.CompoundContextTransformInfoObjectConfig *)

class compoundTransform ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit AbTransformer.abTransformer (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setURIResolver ((Obj.magic (new StoreUriResolver.storeUriResolver ((self#getTransformInfoInterface ()), (Obj.magic (self#getURIResolver ())))))));
        let objectConfig : Obj.t ref = ref ((Obj.repr (new CompoundContextTransformInfoObjectConfig.compoundContextTransformInfoObjectConfig (abeClientInformation, (self#getTransformInfoInterface ()), (((self#getTransformInfoInterface ())#getObjectConfigInterface ())#toXmlDoc ()))))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("\nObjectConfig: \n" ^ (java_string_of (Obj.repr (Obj.magic !objectConfig)))), self, commonStrings#cONSTRUCTOR))
        end;
        let templateInputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !objectConfig)#createInputStream ()))) in ();
        ignore (self#setInputStream ((Obj.magic !templateInputStream)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CompoundTransform" (fun arguments -> Obj.repr (new compoundTransform (Obj.obj arguments)))


