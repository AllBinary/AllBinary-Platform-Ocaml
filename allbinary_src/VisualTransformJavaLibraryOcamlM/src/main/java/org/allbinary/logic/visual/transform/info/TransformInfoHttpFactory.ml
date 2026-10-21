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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance : 'any2. java_hash_map * 'any2 -> TransformInfoInterface.transformInfoInterface = fun ((propertiesHashMap : java_hash_map), pageContext) ->
        let pageContext = Obj.repr pageContext in
        try
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            let weblisketSession : WeblisketSession.weblisketSession ref = ref (((new WeblisketSession.weblisketSession (propertiesHashMap, (Obj.magic pageContext))) :> WeblisketSession.weblisketSession)) in ();
            if (not ((StringValidationUtil.getInstance ())#isEmpty ((!weblisketSession#getStoreName ())))) then begin
                let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((!weblisketSession#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
                if (!storeFrontInterface != (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr ((Obj.magic (new TransformInfoHttpStore.transformInfoHttpStore (!storeFrontInterface, propertiesHashMap, (Obj.magic pageContext)))))))
                end else begin
                    raise (Failure (("No StoreFront with: " ^ java_string_of (Obj.repr ((!weblisketSession#getStoreName ()))))))
                end
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic (new TransformInfoHttpContext.transformInfoHttpContext (propertiesHashMap, (Obj.magic pageContext)))))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERFACTORYERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "TransformInfoFactory", !commonStrings#gET_INSTANCE, e))
            end;
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "TransformInfoHttpFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class transformInfoHttpFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoHttpFactory" (fun arguments -> Obj.repr (new transformInfoHttpFactory (Obj.obj arguments)))


