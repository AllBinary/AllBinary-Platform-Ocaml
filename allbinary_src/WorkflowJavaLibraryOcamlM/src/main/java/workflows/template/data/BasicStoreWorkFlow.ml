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
(* package workflows.template.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.control.workflow.StoreWorkFlowInterface *)

class basicStoreWorkFlow ((propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit BasicWorkFlow.basicWorkFlow (propertiesHashMap, pageContext)
    
    

    method getStoreName () : string =
        begin
        (Obj.magic ((self#getPropertiesHashMap ())#get ((StoreFrontData.getInstance ())#nAME)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BasicStoreWorkFlow" (fun arguments -> Obj.repr (new basicStoreWorkFlow (Obj.obj arguments)))


