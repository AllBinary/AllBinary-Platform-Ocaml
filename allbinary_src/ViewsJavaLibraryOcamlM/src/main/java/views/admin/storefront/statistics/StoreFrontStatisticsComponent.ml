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
(* package views.admin.storefront.statistics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics *)
(* import org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class storeFrontStatisticsComponent ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable newStoreFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method newStoreFrontInterface = newStoreFrontInterface
    method set_newStoreFrontInterface value' = newStoreFrontInterface <- value'
    val mutable domNodeInterface : DomNodeInterface.domNodeInterface = (Obj.magic 0)
    method domNodeInterface = domNodeInterface
    method set_domNodeInterface value' = domNodeInterface <- value'
    
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic domNodeInterface)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        newStoreFrontInterface <- (Obj.magic (StoreFrontFactory.getInstance ((transformInfoInterface#getStoreName ()))));
        domNodeInterface <- (new RealTimeStoreFrontStatisticsView.realTimeStoreFrontStatisticsView ((new RealTimeStoreFrontStatistics.realTimeStoreFrontStatistics (newStoreFrontInterface)), ((self#getWeblisketSession ())#getRole ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontStatisticsComponent" (fun arguments -> Obj.repr (new storeFrontStatisticsComponent (Obj.obj arguments)))


