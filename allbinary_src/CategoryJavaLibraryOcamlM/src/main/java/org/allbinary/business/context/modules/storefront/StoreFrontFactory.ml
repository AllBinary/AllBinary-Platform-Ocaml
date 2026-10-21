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
(* package org.allbinary.business.context.modules.storefront *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance ((storeName : string)) : StoreFront.storeFront =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            let storeFronts : StoreFrontsEntity.storeFrontsEntity ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()) :> StoreFrontsEntity.storeFrontsEntity)) in ();
            ((!storeFronts#getStoreFrontInterface (storeName)) :> StoreFront.storeFront)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "StoreFrontFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> StoreFront.storeFront)
        end)
        end

let () = java_register_static "StoreFrontFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class storeFrontFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "StoreFrontFactory" (fun arguments -> Obj.repr (new storeFrontFactory (Obj.obj arguments)))


