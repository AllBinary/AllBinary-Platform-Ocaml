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
(* import java.util.HashMap *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class storeFrontView ((storeFrontInterface_arg : StoreFrontInterface.storeFrontInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((storeFrontInterface#toHashMap ()) :> java_hash_map)) in ();
        let storeFrontData : StoreFrontData.storeFrontData ref = ref (((StoreFrontData.getInstance ()) :> StoreFrontData.storeFrontData)) in ();
        ignore (!hashMap#put (!storeFrontData#cURRENTHOMEHOSTNAME, (storeFrontInterface#getCurrentHomeHostName ())));
        ignore (!hashMap#put (!storeFrontData#cURRENTHOMEHOSTNAMEPATH, (storeFrontInterface#getCurrentHomeHostNamePath ())));
        ignore (!hashMap#put (!storeFrontData#cURRENTHOSTNAME, (storeFrontInterface#getCurrentHostName ())));
        ignore (!hashMap#put (!storeFrontData#cURRENTHOSTNAMEPATH, (storeFrontInterface#getCurrentHostNamePath ())));
        ignore (!hashMap#put ((BasketData.get_nAME ()), (storeFrontInterface#getBasketName ())));
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), !storeFrontData#nAME, !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (("Constructing: StoreFrontView for: " ^ (storeFrontInterface_arg#getName ())), self, !commonStrings#gET_INSTANCE))
        end;
        storeFrontInterface <- storeFrontInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontView" (fun arguments -> Obj.repr (new storeFrontView (Obj.obj arguments)))


