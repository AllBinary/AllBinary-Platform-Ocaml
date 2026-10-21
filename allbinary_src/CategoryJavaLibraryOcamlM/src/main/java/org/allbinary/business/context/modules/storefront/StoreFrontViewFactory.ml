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
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)


let getInstance ((storeName : string)) : DomNodeInterface.domNodeInterface =
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            let storeFronts : StoreFrontsEntity.storeFrontsEntity ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()) :> StoreFrontsEntity.storeFrontsEntity)) in ();
            ((Obj.magic (new StoreFrontView.storeFrontView ((!storeFronts#getStoreFrontInterface (storeName))))) :> DomNodeInterface.domNodeInterface)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, "StoreFrontFactory", !commonStrings#gET_INSTANCE, e))
            end;
            ((Obj.magic 0) :> DomNodeInterface.domNodeInterface)
        end)
        end

let () = java_register_static "StoreFrontViewFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class storeFrontViewFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontViewFactory" (fun arguments -> Obj.repr (new storeFrontViewFactory (Obj.obj arguments)))


