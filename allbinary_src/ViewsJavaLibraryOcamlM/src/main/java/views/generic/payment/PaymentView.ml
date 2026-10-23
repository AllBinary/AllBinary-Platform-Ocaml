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
(* package views.generic.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.money.payment.Payment *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class paymentView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let paymentNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((PaymentData.get_pAYMENT ()))))) in ();
            ignore ((Obj.magic document)#appendChild ((Obj.magic !paymentNode)));
            let paymentVector : BasicArrayList.basicArrayList ref = ref (((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ())#get (((self#getWeblisketSession ())#getUserName ()))) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!paymentVector#size ())) in ();
            for index = 0 to !size - 1 do
                let payment : Payment.payment ref = ref (((Obj.magic (!paymentVector#get (index))) :> Payment.payment)) in ();
                ignore ((Obj.magic !paymentNode)#appendChild ((!payment#toXmlNode ((Obj.magic document)))))
            done;
            (Obj.magic ((Obj.magic !paymentNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
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
            let error : string ref = ref ("Failed to view Payment") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentView" (fun arguments -> Obj.repr (new paymentView (Obj.obj arguments)))


