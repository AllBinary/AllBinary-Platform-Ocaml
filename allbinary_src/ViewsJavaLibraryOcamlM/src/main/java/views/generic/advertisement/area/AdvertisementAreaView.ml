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
(* package views.generic.advertisement.area *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.advertisement.area.AdvertisementAreaData *)
(* import org.allbinary.business.advertisement.area.AdvertisementAreaInterface *)
(* import org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityFactory *)
(* import org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntityInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class advertisementAreaView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable advertisementAreaName : string = ""
    method advertisementAreaName = advertisementAreaName
    method set_advertisementAreaName value' = advertisementAreaName <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (try
            let advertisementAreasEntityInterface : AdvertisementAreasEntityInterface.advertisementAreasEntityInterface ref = ref (((AdvertisementAreasEntityFactory.getInstance ()) :> AdvertisementAreasEntityInterface.advertisementAreasEntityInterface)) in ();
            let advertisementAreaInterface : AdvertisementAreaInterface.advertisementAreaInterface ref = ref (((!advertisementAreasEntityInterface#get (((self#getTransformInfoInterface ())#getStoreName ()), advertisementAreaName)) :> AdvertisementAreaInterface.advertisementAreaInterface)) in ();
            (Obj.magic ((Obj.magic 0)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "toXmlNode", e))
            end;
            raise e
        end)
        end [@@warning "-7-20"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        advertisementAreaName <- (Obj.magic ((self#getPropertiesHashMap ())#get ((AdvertisementAreaData.getInstance ())#nAME)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdvertisementAreaView" (fun arguments -> Obj.repr (new advertisementAreaView (Obj.obj arguments)))


