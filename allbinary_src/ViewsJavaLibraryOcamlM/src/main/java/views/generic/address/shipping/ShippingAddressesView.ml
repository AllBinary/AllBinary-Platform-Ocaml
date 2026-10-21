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
(* package views.generic.address.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class shippingAddressesView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable streetAddressList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method streetAddressList = streetAddressList
    method set_streetAddressList value' = streetAddressList <- value'
    
    

    method getRequest : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic request)))
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let billingAddressesNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ShippingAddressData.get_mULTIPLE ()))))) in ();
            let size : int ref = ref ((streetAddressList#size ())) in ();
            for index = 0 to !size - 1 do
                let streetAddress : StreetAddress.streetAddress ref = ref (((Obj.magic (streetAddressList#get (index))) :> StreetAddress.streetAddress)) in ();
                ignore ((Obj.magic !billingAddressesNode)#appendChild ((!streetAddress#toXmlNode ((Obj.magic document)))))
            done;
            ignore ((Obj.magic !billingAddressesNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (StreetAddressData.get_nUMBEROFADDRESSES ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((streetAddressList#size ())))))))))));
            (Obj.magic ((Obj.magic !billingAddressesNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "toXmlNode", e))
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
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        streetAddressList <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        (* super(...) is the inherit clause *) ();
        let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (self#getTransformInfoInterface ())) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
        request <- Obj.repr ((Obj.magic ((!httpTransformInfoInterface#getPageContext ())#getRequest ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingAddressesView" (fun arguments -> Obj.repr (new shippingAddressesView (Obj.obj arguments)))


